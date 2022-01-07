; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_av_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_av_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ocrdma_modify_qp = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.ib_qp_attr = type { %struct.rdma_ah_attr }
%struct.rdma_ah_attr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ib_gid_attr* }
%struct.ib_gid_attr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%union.anon = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ocrdma_dev = type { i32, i32, i64, i32 }
%struct.ib_global_route = type { i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.sockaddr = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_TCLASS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_FLOW_LABEL_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_SL_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_HOP_LMT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_FLOW_LBL_VALID = common dso_local global i32 0, align 4
@RDMA_NETWORK_IPV4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ocrdma%d:Using VLAN with PFC is recommended\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ocrdma%d:Using VLAN 0 for this connection\0A\00", align 1
@OCRDMA_QP_PARAMS_VLAN_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_VLAN_EN_VALID = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_FLAGS_L3_TYPE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_FLAGS_L3_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_modify_qp*, %struct.ib_qp_attr*, i32)* @ocrdma_set_av_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_set_av_params(%struct.ocrdma_qp* %0, %struct.ocrdma_modify_qp* %1, %struct.ib_qp_attr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_qp*, align 8
  %7 = alloca %struct.ocrdma_modify_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rdma_ah_attr*, align 8
  %12 = alloca %struct.ib_gid_attr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [6 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca %union.anon, align 4
  %17 = alloca %union.anon, align 4
  %18 = alloca %struct.ocrdma_dev*, align 8
  %19 = alloca %struct.ib_global_route*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %6, align 8
  store %struct.ocrdma_modify_qp* %1, %struct.ocrdma_modify_qp** %7, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %21 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %20, i32 0, i32 0
  store %struct.rdma_ah_attr* %21, %struct.rdma_ah_attr** %11, align 8
  store i32 65535, i32* %13, align 4
  %22 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %23 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %25)
  store %struct.ocrdma_dev* %26, %struct.ocrdma_dev** %18, align 8
  %27 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %28 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %27)
  %29 = load i32, i32* @IB_AH_GRH, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %268

