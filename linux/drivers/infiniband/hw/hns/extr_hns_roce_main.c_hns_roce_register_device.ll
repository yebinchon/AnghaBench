; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, %struct.hns_roce_ib_iboe, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.ib_device, %struct.device* }
%struct.hns_roce_ib_iboe = type { %struct.TYPE_8__, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.ib_device = type { i32, i64, i64, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }

@RDMA_NODE_IB_CA = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_GET_CONTEXT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_DEVICE = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_PORT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEREG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_MODIFY_CQ = common dso_local global i64 0, align 8
@HNS_ROCE_CAP_FLAG_REREG_MR = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_REREG_MR = common dso_local global i64 0, align 8
@hns_roce_dev_mr_ops = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_MW = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_ALLOC_MW = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEALLOC_MW = common dso_local global i64 0, align 8
@hns_roce_dev_mw_ops = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_FRMR = common dso_local global i32 0, align 4
@hns_roce_dev_frmr_ops = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_SRQ = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_CREATE_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_POST_SRQ_RECV = common dso_local global i64 0, align 8
@hns_roce_dev_srq_ops = common dso_local global i32 0, align 4
@hns_roce_dev_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"hns_%d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ib_register_device failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"setup_mtu_mac failed!\0A\00", align 1
@hns_roce_netdev_event = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"register_netdevice_notifier failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_register_device(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_ib_iboe*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_ib_iboe* null, %struct.hns_roce_ib_iboe** %5, align 8
  store %struct.ib_device* null, %struct.ib_device** %6, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 5
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 1
  store %struct.hns_roce_ib_iboe* %13, %struct.hns_roce_ib_iboe** %5, align 8
  %14 = load %struct.hns_roce_ib_iboe*, %struct.hns_roce_ib_iboe** %5, align 8
  %15 = getelementptr inbounds %struct.hns_roce_ib_iboe, %struct.hns_roce_ib_iboe* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 4
  store %struct.ib_device* %18, %struct.ib_device** %6, align 8
  %19 = load i32, i32* @RDMA_NODE_IB_CA, align 4
  %20 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %21 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %24 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.device* %22, %struct.device** %25, align 8
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %37 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %43 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* @IB_USER_VERBS_CMD_GET_CONTEXT, align 8
  %45 = shl i64 1, %44
  %46 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_DEVICE, align 8
  %47 = shl i64 1, %46
  %48 = or i64 %45, %47
  %49 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_PORT, align 8
  %50 = shl i64 1, %49
  %51 = or i64 %48, %50
  %52 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_PD, align 8
  %53 = shl i64 1, %52
  %54 = or i64 %51, %53
  %55 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_PD, align 8
  %56 = shl i64 1, %55
  %57 = or i64 %54, %56
  %58 = load i64, i64* @IB_USER_VERBS_CMD_REG_MR, align 8
  %59 = shl i64 1, %58
  %60 = or i64 %57, %59
  %61 = load i64, i64* @IB_USER_VERBS_CMD_DEREG_MR, align 8
  %62 = shl i64 1, %61
  %63 = or i64 %60, %62
  %64 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL, align 8
  %65 = shl i64 1, %64
  %66 = or i64 %63, %65
  %67 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_CQ, align 8
  %68 = shl i64 1, %67
  %69 = or i64 %66, %68
  %70 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_CQ, align 8
  %71 = shl i64 1, %70
  %72 = or i64 %69, %71
  %73 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_QP, align 8
  %74 = shl i64 1, %73
  %75 = or i64 %72, %74
  %76 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_QP, align 8
  %77 = shl i64 1, %76
  %78 = or i64 %75, %77
  %79 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_QP, align 8
  %80 = shl i64 1, %79
  %81 = or i64 %78, %80
  %82 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_QP, align 8
  %83 = shl i64 1, %82
  %84 = or i64 %81, %83
  %85 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %86 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* @IB_USER_VERBS_EX_CMD_MODIFY_CQ, align 8
  %88 = shl i64 1, %87
  %89 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %90 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = or i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %94 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @HNS_ROCE_CAP_FLAG_REREG_MR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %1
  %101 = load i64, i64* @IB_USER_VERBS_CMD_REREG_MR, align 8
  %102 = shl i64 1, %101
  %103 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %104 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = or i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %108 = call i32 @ib_set_device_ops(%struct.ib_device* %107, i32* @hns_roce_dev_mr_ops)
  br label %109

109:                                              ; preds = %100, %1
  %110 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %111 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @HNS_ROCE_CAP_FLAG_MW, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %109
  %118 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_MW, align 8
  %119 = shl i64 1, %118
  %120 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_MW, align 8
  %121 = shl i64 1, %120
  %122 = or i64 %119, %121
  %123 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %124 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = or i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %128 = call i32 @ib_set_device_ops(%struct.ib_device* %127, i32* @hns_roce_dev_mw_ops)
  br label %129

129:                                              ; preds = %117, %109
  %130 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %131 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @HNS_ROCE_CAP_FLAG_FRMR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %139 = call i32 @ib_set_device_ops(%struct.ib_device* %138, i32* @hns_roce_dev_frmr_ops)
  br label %140

140:                                              ; preds = %137, %129
  %141 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %142 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @HNS_ROCE_CAP_FLAG_SRQ, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %176

148:                                              ; preds = %140
  %149 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_SRQ, align 8
  %150 = shl i64 1, %149
  %151 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_SRQ, align 8
  %152 = shl i64 1, %151
  %153 = or i64 %150, %152
  %154 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_SRQ, align 8
  %155 = shl i64 1, %154
  %156 = or i64 %153, %155
  %157 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_SRQ, align 8
  %158 = shl i64 1, %157
  %159 = or i64 %156, %158
  %160 = load i64, i64* @IB_USER_VERBS_CMD_POST_SRQ_RECV, align 8
  %161 = shl i64 1, %160
  %162 = or i64 %159, %161
  %163 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %164 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = or i64 %165, %162
  store i64 %166, i64* %164, align 8
  %167 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %168 = call i32 @ib_set_device_ops(%struct.ib_device* %167, i32* @hns_roce_dev_srq_ops)
  %169 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %170 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %171 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %170, i32 0, i32 3
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @ib_set_device_ops(%struct.ib_device* %169, i32* %174)
  br label %176

176:                                              ; preds = %148, %140
  %177 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %178 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %179 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %178, i32 0, i32 3
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @ib_set_device_ops(%struct.ib_device* %177, i32* %182)
  %184 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %185 = call i32 @ib_set_device_ops(%struct.ib_device* %184, i32* @hns_roce_dev_ops)
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %222, %176
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %189 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ult i32 %187, %191
  br i1 %192, label %193, label %225

193:                                              ; preds = %186
  %194 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %195 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.hns_roce_ib_iboe, %struct.hns_roce_ib_iboe* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %193
  br label %222

204:                                              ; preds = %193
  %205 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %206 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %207 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.hns_roce_ib_iboe, %struct.hns_roce_ib_iboe* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %8, align 4
  %215 = add i32 %214, 1
  %216 = call i32 @ib_device_set_netdev(%struct.ib_device* %205, i32 %213, i32 %215)
  store i32 %216, i32* %4, align 4
  %217 = load i32, i32* %4, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %204
  %220 = load i32, i32* %4, align 4
  store i32 %220, i32* %2, align 4
  br label %262

221:                                              ; preds = %204
  br label %222

222:                                              ; preds = %221, %203
  %223 = load i32, i32* %8, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %186

225:                                              ; preds = %186
  %226 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %227 = call i32 @ib_register_device(%struct.ib_device* %226, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* %4, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load %struct.device*, %struct.device** %7, align 8
  %232 = call i32 @dev_err(%struct.device* %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %233 = load i32, i32* %4, align 4
  store i32 %233, i32* %2, align 4
  br label %262

234:                                              ; preds = %225
  %235 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %236 = call i32 @hns_roce_setup_mtu_mac(%struct.hns_roce_dev* %235)
  store i32 %236, i32* %4, align 4
  %237 = load i32, i32* %4, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load %struct.device*, %struct.device** %7, align 8
  %241 = call i32 @dev_err(%struct.device* %240, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %258

242:                                              ; preds = %234
  %243 = load i32, i32* @hns_roce_netdev_event, align 4
  %244 = load %struct.hns_roce_ib_iboe*, %struct.hns_roce_ib_iboe** %5, align 8
  %245 = getelementptr inbounds %struct.hns_roce_ib_iboe, %struct.hns_roce_ib_iboe* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  store i32 %243, i32* %246, align 8
  %247 = load %struct.hns_roce_ib_iboe*, %struct.hns_roce_ib_iboe** %5, align 8
  %248 = getelementptr inbounds %struct.hns_roce_ib_iboe, %struct.hns_roce_ib_iboe* %247, i32 0, i32 0
  %249 = call i32 @register_netdevice_notifier(%struct.TYPE_8__* %248)
  store i32 %249, i32* %4, align 4
  %250 = load i32, i32* %4, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %242
  %253 = load %struct.device*, %struct.device** %7, align 8
  %254 = call i32 @dev_err(%struct.device* %253, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %258

255:                                              ; preds = %242
  %256 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %257 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %256, i32 0, i32 0
  store i32 1, i32* %257, align 8
  store i32 0, i32* %2, align 4
  br label %262

258:                                              ; preds = %252, %239
  %259 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %260 = call i32 @ib_unregister_device(%struct.ib_device* %259)
  %261 = load i32, i32* %4, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %258, %255, %230, %219
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ib_set_device_ops(%struct.ib_device*, i32*) #1

declare dso_local i32 @ib_device_set_netdev(%struct.ib_device*, i32, i32) #1

declare dso_local i32 @ib_register_device(%struct.ib_device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_setup_mtu_mac(%struct.hns_roce_dev*) #1

declare dso_local i32 @register_netdevice_notifier(%struct.TYPE_8__*) #1

declare dso_local i32 @ib_unregister_device(%struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
