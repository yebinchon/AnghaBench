; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu.c_imx_scu_call_rpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu.c_imx_scu_call_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_sc_ipc = type { i32, i32, i32, i64, i8* }
%struct.imx_sc_rpc_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"RPC send msg failed: %d\0A\00", align 1
@MAX_RX_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"RPC send msg timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"RPC SVC done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_scu_call_rpc(%struct.imx_sc_ipc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_sc_ipc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.imx_sc_rpc_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.imx_sc_ipc* %0, %struct.imx_sc_ipc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %11 = icmp ne %struct.imx_sc_ipc* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ true, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %83

24:                                               ; preds = %16
  %25 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %26 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %29 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %28, i32 0, i32 2
  %30 = call i32 @reinit_completion(i32* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %33 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %35 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @imx_scu_ipc_write(%struct.imx_sc_ipc* %36, i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %43 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %73

47:                                               ; preds = %24
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %52 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %51, i32 0, i32 2
  %53 = load i32, i32* @MAX_RX_TIMEOUT, align 4
  %54 = call i32 @wait_for_completion_timeout(i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %50
  %57 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %58 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %62 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %83

66:                                               ; preds = %50
  %67 = load i8*, i8** %6, align 8
  %68 = bitcast i8* %67 to %struct.imx_sc_rpc_msg*
  store %struct.imx_sc_rpc_msg* %68, %struct.imx_sc_rpc_msg** %8, align 8
  %69 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %8, align 8
  %70 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %66, %47
  br label %73

73:                                               ; preds = %72, %41
  %74 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %75 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %78 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @imx_sc_to_linux_errno(i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %73, %56, %21
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @imx_scu_ipc_write(%struct.imx_sc_ipc*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @imx_sc_to_linux_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
