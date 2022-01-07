; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu.c_imx_scu_ipc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu.c_imx_scu_ipc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_sc_ipc = type { %struct.imx_sc_chan*, i32 }
%struct.imx_sc_chan = type { i32 }
%struct.imx_sc_rpc_msg = type { i32, i32, i32 }

@IMX_SC_RPC_MAX_MSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RPC SVC %u FUNC %u SIZE %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_sc_ipc*, i8*)* @imx_scu_ipc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_scu_ipc_write(%struct.imx_sc_ipc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_sc_ipc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.imx_sc_rpc_msg*, align 8
  %7 = alloca %struct.imx_sc_chan*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.imx_sc_ipc* %0, %struct.imx_sc_ipc** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.imx_sc_rpc_msg*
  store %struct.imx_sc_rpc_msg* %12, %struct.imx_sc_rpc_msg** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %16 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IMX_SC_RPC_MAX_MSG, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %68

23:                                               ; preds = %2
  %24 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %4, align 8
  %25 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %28 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %31 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %34 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %64, %23
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %6, align 8
  %40 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %4, align 8
  %45 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %44, i32 0, i32 0
  %46 = load %struct.imx_sc_chan*, %struct.imx_sc_chan** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = srem i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.imx_sc_chan, %struct.imx_sc_chan* %46, i64 %49
  store %struct.imx_sc_chan* %50, %struct.imx_sc_chan** %7, align 8
  %51 = load %struct.imx_sc_chan*, %struct.imx_sc_chan** %7, align 8
  %52 = getelementptr inbounds %struct.imx_sc_chan, %struct.imx_sc_chan* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @mbox_send_message(i32 %53, i32* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %37

67:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %61, %20
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mbox_send_message(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
