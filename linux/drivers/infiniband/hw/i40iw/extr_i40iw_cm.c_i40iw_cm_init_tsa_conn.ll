; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_init_tsa_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_init_tsa_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp = type { %struct.TYPE_11__, i32, %struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_14__*, %struct.i40iw_qp_host_ctx_info, %struct.i40iwarp_offload_info, %struct.i40iw_device* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.i40iw_qp_host_ctx_info = type { i32, i32, i32, i32, i32, i32, %struct.i40iw_tcp_offload_info* }
%struct.i40iw_tcp_offload_info = type { i32, i32, i32, i32 }
%struct.i40iwarp_offload_info = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.i40iw_device = type { i32, %struct.i40iw_sc_dev }
%struct.i40iw_sc_dev = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (i32*, i32*, %struct.i40iw_qp_host_ctx_info*)* }
%struct.i40iw_cm_node = type { i32, i32, i32, i64, i64, i32, i32 }

@SNDMARKER_SEQNMASK = common dso_local global i32 0, align 4
@I40IW_CM_STATE_OFFLOADED = common dso_local global i32 0, align 4
@I40IW_TCP_STATE_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_qp*, %struct.i40iw_cm_node*)* @i40iw_cm_init_tsa_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_cm_init_tsa_conn(%struct.i40iw_qp* %0, %struct.i40iw_cm_node* %1) #0 {
  %3 = alloca %struct.i40iw_qp*, align 8
  %4 = alloca %struct.i40iw_cm_node*, align 8
  %5 = alloca %struct.i40iw_tcp_offload_info, align 4
  %6 = alloca %struct.i40iwarp_offload_info*, align 8
  %7 = alloca %struct.i40iw_qp_host_ctx_info*, align 8
  %8 = alloca %struct.i40iw_device*, align 8
  %9 = alloca %struct.i40iw_sc_dev*, align 8
  store %struct.i40iw_qp* %0, %struct.i40iw_qp** %3, align 8
  store %struct.i40iw_cm_node* %1, %struct.i40iw_cm_node** %4, align 8
  %10 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %10, i32 0, i32 7
  %12 = load %struct.i40iw_device*, %struct.i40iw_device** %11, align 8
  store %struct.i40iw_device* %12, %struct.i40iw_device** %8, align 8
  %13 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %14 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %13, i32 0, i32 7
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %14, align 8
  %16 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %15, i32 0, i32 1
  store %struct.i40iw_sc_dev* %16, %struct.i40iw_sc_dev** %9, align 8
  %17 = call i32 @memset(%struct.i40iw_tcp_offload_info* %5, i32 0, i32 16)
  %18 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %19 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %18, i32 0, i32 6
  store %struct.i40iwarp_offload_info* %19, %struct.i40iwarp_offload_info** %6, align 8
  %20 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %21 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %20, i32 0, i32 5
  store %struct.i40iw_qp_host_ctx_info* %21, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %22 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %23 = getelementptr inbounds %struct.i40iw_qp_host_ctx_info, %struct.i40iw_qp_host_ctx_info* %22, i32 0, i32 6
  store %struct.i40iw_tcp_offload_info* %5, %struct.i40iw_tcp_offload_info** %23, align 8
  %24 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %25 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %24, i32 0, i32 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %32 = getelementptr inbounds %struct.i40iw_qp_host_ctx_info, %struct.i40iw_qp_host_ctx_info* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %34 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %33, i32 0, i32 3
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %41 = getelementptr inbounds %struct.i40iw_qp_host_ctx_info, %struct.i40iw_qp_host_ctx_info* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %43 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.i40iwarp_offload_info*, %struct.i40iwarp_offload_info** %6, align 8
  %46 = getelementptr inbounds %struct.i40iwarp_offload_info, %struct.i40iwarp_offload_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %48 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @i40iw_derive_hw_ird_setting(i32 %49)
  %51 = load %struct.i40iwarp_offload_info*, %struct.i40iwarp_offload_info** %6, align 8
  %52 = getelementptr inbounds %struct.i40iwarp_offload_info, %struct.i40iwarp_offload_info* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.i40iwarp_offload_info*, %struct.i40iwarp_offload_info** %6, align 8
  %54 = getelementptr inbounds %struct.i40iwarp_offload_info, %struct.i40iwarp_offload_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %2
  %58 = load %struct.i40iwarp_offload_info*, %struct.i40iwarp_offload_info** %6, align 8
  %59 = getelementptr inbounds %struct.i40iwarp_offload_info, %struct.i40iwarp_offload_info* %58, i32 0, i32 0
  store i32 2, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %2
  %61 = load %struct.i40iwarp_offload_info*, %struct.i40iwarp_offload_info** %6, align 8
  %62 = getelementptr inbounds %struct.i40iwarp_offload_info, %struct.i40iwarp_offload_info* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.i40iwarp_offload_info*, %struct.i40iwarp_offload_info** %6, align 8
  %64 = getelementptr inbounds %struct.i40iwarp_offload_info, %struct.i40iwarp_offload_info* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load %struct.i40iwarp_offload_info*, %struct.i40iwarp_offload_info** %6, align 8
  %66 = getelementptr inbounds %struct.i40iwarp_offload_info, %struct.i40iwarp_offload_info* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  %67 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %68 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %67, i32 0, i32 2
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.i40iwarp_offload_info*, %struct.i40iwarp_offload_info** %6, align 8
  %74 = getelementptr inbounds %struct.i40iwarp_offload_info, %struct.i40iwarp_offload_info* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %76 = getelementptr inbounds %struct.i40iw_qp_host_ctx_info, %struct.i40iw_qp_host_ctx_info* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %78 = getelementptr inbounds %struct.i40iw_qp_host_ctx_info, %struct.i40iw_qp_host_ctx_info* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %80 = getelementptr inbounds %struct.i40iw_qp_host_ctx_info, %struct.i40iw_qp_host_ctx_info* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %82 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %85 = getelementptr inbounds %struct.i40iw_qp_host_ctx_info, %struct.i40iw_qp_host_ctx_info* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %87 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %88 = call i32 @i40iw_init_tcp_ctx(%struct.i40iw_cm_node* %86, %struct.i40iw_tcp_offload_info* %5, %struct.i40iw_qp* %87)
  %89 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %90 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %60
  %94 = load %struct.i40iwarp_offload_info*, %struct.i40iwarp_offload_info** %6, align 8
  %95 = getelementptr inbounds %struct.i40iwarp_offload_info, %struct.i40iwarp_offload_info* %94, i32 0, i32 4
  store i32 1, i32* %95, align 8
  %96 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %5, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SNDMARKER_SEQNMASK, align 4
  %99 = and i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %102 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load %struct.i40iwarp_offload_info*, %struct.i40iwarp_offload_info** %6, align 8
  %106 = getelementptr inbounds %struct.i40iwarp_offload_info, %struct.i40iwarp_offload_info* %105, i32 0, i32 5
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %93, %60
  %108 = load i32, i32* @I40IW_CM_STATE_OFFLOADED, align 4
  %109 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %110 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @I40IW_TCP_STATE_ESTABLISHED, align 4
  %112 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %5, i32 0, i32 3
  store i32 %111, i32* %112, align 4
  %113 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %114 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %5, i32 0, i32 2
  store i32 %115, i32* %116, align 4
  %117 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %118 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %5, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  %121 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %9, align 8
  %122 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %121, i32 0, i32 0
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32 (i32*, i32*, %struct.i40iw_qp_host_ctx_info*)*, i32 (i32*, i32*, %struct.i40iw_qp_host_ctx_info*)** %124, align 8
  %126 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %127 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %126, i32 0, i32 1
  %128 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %129 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  %133 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %134 = call i32 %125(i32* %127, i32* %132, %struct.i40iw_qp_host_ctx_info* %133)
  %135 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %136 = getelementptr inbounds %struct.i40iw_qp_host_ctx_info, %struct.i40iw_qp_host_ctx_info* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  %137 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %138 = getelementptr inbounds %struct.i40iw_qp_host_ctx_info, %struct.i40iw_qp_host_ctx_info* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  %139 = load %struct.i40iw_qp_host_ctx_info*, %struct.i40iw_qp_host_ctx_info** %7, align 8
  %140 = getelementptr inbounds %struct.i40iw_qp_host_ctx_info, %struct.i40iw_qp_host_ctx_info* %139, i32 0, i32 2
  store i32 0, i32* %140, align 8
  ret void
}

declare dso_local i32 @memset(%struct.i40iw_tcp_offload_info*, i32, i32) #1

declare dso_local i32 @i40iw_derive_hw_ird_setting(i32) #1

declare dso_local i32 @i40iw_init_tcp_ctx(%struct.i40iw_cm_node*, %struct.i40iw_tcp_offload_info*, %struct.i40iw_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