35:                                               ; preds = %4
  %36 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %37 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %36)
  store %struct.ib_global_route* %37, %struct.ib_global_route** %19, align 8
  %38 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %18, align 8
  %39 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %38, i32 0, i32 3
  %40 = call i64 @atomic_cmpxchg(i32* %39, i32 1, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %18, align 8
  %44 = call i32 @ocrdma_init_service_level(%struct.ocrdma_dev* %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.ib_global_route*, %struct.ib_global_route** %19, align 8
  %47 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OCRDMA_QP_PARAMS_TCLASS_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %52 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ib_global_route*, %struct.ib_global_route** %19, align 8
  %57 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @OCRDMA_QP_PARAMS_FLOW_LABEL_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %62 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %67 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %66)
  %68 = load i32, i32* @OCRDMA_QP_PARAMS_SL_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %71 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  %75 = load %struct.ib_global_route*, %struct.ib_global_route** %19, align 8
  %76 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @OCRDMA_QP_PARAMS_HOP_LMT_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %81 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @OCRDMA_QP_PARA_FLOW_LBL_VALID, align 4
  %86 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %87 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %91 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load %struct.ib_global_route*, %struct.ib_global_route** %19, align 8
  %96 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = call i32 @memcpy(i32* %94, i32* %99, i32 8)
  %101 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %102 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %103, align 8
  store %struct.ib_gid_attr* %104, %struct.ib_gid_attr** %12, align 8
  %105 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %107 = call i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %105, i32* %13, i32* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %45
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %268

112:                                              ; preds = %45
  %113 = load %struct.ib_global_route*, %struct.ib_global_route** %19, align 8
  %114 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %6, align 8
  %117 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %119 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %124 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = call i32 @memcpy(i32* %122, i32* %127, i32 8)
  %129 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %18, align 8
  %130 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %131 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %132 = call i32 @ocrdma_resolve_dmac(%struct.ocrdma_dev* %129, %struct.rdma_ah_attr* %130, i32* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %112
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %5, align 4
  br label %268

137:                                              ; preds = %112
  %138 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %139 = load i32, i32* %138, align 16
  %140 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 8
  %143 = or i32 %139, %142
  %144 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %145, 16
  %147 = or i32 %143, %146
  %148 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 24
  %151 = or i32 %147, %150
  %152 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %153 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  store i32 %151, i32* %154, align 4
  %155 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %156 = call i32 @rdma_gid_attr_network_type(%struct.ib_gid_attr* %155)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @RDMA_NETWORK_IPV4, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %187

160:                                              ; preds = %137
  %161 = bitcast %union.anon* %16 to %struct.sockaddr*
  %162 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  %163 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %162, i32 0, i32 0
  %164 = call i32 @rdma_gid2ip(%struct.sockaddr* %161, %struct.TYPE_10__* %163)
  %165 = bitcast %union.anon* %17 to %struct.sockaddr*
  %166 = load %struct.ib_global_route*, %struct.ib_global_route** %19, align 8
  %167 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %166, i32 0, i32 3
  %168 = call i32 @rdma_gid2ip(%struct.sockaddr* %165, %struct.TYPE_10__* %167)
  %169 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %170 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 7
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = bitcast %union.anon* %17 to %struct.sockaddr_in*
  %175 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = call i32 @memcpy(i32* %173, i32* %176, i32 4)
  %178 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %179 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 6
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = bitcast %union.anon* %16 to %struct.sockaddr_in*
  %184 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = call i32 @memcpy(i32* %182, i32* %185, i32 4)
  br label %187

187:                                              ; preds = %160, %137
  %188 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %189 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 7
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = call i32 @ocrdma_cpu_to_le32(i32* %192, i32 8)
  %194 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %195 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 6
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = call i32 @ocrdma_cpu_to_le32(i32* %198, i32 8)
  %200 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 4
  %201 = load i32, i32* %200, align 16
  %202 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 5
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 8
  %205 = or i32 %201, %204
  %206 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %207 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 4
  store i32 %205, i32* %208, align 8
  %209 = load i32, i32* %13, align 4
  %210 = icmp eq i32 %209, 65535
  br i1 %210, label %211, label %212

211:                                              ; preds = %187
  store i32 0, i32* %13, align 4
  br label %212

212:                                              ; preds = %211, %187
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %212
  %216 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %18, align 8
  %217 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %257

220:                                              ; preds = %215, %212
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %232, label %223

223:                                              ; preds = %220
  %224 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %18, align 8
  %225 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %226)
  %228 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %18, align 8
  %229 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %223, %220
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* @OCRDMA_QP_PARAMS_VLAN_SHIFT, align 4
  %235 = shl i32 %233, %234
  %236 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %237 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %235
  store i32 %240, i32* %238, align 8
  %241 = load i32, i32* @OCRDMA_QP_PARA_VLAN_EN_VALID, align 4
  %242 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %243 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  %246 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %18, align 8
  %247 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, 7
  %250 = load i32, i32* @OCRDMA_QP_PARAMS_SL_SHIFT, align 4
  %251 = shl i32 %249, %250
  %252 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %253 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %251
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %232, %215
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* @OCRDMA_QP_PARAMS_FLAGS_L3_TYPE_SHIFT, align 4
  %260 = shl i32 %258, %259
  %261 = load i32, i32* @OCRDMA_QP_PARAMS_FLAGS_L3_TYPE_MASK, align 4
  %262 = and i32 %260, %261
  %263 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %7, align 8
  %264 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %262
  store i32 %267, i32* %265, align 4
  store i32 0, i32* %5, align 4
  br label %268

268:                                              ; preds = %257, %135, %110, %32
  %269 = load i32, i32* %5, align 4
  ret i32 %269
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @ocrdma_init_service_level(%struct.ocrdma_dev*) #1

declare dso_local i32 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr*, i32*, i32*) #1

declare dso_local i32 @ocrdma_resolve_dmac(%struct.ocrdma_dev*, %struct.rdma_ah_attr*, i32*) #1

declare dso_local i32 @rdma_gid_attr_network_type(%struct.ib_gid_attr*) #1

declare dso_local i32 @rdma_gid2ip(%struct.sockaddr*, %struct.TYPE_10__*) #1

declare dso_local i32 @ocrdma_cpu_to_le32(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
