; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_lap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_lap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_lap_msg = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_12__, i8*, i8*, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.cm_id_private = type { %struct.TYPE_18__, i32, %struct.TYPE_10__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sa_path_rec = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i32 }

@SA_PATH_REC_TYPE_OPA = common dso_local global i64 0, align 8
@CM_LAP_ATTR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_lap_msg*, %struct.cm_id_private*, %struct.sa_path_rec*, i8*, i64)* @cm_format_lap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_lap(%struct.cm_lap_msg* %0, %struct.cm_id_private* %1, %struct.sa_path_rec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.cm_lap_msg*, align 8
  %7 = alloca %struct.cm_id_private*, align 8
  %8 = alloca %struct.sa_path_rec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cm_lap_msg* %0, %struct.cm_lap_msg** %6, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %7, align 8
  store %struct.sa_path_rec* %2, %struct.sa_path_rec** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %13 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SA_PATH_REC_TYPE_OPA, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %5
  %18 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %19 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %23 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @opa_is_extended_lid(i32 %21, i32 %25)
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %17, %5
  %28 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %29 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %28, i32 0, i32 8
  %30 = load i32, i32* @CM_LAP_ATTR_ID, align 4
  %31 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %32 = call i32 @cm_form_tid(%struct.cm_id_private* %31)
  %33 = call i32 @cm_format_mad_hdr(i32* %29, i32 %30, i32 %32)
  %34 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %35 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %39 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %41 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %45 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %47 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %48 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cm_lap_set_remote_qpn(%struct.cm_lap_msg* %46, i32 %49)
  %51 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %52 = call i32 @cm_lap_set_remote_resp_timeout(%struct.cm_lap_msg* %51, i32 31)
  %53 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %54 = call i32 @sa_path_get_slid(%struct.sa_path_rec* %53)
  %55 = call i32 @ntohl(i32 %54)
  %56 = call i8* @htons(i32 %55)
  %57 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %58 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %60 = call i32 @sa_path_get_dlid(%struct.sa_path_rec* %59)
  %61 = call i32 @ntohl(i32 %60)
  %62 = call i8* @htons(i32 %61)
  %63 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %64 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %66 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %65, i32 0, i32 3
  %67 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %68 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %67, i32 0, i32 9
  %69 = bitcast %struct.TYPE_12__* %66 to i8*
  %70 = bitcast %struct.TYPE_12__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 8, i1 false)
  %71 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %72 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %71, i32 0, i32 2
  %73 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %74 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %73, i32 0, i32 8
  %75 = bitcast %struct.TYPE_14__* %72 to i8*
  %76 = bitcast %struct.TYPE_14__* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 8, i1 false)
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %27
  %80 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %81 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be32_to_cpu(i32 %83)
  %85 = call i8* @OPA_MAKE_ID(i32 %84)
  %86 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %87 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i8* %85, i8** %89, align 8
  %90 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %91 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @be32_to_cpu(i32 %93)
  %95 = call i8* @OPA_MAKE_ID(i32 %94)
  %96 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %97 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  br label %100

100:                                              ; preds = %79, %27
  %101 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %102 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %103 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cm_lap_set_flow_label(%struct.cm_lap_msg* %101, i32 %104)
  %106 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %107 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %108 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @cm_lap_set_traffic_class(%struct.cm_lap_msg* %106, i32 %109)
  %111 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %112 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %115 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %117 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %118 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @cm_lap_set_packet_rate(%struct.cm_lap_msg* %116, i32 %119)
  %121 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %122 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %123 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @cm_lap_set_sl(%struct.cm_lap_msg* %121, i32 %124)
  %126 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %127 = call i32 @cm_lap_set_subnet_local(%struct.cm_lap_msg* %126, i32 1)
  %128 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %129 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %130 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %138 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @cm_ack_timeout(i32 %136, i32 %139)
  %141 = call i32 @cm_lap_set_local_ack_timeout(%struct.cm_lap_msg* %128, i32 %140)
  %142 = load i8*, i8** %9, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %154

144:                                              ; preds = %100
  %145 = load i64, i64* %10, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %149 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @memcpy(i32 %150, i8* %151, i64 %152)
  br label %154

154:                                              ; preds = %147, %144, %100
  ret void
}

declare dso_local i32 @opa_is_extended_lid(i32, i32) #1

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_form_tid(%struct.cm_id_private*) #1

declare dso_local i32 @cm_lap_set_remote_qpn(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_remote_resp_timeout(%struct.cm_lap_msg*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sa_path_get_slid(%struct.sa_path_rec*) #1

declare dso_local i32 @sa_path_get_dlid(%struct.sa_path_rec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @OPA_MAKE_ID(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cm_lap_set_flow_label(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_traffic_class(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_packet_rate(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_sl(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_subnet_local(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_local_ack_timeout(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_ack_timeout(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
