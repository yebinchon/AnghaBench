; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_cma_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_cma_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64 }
%struct.rdma_cm_event = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iser_conn = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"%s (%d): status %d conn %p id %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Connection rejected: %s\0A\00", align 1
@ISER_CONN_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unexpected RDMA CM event: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @iser_cma_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_cma_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca %struct.iser_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %8 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iser_conn*
  store %struct.iser_conn* %10, %struct.iser_conn** %5, align 8
  %11 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %12 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rdma_event_msg(i32 %13)
  %15 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %19 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %22 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %25 = call i32 (i8*, i32, ...) @iser_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i64 %23, %struct.rdma_cm_id* %24)
  %26 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %27 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %30 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %72 [
    i32 137, label %32
    i32 130, label %35
    i32 133, label %38
    i32 132, label %46
    i32 138, label %53
    i32 131, label %53
    i32 136, label %53
    i32 128, label %53
    i32 134, label %56
    i32 139, label %56
    i32 129, label %56
    i32 135, label %59
  ]

32:                                               ; preds = %2
  %33 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %34 = call i32 @iser_addr_handler(%struct.rdma_cm_id* %33)
  br label %81

35:                                               ; preds = %2
  %36 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %37 = call i32 @iser_route_handler(%struct.rdma_cm_id* %36)
  br label %81

38:                                               ; preds = %2
  %39 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %40 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %41 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iser_connected_handler(%struct.rdma_cm_id* %39, i32 %44)
  br label %81

46:                                               ; preds = %2
  %47 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %48 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %49 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rdma_reject_msg(%struct.rdma_cm_id* %47, i32 %50)
  %52 = call i32 (i8*, i32, ...) @iser_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %2, %2, %2, %2, %46
  %54 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %55 = call i32 @iser_connect_error(%struct.rdma_cm_id* %54)
  br label %81

56:                                               ; preds = %2, %2, %2
  %57 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %58 = call i32 @iser_cleanup_handler(%struct.rdma_cm_id* %57, i32 0)
  br label %81

59:                                               ; preds = %2
  %60 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %61 = call i32 @iser_cleanup_handler(%struct.rdma_cm_id* %60, i32 1)
  %62 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %63 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ISER_CONN_DOWN, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %69 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  store i32 1, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %59
  br label %81

72:                                               ; preds = %2
  %73 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %74 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @rdma_event_msg(i32 %75)
  %77 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %78 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @iser_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %72, %71, %56, %53, %38, %35, %32
  %82 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %83 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @iser_info(i8*, i32, ...) #1

declare dso_local i32 @rdma_event_msg(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iser_addr_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_route_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_connected_handler(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @rdma_reject_msg(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @iser_connect_error(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_cleanup_handler(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @iser_err(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
