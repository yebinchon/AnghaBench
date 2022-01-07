; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ib_gid_attr* }
%struct.ib_gid_attr = type { i64 }
%struct.hns_roce_v2_qp_context = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_global_route = type { i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.hns_roce_qp = type { i64, i32 }

@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i64 0, align 8
@VLAN_CFI_MASK = common dso_local global i64 0, align 8
@V2_QPC_BYTE_76_RQ_VLAN_EN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_168_SQ_VLAN_EN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_VLAN_ID_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_VLAN_ID_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"sgid_index(%u) too large. max is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"ah attr is not RDMA roce type\0A\00", align 1
@V2_QPC_BYTE_52_UDPSPN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_52_UDPSPN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_20_SGID_IDX_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_20_SGID_IDX_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_HOP_LIMIT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_HOP_LIMIT_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_TC_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_TC_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_FL_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_FL_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_SL_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_SL_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*)* @hns_roce_v2_set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_set_path(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.hns_roce_v2_qp_context* %3, %struct.hns_roce_v2_qp_context* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %11 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %12 = alloca %struct.ib_global_route*, align 8
  %13 = alloca %struct.hns_roce_dev*, align 8
  %14 = alloca %struct.hns_roce_qp*, align 8
  %15 = alloca %struct.ib_gid_attr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %7, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.hns_roce_v2_qp_context* %3, %struct.hns_roce_v2_qp_context** %10, align 8
  store %struct.hns_roce_v2_qp_context* %4, %struct.hns_roce_v2_qp_context** %11, align 8
  %22 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %23 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %22, i32 0, i32 1
  %24 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.TYPE_12__* %23)
  store %struct.ib_global_route* %24, %struct.ib_global_route** %12, align 8
  %25 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %26 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.hns_roce_dev* @to_hr_dev(i32 %27)
  store %struct.hns_roce_dev* %28, %struct.hns_roce_dev** %13, align 8
  %29 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %30 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %29)
  store %struct.hns_roce_qp* %30, %struct.hns_roce_qp** %14, align 8
  store %struct.ib_gid_attr* null, %struct.ib_gid_attr** %15, align 8
  store i32 0, i32* %17, align 4
  store i64 65535, i64* %18, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @IB_QP_PORT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %5
  %36 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %37 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  br label %44

