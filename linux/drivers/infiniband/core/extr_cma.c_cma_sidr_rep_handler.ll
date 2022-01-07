; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_sidr_rep_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_sidr_rep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.rdma_id_private* }
%struct.rdma_id_private = type { i64, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, %struct.rdma_cm_event*)*, %struct.TYPE_9__, i32, i32 }
%struct.rdma_cm_event = type opaque
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.ib_cm_event = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.ib_cm_sidr_rep_event_param }
%struct.ib_cm_sidr_rep_event_param = type { i32, i32, i32, i32 }
%struct.rdma_cm_event.0 = type { i32, %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@RDMA_CM_CONNECT = common dso_local global i64 0, align 8
@RDMA_CM_EVENT_UNREACHABLE = common dso_local global i8* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@IB_CM_SIDR_REP_PRIVATE_DATA_SIZE = common dso_local global i32 0, align 4
@IB_SIDR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"RDMA CM: UNREACHABLE: bad SIDR reply. status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"RDMA CM: ADDR_ERROR: failed to set qkey. status %d\0A\00", align 1
@RDMA_CM_EVENT_ADDR_ERROR = common dso_local global i8* null, align 8
@RDMA_CM_EVENT_ESTABLISHED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"RDMA CMA: unexpected IB CM event: %d\0A\00", align 1
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, %struct.ib_cm_event*)* @cma_sidr_rep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_sidr_rep_handler(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_event*, align 8
  %6 = alloca %struct.rdma_id_private*, align 8
  %7 = alloca %struct.rdma_cm_event.0, align 8
  %8 = alloca %struct.ib_cm_sidr_rep_event_param*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %5, align 8
  %10 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %11 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %10, i32 0, i32 0
  %12 = load %struct.rdma_id_private*, %struct.rdma_id_private** %11, align 8
  store %struct.rdma_id_private* %12, %struct.rdma_id_private** %6, align 8
  %13 = bitcast %struct.rdma_cm_event.0* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %15 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.ib_cm_sidr_rep_event_param* %16, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %18 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %21 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RDMA_CM_CONNECT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %150

26:                                               ; preds = %2
  %27 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %28 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %115 [
    i32 128, label %30
    i32 129, label %36
  ]

30:                                               ; preds = %26
  %31 = load i8*, i8** @RDMA_CM_EVENT_UNREACHABLE, align 8
  %32 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  %35 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  br label %120

36:                                               ; preds = %26
  %37 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %38 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @IB_CM_SIDR_REP_PRIVATE_DATA_SIZE, align 4
  %44 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  %48 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IB_SIDR_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %36
  %53 = load i8*, i8** @RDMA_CM_EVENT_UNREACHABLE, align 8
  %54 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %56 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %120

64:                                               ; preds = %36
  %65 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %66 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  %67 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cma_set_qkey(%struct.rdma_id_private* %65, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** @RDMA_CM_EVENT_ADDR_ERROR, align 8
  %76 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 2
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  br label %120

79:                                               ; preds = %64
  %80 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %81 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %85 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %89 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  %97 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ib_init_ah_attr_from_path(i32 %83, i32 %87, i32 %92, i32* %95, i32 %98)
  %100 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  %101 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 4
  %106 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %8, align 8
  %107 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load i8*, i8** @RDMA_CM_EVENT_ESTABLISHED, align 8
  %113 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 2
  store i8* %112, i8** %113, align 8
  %114 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 0
  store i32 0, i32* %114, align 8
  br label %120

115:                                              ; preds = %26
  %116 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %117 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %150

120:                                              ; preds = %79, %72, %52, %30
  %121 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %122 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32 (%struct.TYPE_13__*, %struct.rdma_cm_event*)*, i32 (%struct.TYPE_13__*, %struct.rdma_cm_event*)** %123, align 8
  %125 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %126 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %125, i32 0, i32 2
  %127 = bitcast %struct.rdma_cm_event.0* %7 to %struct.rdma_cm_event*
  %128 = call i32 %124(%struct.TYPE_13__* %126, %struct.rdma_cm_event* %127)
  store i32 %128, i32* %9, align 4
  %129 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %7, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = call i32 @rdma_destroy_ah_attr(i32* %131)
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %120
  %136 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %137 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %140 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %141 = call i32 @cma_exch(%struct.rdma_id_private* %139, i32 %140)
  %142 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %143 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %142, i32 0, i32 1
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %146 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %145, i32 0, i32 2
  %147 = call i32 @rdma_destroy_id(%struct.TYPE_13__* %146)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %3, align 4
  br label %155

149:                                              ; preds = %120
  br label %150

150:                                              ; preds = %149, %115, %25
  %151 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %152 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %151, i32 0, i32 1
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %150, %135
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @pr_debug_ratelimited(i8*, i32) #2

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #2

declare dso_local i32 @ib_init_ah_attr_from_path(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @rdma_destroy_ah_attr(i32*) #2

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
