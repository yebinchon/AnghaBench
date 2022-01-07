; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_sidr_rep_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_sidr_rep_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { %struct.TYPE_14__, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ib_cm_sidr_rep_event_param }
%struct.ib_cm_sidr_rep_event_param = type { i32, i32, i32*, i8*, i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.cm_id_private = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.cm_sidr_rep_msg = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_work*, %struct.cm_id_private*)* @cm_format_sidr_rep_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_sidr_rep_event(%struct.cm_work* %0, %struct.cm_id_private* %1) #0 {
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_sidr_rep_msg*, align 8
  %6 = alloca %struct.ib_cm_sidr_rep_event_param*, align 8
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %4, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cm_sidr_rep_msg*
  store %struct.cm_sidr_rep_msg* %13, %struct.cm_sidr_rep_msg** %5, align 8
  %14 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %15 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store %struct.ib_cm_sidr_rep_event_param* %17, %struct.ib_cm_sidr_rep_event_param** %6, align 8
  %18 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %5, align 8
  %19 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %6, align 8
  %22 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %5, align 8
  %24 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @be32_to_cpu(i32 %25)
  %27 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %6, align 8
  %28 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %5, align 8
  %30 = call i32 @cm_sidr_rep_get_qpn(%struct.cm_sidr_rep_msg* %29)
  %31 = call i8* @be32_to_cpu(i32 %30)
  %32 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %6, align 8
  %33 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %5, align 8
  %35 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %34, i32 0, i32 2
  %36 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %6, align 8
  %37 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %5, align 8
  %39 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %6, align 8
  %42 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %44 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ib_cm_sidr_rep_event_param*, %struct.ib_cm_sidr_rep_event_param** %6, align 8
  %50 = getelementptr inbounds %struct.ib_cm_sidr_rep_event_param, %struct.ib_cm_sidr_rep_event_param* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.cm_sidr_rep_msg*, %struct.cm_sidr_rep_msg** %5, align 8
  %52 = getelementptr inbounds %struct.cm_sidr_rep_msg, %struct.cm_sidr_rep_msg* %51, i32 0, i32 0
  %53 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %54 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @cm_sidr_rep_get_qpn(%struct.cm_sidr_rep_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
