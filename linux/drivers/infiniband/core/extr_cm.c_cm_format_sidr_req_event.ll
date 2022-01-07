; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_sidr_req_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_sidr_req_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { %struct.TYPE_16__, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.ib_cm_sidr_req_event_param }
%struct.ib_cm_sidr_req_event_param = type { i32, i32, i32, i32, %struct.ib_cm_id*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.cm_id_private = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.ib_cm_id = type { i32 }
%struct.cm_sidr_req_msg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_work*, %struct.cm_id_private*, %struct.ib_cm_id*)* @cm_format_sidr_req_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_sidr_req_event(%struct.cm_work* %0, %struct.cm_id_private* %1, %struct.ib_cm_id* %2) #0 {
  %4 = alloca %struct.cm_work*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_id*, align 8
  %7 = alloca %struct.cm_sidr_req_msg*, align 8
  %8 = alloca %struct.ib_cm_sidr_req_event_param*, align 8
  store %struct.cm_work* %0, %struct.cm_work** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  store %struct.ib_cm_id* %2, %struct.ib_cm_id** %6, align 8
  %9 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %10 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cm_sidr_req_msg*
  store %struct.cm_sidr_req_msg* %15, %struct.cm_sidr_req_msg** %7, align 8
  %16 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %17 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store %struct.ib_cm_sidr_req_event_param* %19, %struct.ib_cm_sidr_req_event_param** %8, align 8
  %20 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %7, align 8
  %21 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__be16_to_cpu(i32 %22)
  %24 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %8, align 8
  %25 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %27 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %8, align 8
  %28 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %27, i32 0, i32 4
  store %struct.ib_cm_id* %26, %struct.ib_cm_id** %28, align 8
  %29 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %7, align 8
  %30 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %8, align 8
  %33 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %35 = call i32 @cm_get_bth_pkey(%struct.cm_work* %34)
  %36 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %8, align 8
  %37 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %39 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %8, align 8
  %44 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %46 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %8, align 8
  %52 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %7, align 8
  %54 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %53, i32 0, i32 0
  %55 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %56 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i32* %54, i32** %57, align 8
  ret void
}

declare dso_local i32 @__be16_to_cpu(i32) #1

declare dso_local i32 @cm_get_bth_pkey(%struct.cm_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
