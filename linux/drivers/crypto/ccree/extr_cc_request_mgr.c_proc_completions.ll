; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_proc_completions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_proc_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32, %struct.cc_req_mgr_handle* }
%struct.cc_req_mgr_handle = type { i32, i32, i32, %struct.cc_crypto_req* }
%struct.cc_crypto_req = type { i32, i32 (%struct.device*, i32, i32)*, %struct.TYPE_2__ }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Request queue is empty head == tail %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"CPP request completion slot: %d alg:%d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Got mask: %x irq: %x rc: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"None CPP request completion\0A\00", align 1
@MAX_REQUEST_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Dequeue request tail=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Request completed. axi_completed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_drvdata*)* @proc_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_completions(%struct.cc_drvdata* %0) #0 {
  %2 = alloca %struct.cc_drvdata*, align 8
  %3 = alloca %struct.cc_crypto_req*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cc_req_mgr_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %2, align 8
  %10 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %11 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %10)
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %13 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %12, i32 0, i32 1
  %14 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %13, align 8
  store %struct.cc_req_mgr_handle* %14, %struct.cc_req_mgr_handle** %5, align 8
  %15 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %16 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %15, i32 0, i32 0
  store i32* %16, i32** %6, align 8
  %17 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %18 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %17, i32 0, i32 1
  store i32* %18, i32** %7, align 8
  br label %19

19:                                               ; preds = %109, %1
  %20 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %21 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %128

24:                                               ; preds = %19
  %25 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %26 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %128

39:                                               ; preds = %24
  %40 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %41 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %40, i32 0, i32 3
  %42 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %42, i64 %45
  store %struct.cc_crypto_req* %46, %struct.cc_crypto_req** %3, align 8
  %47 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %3, align 8
  %48 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %39
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %3, align 8
  %55 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %3, align 8
  %59 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %3, align 8
  %64 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %3, align 8
  %68 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @cc_cpp_int_mask(i32 %66, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %73 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %52
  %79 = load i32, i32* @EPERM, align 4
  %80 = sub nsw i32 0, %79
  br label %82

81:                                               ; preds = %52
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 0, %81 ]
  store i32 %83, i32* %8, align 4
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %87 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %88, i32 %89)
  br label %94

91:                                               ; preds = %39
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %82
  %95 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %3, align 8
  %96 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %95, i32 0, i32 1
  %97 = load i32 (%struct.device*, i32, i32)*, i32 (%struct.device*, i32, i32)** %96, align 8
  %98 = icmp ne i32 (%struct.device*, i32, i32)* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %3, align 8
  %101 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %100, i32 0, i32 1
  %102 = load i32 (%struct.device*, i32, i32)*, i32 (%struct.device*, i32, i32)** %101, align 8
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %3, align 8
  %105 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 %102(%struct.device* %103, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %99, %94
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, 1
  %113 = load i32, i32* @MAX_REQUEST_QUEUE_SIZE, align 4
  %114 = sub nsw i32 %113, 1
  %115 = and i32 %112, %114
  %116 = load i32*, i32** %6, align 8
  store i32 %115, i32* %116, align 4
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %5, align 8
  %123 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %121, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = call i32 @cc_pm_put_suspend(%struct.device* %126)
  br label %19

128:                                              ; preds = %34, %19
  ret void
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @cc_cpp_int_mask(i32, i32) #1

declare dso_local i32 @cc_pm_put_suspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
