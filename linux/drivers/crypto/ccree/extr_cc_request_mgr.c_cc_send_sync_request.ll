; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_send_sync_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_send_sync_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32, %struct.cc_req_mgr_handle* }
%struct.cc_req_mgr_handle = type { i32 }
%struct.cc_crypto_req = type { i32, i32*, i32 }
%struct.cc_hw_desc = type { i32 }
%struct.device = type { i32 }

@request_mgr_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ssi_power_mgr_runtime_get returned %x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_send_sync_request(%struct.cc_drvdata* %0, %struct.cc_crypto_req* %1, %struct.cc_hw_desc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cc_drvdata*, align 8
  %7 = alloca %struct.cc_crypto_req*, align 8
  %8 = alloca %struct.cc_hw_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.cc_req_mgr_handle*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %6, align 8
  store %struct.cc_crypto_req* %1, %struct.cc_crypto_req** %7, align 8
  store %struct.cc_hw_desc* %2, %struct.cc_hw_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %14 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %13)
  store %struct.device* %14, %struct.device** %11, align 8
  %15 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %16 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %15, i32 0, i32 1
  %17 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %16, align 8
  store %struct.cc_req_mgr_handle* %17, %struct.cc_req_mgr_handle** %12, align 8
  %18 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %7, align 8
  %19 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %18, i32 0, i32 0
  %20 = call i32 @init_completion(i32* %19)
  %21 = load i32, i32* @request_mgr_complete, align 4
  %22 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %7, align 8
  %23 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %7, align 8
  %25 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %24, i32 0, i32 0
  %26 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %7, align 8
  %27 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.device*, %struct.device** %11, align 8
  %29 = call i32 @cc_pm_get(%struct.device* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.device*, %struct.device** %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %90

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %37, %62
  %39 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %12, align 8
  %40 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %43 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %12, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  %46 = call i32 @cc_queues_status(%struct.cc_drvdata* %42, %struct.cc_req_mgr_handle* %43, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %69

50:                                               ; preds = %38
  %51 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %12, align 8
  %52 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.device*, %struct.device** %11, align 8
  %60 = call i32 @cc_pm_put_suspend(%struct.device* %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %90

62:                                               ; preds = %50
  %63 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %64 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %63, i32 0, i32 0
  %65 = call i32 @wait_for_completion_interruptible(i32* %64)
  %66 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %67 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %66, i32 0, i32 0
  %68 = call i32 @reinit_completion(i32* %67)
  br label %38

69:                                               ; preds = %49
  %70 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %71 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %7, align 8
  %72 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @cc_do_send_request(%struct.cc_drvdata* %70, %struct.cc_crypto_req* %71, %struct.cc_hw_desc* %72, i32 %73, i32 1)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %12, align 8
  %76 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_bh(i32* %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @EINPROGRESS, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load %struct.device*, %struct.device** %11, align 8
  %84 = call i32 @cc_pm_put_suspend(%struct.device* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  br label %90

86:                                               ; preds = %69
  %87 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %7, align 8
  %88 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %87, i32 0, i32 0
  %89 = call i32 @wait_for_completion(i32* %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %82, %58, %32
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @cc_pm_get(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cc_queues_status(%struct.cc_drvdata*, %struct.cc_req_mgr_handle*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cc_pm_put_suspend(%struct.device*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @cc_do_send_request(%struct.cc_drvdata*, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
