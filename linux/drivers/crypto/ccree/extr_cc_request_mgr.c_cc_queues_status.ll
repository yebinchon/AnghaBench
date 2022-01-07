; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_queues_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_queues_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32 }
%struct.cc_req_mgr_handle = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@MAX_REQUEST_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"SW FIFO is full. req_queue_head=%d sw_fifo_len=%d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@CC_MAX_POLL_ITER = common dso_local global i64 0, align 8
@DSCRPTR_QUEUE_CONTENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"HW FIFO is full. q_free_slots=%d total_seq_len=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"HW FIFO full, timeout. req_queue_head=%d sw_fifo_len=%d q_free_slots=%d total_seq_len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_drvdata*, %struct.cc_req_mgr_handle*, i32)* @cc_queues_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_queues_status(%struct.cc_drvdata* %0, %struct.cc_req_mgr_handle* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cc_drvdata*, align 8
  %6 = alloca %struct.cc_req_mgr_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %5, align 8
  store %struct.cc_req_mgr_handle* %1, %struct.cc_req_mgr_handle** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %11 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %10)
  store %struct.device* %11, %struct.device** %9, align 8
  %12 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %13 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @MAX_REQUEST_QUEUE_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  %19 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %20 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %26 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAX_REQUEST_QUEUE_SIZE, align 4
  %29 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %94

32:                                               ; preds = %3
  %33 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %34 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %94

39:                                               ; preds = %32
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %78, %39
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @CC_MAX_POLL_ITER, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %40
  %45 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %46 = load i32, i32* @DSCRPTR_QUEUE_CONTENT, align 4
  %47 = call i32 @CC_REG(i32 %46)
  %48 = call i32 @cc_ioread(%struct.cc_drvdata* %45, i32 %47)
  %49 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %50 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %52 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %55 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %44
  %59 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %60 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %63 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %44
  %65 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %66 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp uge i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %94

71:                                               ; preds = %64
  %72 = load %struct.device*, %struct.device** %9, align 8
  %73 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %74 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %40

81:                                               ; preds = %40
  %82 = load %struct.device*, %struct.device** %9, align 8
  %83 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %84 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MAX_REQUEST_QUEUE_SIZE, align 4
  %87 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  %88 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %82, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86, i32 %89, i32 %90)
  %92 = load i32, i32* @ENOSPC, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %81, %70, %38, %23
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @cc_ioread(%struct.cc_drvdata*, i32) #1

declare dso_local i32 @CC_REG(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