39:                                               ; preds = %5
  %40 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %14, align 8
  %41 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i64 [ %38, %35 ], [ %43, %39 ]
  store i64 %45, i64* %19, align 8
  %46 = load i64, i64* %19, align 8
  %47 = sub i64 %46, 1
  store i64 %47, i64* %20, align 8
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %13, align 8
  %49 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %48, i32 0, i32 3
  %50 = load i64, i64* %19, align 8
  %51 = call i64 @rdma_cap_eth_ah(i32* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %55 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %54, i32 0, i32 1
  %56 = call i32 @rdma_ah_get_ah_flags(%struct.TYPE_12__* %55)
  %57 = load i32, i32* @IB_AH_GRH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %53, %44
  %61 = phi i1 [ false, %44 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %67 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %69, align 8
  store %struct.ib_gid_attr* %70, %struct.ib_gid_attr** %15, align 8
  %71 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %15, align 8
  %72 = call i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %71, i64* %18, i32* null)
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %21, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %21, align 4
  store i32 %76, i32* %6, align 4
  br label %301

77:                                               ; preds = %65
  %78 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %15, align 8
  %79 = icmp ne %struct.ib_gid_attr* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %15, align 8
  %82 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %80, %77
  br label %88

88:                                               ; preds = %87, %60
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* @VLAN_CFI_MASK, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %88
  %93 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %94 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @V2_QPC_BYTE_76_RQ_VLAN_EN_S, align 4
  %97 = call i32 @roce_set_bit(i32 %95, i32 %96, i32 1)
  %98 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %99 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @V2_QPC_BYTE_76_RQ_VLAN_EN_S, align 4
  %102 = call i32 @roce_set_bit(i32 %100, i32 %101, i32 0)
  %103 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %104 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @V2_QPC_BYTE_168_SQ_VLAN_EN_S, align 4
  %107 = call i32 @roce_set_bit(i32 %105, i32 %106, i32 1)
  %108 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %109 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @V2_QPC_BYTE_168_SQ_VLAN_EN_S, align 4
  %112 = call i32 @roce_set_bit(i32 %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %92, %88
  %114 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %115 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @V2_QPC_BYTE_24_VLAN_ID_M, align 4
  %118 = load i32, i32* @V2_QPC_BYTE_24_VLAN_ID_S, align 4
  %119 = load i64, i64* %18, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @roce_set_field(i32 %116, i32 %117, i32 %118, i32 %120)
  %122 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %123 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @V2_QPC_BYTE_24_VLAN_ID_M, align 4
  %126 = load i32, i32* @V2_QPC_BYTE_24_VLAN_ID_S, align 4
  %127 = call i32 @roce_set_field(i32 %124, i32 %125, i32 %126, i32 0)
  %128 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %129 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %13, align 8
  %132 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %20, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp sge i32 %130, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %113
  %140 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %13, align 8
  %141 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %144 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %13, align 8
  %147 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %20, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %145, i32 %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %6, align 4
  br label %301

156:                                              ; preds = %113
  %157 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %158 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @RDMA_AH_ATTR_TYPE_ROCE, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %13, align 8
  %165 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32, i8*, ...) @dev_err(i32 %166, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %6, align 4
  br label %301

170:                                              ; preds = %156
  %171 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %172 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @V2_QPC_BYTE_52_UDPSPN_M, align 4
  %175 = load i32, i32* @V2_QPC_BYTE_52_UDPSPN_S, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 4791, i32 0
  %180 = call i32 @roce_set_field(i32 %173, i32 %174, i32 %175, i32 %179)
  %181 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %182 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @V2_QPC_BYTE_52_UDPSPN_M, align 4
  %185 = load i32, i32* @V2_QPC_BYTE_52_UDPSPN_S, align 4
  %186 = call i32 @roce_set_field(i32 %183, i32 %184, i32 %185, i32 0)
  %187 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %188 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @V2_QPC_BYTE_20_SGID_IDX_M, align 4
  %191 = load i32, i32* @V2_QPC_BYTE_20_SGID_IDX_S, align 4
  %192 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %193 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @roce_set_field(i32 %189, i32 %190, i32 %191, i32 %194)
  %196 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %197 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @V2_QPC_BYTE_20_SGID_IDX_M, align 4
  %200 = load i32, i32* @V2_QPC_BYTE_20_SGID_IDX_S, align 4
  %201 = call i32 @roce_set_field(i32 %198, i32 %199, i32 %200, i32 0)
  %202 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %203 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @V2_QPC_BYTE_24_HOP_LIMIT_M, align 4
  %206 = load i32, i32* @V2_QPC_BYTE_24_HOP_LIMIT_S, align 4
  %207 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %208 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @roce_set_field(i32 %204, i32 %205, i32 %206, i32 %209)
  %211 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %212 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @V2_QPC_BYTE_24_HOP_LIMIT_M, align 4
  %215 = load i32, i32* @V2_QPC_BYTE_24_HOP_LIMIT_S, align 4
  %216 = call i32 @roce_set_field(i32 %213, i32 %214, i32 %215, i32 0)
  %217 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %13, align 8
  %218 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %217, i32 0, i32 0
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 33
  br i1 %222, label %223, label %237

223:                                              ; preds = %170
  %224 = load i32, i32* %17, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %223
  %227 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %228 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @V2_QPC_BYTE_24_TC_M, align 4
  %231 = load i32, i32* @V2_QPC_BYTE_24_TC_S, align 4
  %232 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %233 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = ashr i32 %234, 2
  %236 = call i32 @roce_set_field(i32 %229, i32 %230, i32 %231, i32 %235)
  br label %247

237:                                              ; preds = %223, %170
  %238 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %239 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @V2_QPC_BYTE_24_TC_M, align 4
  %242 = load i32, i32* @V2_QPC_BYTE_24_TC_S, align 4
  %243 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %244 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @roce_set_field(i32 %240, i32 %241, i32 %242, i32 %245)
  br label %247

247:                                              ; preds = %237, %226
  %248 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %249 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @V2_QPC_BYTE_24_TC_M, align 4
  %252 = load i32, i32* @V2_QPC_BYTE_24_TC_S, align 4
  %253 = call i32 @roce_set_field(i32 %250, i32 %251, i32 %252, i32 0)
  %254 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %255 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @V2_QPC_BYTE_28_FL_M, align 4
  %258 = load i32, i32* @V2_QPC_BYTE_28_FL_S, align 4
  %259 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %260 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @roce_set_field(i32 %256, i32 %257, i32 %258, i32 %261)
  %263 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %264 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @V2_QPC_BYTE_28_FL_M, align 4
  %267 = load i32, i32* @V2_QPC_BYTE_28_FL_S, align 4
  %268 = call i32 @roce_set_field(i32 %265, i32 %266, i32 %267, i32 0)
  %269 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %270 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.ib_global_route*, %struct.ib_global_route** %12, align 8
  %273 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %272, i32 0, i32 4
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @memcpy(i32 %271, i32 %275, i32 4)
  %277 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %278 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @memset(i32 %279, i32 0, i32 4)
  %281 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %282 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @V2_QPC_BYTE_28_SL_M, align 4
  %285 = load i32, i32* @V2_QPC_BYTE_28_SL_S, align 4
  %286 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %287 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %286, i32 0, i32 1
  %288 = call i32 @rdma_ah_get_sl(%struct.TYPE_12__* %287)
  %289 = call i32 @roce_set_field(i32 %283, i32 %284, i32 %285, i32 %288)
  %290 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %291 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @V2_QPC_BYTE_28_SL_M, align 4
  %294 = load i32, i32* @V2_QPC_BYTE_28_SL_S, align 4
  %295 = call i32 @roce_set_field(i32 %292, i32 %293, i32 %294, i32 0)
  %296 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %297 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %296, i32 0, i32 1
  %298 = call i32 @rdma_ah_get_sl(%struct.TYPE_12__* %297)
  %299 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %14, align 8
  %300 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 8
  store i32 0, i32* %6, align 4
  br label %301

301:                                              ; preds = %247, %163, %139, %75
  %302 = load i32, i32* %6, align 4
  ret i32 %302
}

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.TYPE_12__*) #1

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i64 @rdma_cap_eth_ah(i32*, i64) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.TYPE_12__*) #1

declare dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr*, i64*, i32*) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rdma_ah_get_sl(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
