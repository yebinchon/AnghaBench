; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_msg.c_vmw_open_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_msg.c_vmw_open_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_channel = type { i32, i64, i64 }

@VMW_PORT_CMD_OPEN_CHANNEL = common dso_local global i32 0, align 4
@GUESTMSG_FLAG_COOKIE = common dso_local global i32 0, align 4
@VMW_HYPERVISOR_MAGIC = common dso_local global i32 0, align 4
@MESSAGE_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_channel*, i32)* @vmw_open_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_open_channel(%struct.rpc_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rpc_channel* %0, %struct.rpc_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @VMW_PORT_CMD_OPEN_CHANNEL, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GUESTMSG_FLAG_COOKIE, align 4
  %15 = or i32 %13, %14
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i32, i32* @VMW_HYPERVISOR_MAGIC, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @VMW_PORT(i32 %12, i32 %15, i64 %16, i64 %17, i32 0, i32 %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24)
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @HIGH_WORD(i64 %26)
  %28 = load i32, i32* @MESSAGE_STATUS_SUCCESS, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %2
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @HIGH_WORD(i64 %35)
  %37 = load %struct.rpc_channel*, %struct.rpc_channel** %4, align 8
  %38 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.rpc_channel*, %struct.rpc_channel** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.rpc_channel*, %struct.rpc_channel** %4, align 8
  %44 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @VMW_PORT(i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HIGH_WORD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
