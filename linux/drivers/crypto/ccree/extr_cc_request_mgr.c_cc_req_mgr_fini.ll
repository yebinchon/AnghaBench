; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_req_mgr_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_req_mgr_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.cc_req_mgr_handle* }
%struct.cc_req_mgr_handle = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"max_used_hw_slots=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"max_used_sw_slots=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_req_mgr_fini(%struct.cc_drvdata* %0) #0 {
  %2 = alloca %struct.cc_drvdata*, align 8
  %3 = alloca %struct.cc_req_mgr_handle*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %2, align 8
  %5 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %6 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %5, i32 0, i32 0
  %7 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %6, align 8
  store %struct.cc_req_mgr_handle* %7, %struct.cc_req_mgr_handle** %3, align 8
  %8 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %9 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %3, align 8
  %11 = icmp ne %struct.cc_req_mgr_handle* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %3, align 8
  %15 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %3, align 8
  %21 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %3, align 8
  %24 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dma_free_coherent(%struct.device* %19, i32 4, i32 %22, i64 %25)
  br label %27

27:                                               ; preds = %18, %13
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %3, align 8
  %30 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %3, align 8
  %33 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %3, align 8
  %39 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %3, align 8
  %43 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %42, i32 0, i32 0
  %44 = call i32 @tasklet_kill(i32* %43)
  %45 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %3, align 8
  %46 = call i32 @kzfree(%struct.cc_req_mgr_handle* %45)
  %47 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %48 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %47, i32 0, i32 0
  store %struct.cc_req_mgr_handle* null, %struct.cc_req_mgr_handle** %48, align 8
  br label %49

49:                                               ; preds = %27, %12
  ret void
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @kzfree(%struct.cc_req_mgr_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
