; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_do_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_do_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.cc_req_mgr_handle* }
%struct.cc_req_mgr_handle = type { i64, i32, i32, i32, %struct.cc_hw_desc, %struct.cc_crypto_req* }
%struct.cc_hw_desc = type { i32 }
%struct.cc_crypto_req = type { i32 }
%struct.device = type { i32 }

@MAX_REQUEST_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Enqueue request head=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"HW free slot count mismatch.\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_drvdata*, %struct.cc_crypto_req*, %struct.cc_hw_desc*, i32, i32)* @cc_do_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_do_send_request(%struct.cc_drvdata* %0, %struct.cc_crypto_req* %1, %struct.cc_hw_desc* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cc_drvdata*, align 8
  %7 = alloca %struct.cc_crypto_req*, align 8
  %8 = alloca %struct.cc_hw_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cc_req_mgr_handle*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %6, align 8
  store %struct.cc_crypto_req* %1, %struct.cc_crypto_req** %7, align 8
  store %struct.cc_hw_desc* %2, %struct.cc_hw_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %16 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %15, i32 0, i32 0
  %17 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %16, align 8
  store %struct.cc_req_mgr_handle* %17, %struct.cc_req_mgr_handle** %11, align 8
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %20 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %19)
  store %struct.device* %20, %struct.device** %14, align 8
  %21 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %22 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %25 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = sub i64 %23, %27
  %29 = load i32, i32* @MAX_REQUEST_QUEUE_SIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = and i64 %28, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %36 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %5
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %42 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %5
  %44 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %45 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %44, i32 0, i32 5
  %46 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %45, align 8
  %47 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %48 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.cc_crypto_req, %struct.cc_crypto_req* %46, i64 %49
  %51 = load %struct.cc_crypto_req*, %struct.cc_crypto_req** %7, align 8
  %52 = bitcast %struct.cc_crypto_req* %50 to i8*
  %53 = bitcast %struct.cc_crypto_req* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %55 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  %58 = load i32, i32* @MAX_REQUEST_QUEUE_SIZE, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = and i64 %57, %60
  %62 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %63 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.device*, %struct.device** %14, align 8
  %65 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %66 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = call i32 (...) @wmb()
  %71 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %72 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @enqueue_seq(%struct.cc_drvdata* %71, %struct.cc_hw_desc* %72, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %43
  %78 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %79 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %80 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %79, i32 0, i32 4
  %81 = call i32 @enqueue_seq(%struct.cc_drvdata* %78, %struct.cc_hw_desc* %80, i32 1)
  %82 = load i32, i32* %13, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %77, %43
  %85 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %86 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.device*, %struct.device** %14, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %94 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %93, i32 0, i32 3
  store i32 0, i32* %94, align 8
  br label %101

95:                                               ; preds = %84
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %11, align 8
  %98 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = sub i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* @EINPROGRESS, align 4
  %103 = sub nsw i32 0, %102
  ret i32 %103
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @enqueue_seq(%struct.cc_drvdata*, %struct.cc_hw_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
