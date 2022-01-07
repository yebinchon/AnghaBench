; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_msg.c_vmw_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_msg.c_vmw_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_channel = type { i64, i64, i32 }

@RETRIES = common dso_local global i32 0, align 4
@VMW_PORT_CMD_SENDSIZE = common dso_local global i32 0, align 4
@VMW_HYPERVISOR_MAGIC = common dso_local global i32 0, align 4
@MESSAGE_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MESSAGE_STATUS_HB = common dso_local global i32 0, align 4
@MESSAGE_STATUS_CPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_channel*, i8*)* @vmw_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_send_msg(%struct.rpc_channel* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.rpc_channel* %0, %struct.rpc_channel** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %77, %2
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @RETRIES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %16
  %21 = load i32, i32* %13, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %13, align 4
  %23 = load %struct.rpc_channel*, %struct.rpc_channel** %4, align 8
  %24 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.rpc_channel*, %struct.rpc_channel** %4, align 8
  %27 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* @VMW_PORT_CMD_SENDSIZE, align 4
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.rpc_channel*, %struct.rpc_channel** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 16
  %37 = load i32, i32* @VMW_HYPERVISOR_MAGIC, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @VMW_PORT(i32 %29, i64 %30, i64 %31, i64 %32, i32 %36, i32 %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42, i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @HIGH_WORD(i64 %45)
  %47 = load i32, i32* @MESSAGE_STATUS_SUCCESS, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %20
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %20
  %54 = load %struct.rpc_channel*, %struct.rpc_channel** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @HIGH_WORD(i64 %56)
  %58 = load i32, i32* @MESSAGE_STATUS_HB, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @vmw_port_hb_out(%struct.rpc_channel* %54, i8* %55, i32 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @HIGH_WORD(i64 %65)
  %67 = load i32, i32* @MESSAGE_STATUS_SUCCESS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %82

71:                                               ; preds = %53
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @HIGH_WORD(i64 %72)
  %74 = load i32, i32* @MESSAGE_STATUS_CPT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %16

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %16
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %70, %50
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @VMW_PORT(i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HIGH_WORD(i64) #1

declare dso_local i64 @vmw_port_hb_out(%struct.rpc_channel*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
