; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_send_request_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_send_request_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.cc_req_mgr_handle* }
%struct.cc_req_mgr_handle = type { i32 }
%struct.cc_hw_desc = type { i32 }

@DSCRPTR_QUEUE_CONTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_request_init(%struct.cc_drvdata* %0, %struct.cc_hw_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cc_drvdata*, align 8
  %6 = alloca %struct.cc_hw_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cc_req_mgr_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %5, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %12 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %11, i32 0, i32 0
  %13 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %12, align 8
  store %struct.cc_req_mgr_handle* %13, %struct.cc_req_mgr_handle** %8, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %16 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @cc_queues_status(%struct.cc_drvdata* %15, %struct.cc_req_mgr_handle* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %42

23:                                               ; preds = %3
  %24 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %25 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cc_hw_desc, %struct.cc_hw_desc* %25, i64 %28
  %30 = call i32 @set_queue_last_ind(%struct.cc_drvdata* %24, %struct.cc_hw_desc* %29)
  %31 = call i32 (...) @wmb()
  %32 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %33 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @enqueue_seq(%struct.cc_drvdata* %32, %struct.cc_hw_desc* %33, i32 %34)
  %36 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %37 = load i32, i32* @DSCRPTR_QUEUE_CONTENT, align 4
  %38 = call i32 @CC_REG(i32 %37)
  %39 = call i32 @cc_ioread(%struct.cc_drvdata* %36, i32 %38)
  %40 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %8, align 8
  %41 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %23, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @cc_queues_status(%struct.cc_drvdata*, %struct.cc_req_mgr_handle*, i32) #1

declare dso_local i32 @set_queue_last_ind(%struct.cc_drvdata*, %struct.cc_hw_desc*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @enqueue_seq(%struct.cc_drvdata*, %struct.cc_hw_desc*, i32) #1

declare dso_local i32 @cc_ioread(%struct.cc_drvdata*, i32) #1

declare dso_local i32 @CC_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
