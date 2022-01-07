; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_rcv_has_same_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_rcv_has_same_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_mad_send_wr_private = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_18__, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_11__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.ib_mad_hdr }
%struct.ib_mad_hdr = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.rdma_ah_attr = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_global_route = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_agent_private*, %struct.ib_mad_send_wr_private*, %struct.ib_mad_recv_wc*)* @rcv_has_same_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcv_has_same_gid(%struct.ib_mad_agent_private* %0, %struct.ib_mad_send_wr_private* %1, %struct.ib_mad_recv_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_mad_agent_private*, align 8
  %6 = alloca %struct.ib_mad_send_wr_private*, align 8
  %7 = alloca %struct.ib_mad_recv_wc*, align 8
  %8 = alloca %struct.rdma_ah_attr, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.ib_gid, align 4
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_global_route*, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %5, align 8
  store %struct.ib_mad_send_wr_private* %1, %struct.ib_mad_send_wr_private** %6, align 8
  store %struct.ib_mad_recv_wc* %2, %struct.ib_mad_recv_wc** %7, align 8
  %17 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %18 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.ib_device*, %struct.ib_device** %19, align 8
  store %struct.ib_device* %20, %struct.ib_device** %12, align 8
  %21 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %22 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %13, align 8
  %25 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %6, align 8
  %26 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ib_mad_hdr*
  %30 = call i64 @ib_response_mad(%struct.ib_mad_hdr* %29)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %32 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = call i64 @ib_response_mad(%struct.ib_mad_hdr* %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %159

41:                                               ; preds = %3
  %42 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %6, align 8
  %43 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @rdma_query_ah(i32 %45, %struct.rdma_ah_attr* %8)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %159

49:                                               ; preds = %41
  %50 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %8)
  %51 = load i32, i32* @IB_AH_GRH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %59 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IB_WC_GRH, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = icmp ne i32 %57, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %159

71:                                               ; preds = %49
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %131, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %131

77:                                               ; preds = %74
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %77
  %81 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i64 @ib_get_cached_lmc(%struct.ib_device* %81, i64 %82, i64* %14)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %159

86:                                               ; preds = %80
  %87 = load i64, i64* %14, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %8)
  %91 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %92 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %90, %95
  %97 = load i64, i64* %14, align 8
  %98 = trunc i64 %97 to i32
  %99 = shl i32 1, %98
  %100 = sub nsw i32 %99, 1
  %101 = and i32 %96, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %89, %86
  %105 = phi i1 [ true, %86 ], [ %103, %89 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %159

107:                                              ; preds = %77
  %108 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %8)
  store %struct.ib_global_route* %108, %struct.ib_global_route** %16, align 8
  %109 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %112 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @rdma_query_gid(%struct.ib_device* %109, i64 %110, i32 %113, %union.ib_gid* %11)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %159

117:                                              ; preds = %107
  %118 = bitcast %union.ib_gid* %11 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %121 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memcmp(i32 %119, i32 %126, i32 16)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %4, align 4
  br label %159

131:                                              ; preds = %74, %71
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = call i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %8)
  %136 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %137 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %136, i32 0, i32 1
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %135, %140
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %4, align 4
  br label %159

143:                                              ; preds = %131
  %144 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %8)
  %145 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %7, align 8
  %149 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @memcmp(i32 %147, i32 %154, i32 16)
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %143, %134, %117, %116, %104, %85, %70, %48, %40
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @ib_response_mad(%struct.ib_mad_hdr*) #1

declare dso_local i64 @rdma_query_ah(i32, %struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local i64 @ib_get_cached_lmc(%struct.ib_device*, i64, i64*) #1

declare dso_local i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i64 @rdma_query_gid(%struct.ib_device*, i64, i32, %union.ib_gid*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i64 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
