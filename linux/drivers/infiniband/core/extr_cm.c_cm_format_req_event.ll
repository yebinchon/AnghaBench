; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_req_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_req_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { %struct.TYPE_16__, i32*, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.ib_cm_req_event_param }
%struct.ib_cm_req_event_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32*, i32*, i32, i32, %struct.ib_cm_id* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.cm_id_private = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ib_cm_id = type { i32 }
%struct.cm_req_msg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_work*, %struct.cm_id_private*, %struct.ib_cm_id*)* @cm_format_req_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_req_event(%struct.cm_work* %0, %struct.cm_id_private* %1, %struct.ib_cm_id* %2) #0 {
  %4 = alloca %struct.cm_work*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_id*, align 8
  %7 = alloca %struct.cm_req_msg*, align 8
  %8 = alloca %struct.ib_cm_req_event_param*, align 8
  store %struct.cm_work* %0, %struct.cm_work** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  store %struct.ib_cm_id* %2, %struct.ib_cm_id** %6, align 8
  %9 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %10 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cm_req_msg*
  store %struct.cm_req_msg* %15, %struct.cm_req_msg** %7, align 8
  %16 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %17 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store %struct.ib_cm_req_event_param* %19, %struct.ib_cm_req_event_param** %8, align 8
  %20 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %21 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %22 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %21, i32 0, i32 18
  store %struct.ib_cm_id* %20, %struct.ib_cm_id** %22, align 8
  %23 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %24 = call i32 @cm_get_bth_pkey(%struct.cm_work* %23)
  %25 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %26 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %25, i32 0, i32 17
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %28 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %34 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %33, i32 0, i32 16
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %36 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %40 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %39, i32 0, i32 15
  store i32* %38, i32** %40, align 8
  %41 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %42 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %43 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %42, i32 0, i32 15
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @cm_opa_to_ib_sgid(%struct.cm_work* %41, i32* %44)
  %46 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %47 = call i64 @cm_req_has_alt_path(%struct.cm_req_msg* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %3
  %50 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %51 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %55 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %54, i32 0, i32 14
  store i32* %53, i32** %55, align 8
  %56 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %57 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %58 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %57, i32 0, i32 14
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @cm_opa_to_ib_sgid(%struct.cm_work* %56, i32* %59)
  br label %64

61:                                               ; preds = %3
  %62 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %63 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %62, i32 0, i32 14
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %61, %49
  %65 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %66 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %69 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %68, i32 0, i32 13
  store i32 %67, i32* %69, align 8
  %70 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %71 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @be32_to_cpu(i32 %72)
  %74 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %75 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %74, i32 0, i32 12
  store i8* %73, i8** %75, align 8
  %76 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %77 = call i32 @cm_req_get_local_qpn(%struct.cm_req_msg* %76)
  %78 = call i8* @be32_to_cpu(i32 %77)
  %79 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %80 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %79, i32 0, i32 11
  store i8* %78, i8** %80, align 8
  %81 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %82 = call i32 @cm_req_get_qp_type(%struct.cm_req_msg* %81)
  %83 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %84 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 8
  %85 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %86 = call i32 @cm_req_get_starting_psn(%struct.cm_req_msg* %85)
  %87 = call i8* @be32_to_cpu(i32 %86)
  %88 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %89 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %88, i32 0, i32 9
  store i8* %87, i8** %89, align 8
  %90 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %91 = call i32 @cm_req_get_init_depth(%struct.cm_req_msg* %90)
  %92 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %93 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %92, i32 0, i32 8
  store i32 %91, i32* %93, align 8
  %94 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %95 = call i32 @cm_req_get_resp_res(%struct.cm_req_msg* %94)
  %96 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %97 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  %98 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %99 = call i32 @cm_req_get_remote_resp_timeout(%struct.cm_req_msg* %98)
  %100 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %101 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %103 = call i32 @cm_req_get_flow_ctrl(%struct.cm_req_msg* %102)
  %104 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %105 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %107 = call i32 @cm_req_get_local_resp_timeout(%struct.cm_req_msg* %106)
  %108 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %109 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %111 = call i32 @cm_req_get_retry_count(%struct.cm_req_msg* %110)
  %112 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %113 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %115 = call i32 @cm_req_get_rnr_retry_count(%struct.cm_req_msg* %114)
  %116 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %117 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %119 = call i32 @cm_req_get_srq(%struct.cm_req_msg* %118)
  %120 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %121 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %123 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %129 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %131 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %130, i32 0, i32 0
  %132 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %133 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  store i32* %131, i32** %134, align 8
  ret void
}

declare dso_local i32 @cm_get_bth_pkey(%struct.cm_work*) #1

declare dso_local i32 @cm_opa_to_ib_sgid(%struct.cm_work*, i32*) #1

declare dso_local i64 @cm_req_has_alt_path(%struct.cm_req_msg*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @cm_req_get_local_qpn(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_qp_type(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_starting_psn(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_init_depth(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_resp_res(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_remote_resp_timeout(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_flow_ctrl(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_local_resp_timeout(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_retry_count(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_rnr_retry_count(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_srq(%struct.cm_req_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
