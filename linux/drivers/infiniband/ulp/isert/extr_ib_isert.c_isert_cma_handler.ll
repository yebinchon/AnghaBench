; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_cma_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_cma_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_2__*, %struct.isert_np* }
%struct.TYPE_2__ = type { %struct.isert_conn* }
%struct.isert_conn = type { i32, i32, i32 }
%struct.isert_np = type { %struct.rdma_cm_id* }
%struct.rdma_cm_event = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s (%d): status %d id %p np %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed handle connect request %d\0A\00", align 1
@ISER_CONN_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Connection rejected: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unhandled RDMA CMA event: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @isert_cma_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_cma_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_cm_event*, align 8
  %6 = alloca %struct.isert_np*, align 8
  %7 = alloca %struct.isert_conn*, align 8
  %8 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %5, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 1
  %11 = load %struct.isert_np*, %struct.isert_np** %10, align 8
  store %struct.isert_np* %11, %struct.isert_np** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %13 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rdma_event_msg(i32 %14)
  %16 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %17 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %20 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %23 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %24 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %23, i32 0, i32 1
  %25 = load %struct.isert_np*, %struct.isert_np** %24, align 8
  %26 = call i32 (i8*, i32, ...) @isert_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, %struct.rdma_cm_id* %22, %struct.isert_np* %25)
  %27 = load %struct.isert_np*, %struct.isert_np** %6, align 8
  %28 = getelementptr inbounds %struct.isert_np, %struct.isert_np* %27, i32 0, i32 0
  %29 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %28, align 8
  %30 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %31 = icmp eq %struct.rdma_cm_id* %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %34 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %33, i32 0, i32 1
  %35 = load %struct.isert_np*, %struct.isert_np** %34, align 8
  %36 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %37 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @isert_np_cma_handler(%struct.isert_np* %35, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %105

40:                                               ; preds = %2
  %41 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %42 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %98 [
    i32 134, label %44
    i32 131, label %54
    i32 136, label %57
    i32 132, label %57
    i32 129, label %57
    i32 133, label %63
    i32 130, label %88
    i32 128, label %95
    i32 135, label %95
  ]

44:                                               ; preds = %40
  %45 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %46 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %47 = call i32 @isert_connect_request(%struct.rdma_cm_id* %45, %struct.rdma_cm_event* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @isert_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %44
  br label %103

54:                                               ; preds = %40
  %55 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %56 = call i32 @isert_connected_handler(%struct.rdma_cm_id* %55)
  br label %103

57:                                               ; preds = %40, %40, %40
  %58 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %59 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %60 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @isert_disconnected_handler(%struct.rdma_cm_id* %58, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %103

63:                                               ; preds = %40
  %64 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %65 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.isert_conn*, %struct.isert_conn** %67, align 8
  store %struct.isert_conn* %68, %struct.isert_conn** %7, align 8
  %69 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %70 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %72 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %73 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @isert_disconnected_handler(%struct.rdma_cm_id* %71, i32 %74)
  %76 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %77 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %80 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ISER_CONN_DOWN, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @wait_event_interruptible(i32 %78, i32 %84)
  %86 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %87 = call i32 @kfree(%struct.isert_conn* %86)
  store i32 1, i32* %3, align 4
  br label %105

88:                                               ; preds = %40
  %89 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %90 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %91 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @rdma_reject_msg(%struct.rdma_cm_id* %89, i32 %92)
  %94 = call i32 (i8*, i32, ...) @isert_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %40, %40, %88
  %96 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %97 = call i32 @isert_connect_error(%struct.rdma_cm_id* %96)
  store i32 %97, i32* %8, align 4
  br label %103

98:                                               ; preds = %40
  %99 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %100 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @isert_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %95, %57, %54, %53
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %63, %32
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @isert_info(i8*, i32, ...) #1

declare dso_local i32 @rdma_event_msg(i32) #1

declare dso_local i32 @isert_np_cma_handler(%struct.isert_np*, i32) #1

declare dso_local i32 @isert_connect_request(%struct.rdma_cm_id*, %struct.rdma_cm_event*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

declare dso_local i32 @isert_connected_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @isert_disconnected_handler(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @kfree(%struct.isert_conn*) #1

declare dso_local i32 @rdma_reject_msg(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @isert_connect_error(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
