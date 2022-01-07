; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_ib_mc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_ib_mc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_multicast = type { %struct.TYPE_15__, %struct.cma_multicast* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.cma_multicast = type { i32, %struct.rdma_id_private* }
%struct.rdma_id_private = type { i64, i32, %struct.TYPE_14__, %struct.TYPE_11__*, i32 }
%struct.TYPE_14__ = type { i64, i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)*, i32, %struct.TYPE_10__, i64 }
%struct.rdma_cm_event = type opaque
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.rdma_cm_event.0 = type { i32, %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }

@RDMA_CM_ADDR_BOUND = common dso_local global i64 0, align 8
@RDMA_CM_ADDR_RESOLVED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"RDMA CM: MULTICAST_ERROR: failed to join multicast. status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"RDMA CM: MULTICAST_ERROR: failed to attach QP. status %d\0A\00", align 1
@RDMA_CM_EVENT_MULTICAST_JOIN = common dso_local global i8* null, align 8
@RDMA_CM_EVENT_MULTICAST_ERROR = common dso_local global i8* null, align 8
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ib_sa_multicast*)* @cma_ib_mc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_ib_mc_handler(i32 %0, %struct.ib_sa_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_multicast*, align 8
  %6 = alloca %struct.rdma_id_private*, align 8
  %7 = alloca %struct.cma_multicast*, align 8
  %8 = alloca %struct.rdma_cm_event.0, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdma_dev_addr*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ib_sa_multicast* %1, %struct.ib_sa_multicast** %5, align 8
  %13 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %14 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %13, i32 0, i32 1
  %15 = load %struct.cma_multicast*, %struct.cma_multicast** %14, align 8
  store %struct.cma_multicast* %15, %struct.cma_multicast** %7, align 8
  %16 = bitcast %struct.rdma_cm_event.0* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  store i32 0, i32* %9, align 4
  %17 = load %struct.cma_multicast*, %struct.cma_multicast** %7, align 8
  %18 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %17, i32 0, i32 1
  %19 = load %struct.rdma_id_private*, %struct.rdma_id_private** %18, align 8
  store %struct.rdma_id_private* %19, %struct.rdma_id_private** %6, align 8
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %21 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %24 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RDMA_CM_ADDR_BOUND, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %30 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RDMA_CM_ADDR_RESOLVED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %196

35:                                               ; preds = %28, %2
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %40 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %41 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = call i32 @cma_set_qkey(%struct.rdma_id_private* %39, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %51 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %50, i32 0, i32 4
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %81, label %55

55:                                               ; preds = %49
  %56 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %57 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %63 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %67 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %70 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be16_to_cpu(i32 %72)
  %74 = call i32 @ib_attach_mcast(i64 %65, i32* %68, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %61
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %61
  br label %81

81:                                               ; preds = %80, %55, %49
  %82 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %83 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %82, i32 0, i32 4
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %4, align 4
  %86 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.cma_multicast*, %struct.cma_multicast** %7, align 8
  %88 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %167, label %95

95:                                               ; preds = %81
  %96 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %97 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store %struct.rdma_dev_addr* %100, %struct.rdma_dev_addr** %10, align 8
  %101 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %10, align 8
  %102 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %10, align 8
  %105 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.net_device* @dev_get_by_index(i32 %103, i32 %106)
  store %struct.net_device* %107, %struct.net_device** %11, align 8
  %108 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %109 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %108, i32 0, i32 3
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %114 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %118 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %117, i32 0, i32 3
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @rdma_start_port(i32 %121)
  %123 = sub i64 %116, %122
  %124 = getelementptr inbounds i32, i32* %112, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %12, align 4
  %126 = load i8*, i8** @RDMA_CM_EVENT_MULTICAST_JOIN, align 8
  %127 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  store i8* %126, i8** %127, align 8
  %128 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %129 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %133 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %137 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %136, i32 0, i32 0
  %138 = load %struct.net_device*, %struct.net_device** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = call i32 @ib_init_ah_from_mcmember(i32 %131, i64 %135, %struct.TYPE_15__* %137, %struct.net_device* %138, i32 %139, i32* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %95
  %147 = load i8*, i8** @RDMA_CM_EVENT_MULTICAST_ERROR, align 8
  %148 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  store i8* %147, i8** %148, align 8
  br label %149

149:                                              ; preds = %146, %95
  %150 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  store i32 16777215, i32* %152, align 4
  %153 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %154 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @be32_to_cpu(i32 %156)
  %158 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 4
  %161 = load %struct.net_device*, %struct.net_device** %11, align 8
  %162 = icmp ne %struct.net_device* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %149
  %164 = load %struct.net_device*, %struct.net_device** %11, align 8
  %165 = call i32 @dev_put(%struct.net_device* %164)
  br label %166

166:                                              ; preds = %163, %149
  br label %170

167:                                              ; preds = %81
  %168 = load i8*, i8** @RDMA_CM_EVENT_MULTICAST_ERROR, align 8
  %169 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 2
  store i8* %168, i8** %169, align 8
  br label %170

170:                                              ; preds = %167, %166
  %171 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %172 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)*, i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)** %173, align 8
  %175 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %176 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %175, i32 0, i32 2
  %177 = bitcast %struct.rdma_cm_event.0* %8 to %struct.rdma_cm_event*
  %178 = call i32 %174(%struct.TYPE_14__* %176, %struct.rdma_cm_event* %177)
  store i32 %178, i32* %9, align 4
  %179 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = call i32 @rdma_destroy_ah_attr(i32* %181)
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %170
  %186 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %187 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %188 = call i32 @cma_exch(%struct.rdma_id_private* %186, i32 %187)
  %189 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %190 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %189, i32 0, i32 1
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %193 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %192, i32 0, i32 2
  %194 = call i32 @rdma_destroy_id(%struct.TYPE_14__* %193)
  store i32 0, i32* %3, align 4
  br label %200

195:                                              ; preds = %170
  br label %196

196:                                              ; preds = %195, %34
  %197 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %198 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %197, i32 0, i32 1
  %199 = call i32 @mutex_unlock(i32* %198)
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %196, %185
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #2

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i32 @pr_debug_ratelimited(i8*, i32) #2

declare dso_local i32 @ib_attach_mcast(i64, i32*, i32) #2

declare dso_local i32 @be16_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #2

declare dso_local i64 @rdma_start_port(i32) #2

declare dso_local i32 @ib_init_ah_from_mcmember(i32, i64, %struct.TYPE_15__*, %struct.net_device*, i32, i32*) #2

declare dso_local i32 @dev_put(%struct.net_device*) #2

declare dso_local i32 @rdma_destroy_ah_attr(i32*) #2

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #2

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
