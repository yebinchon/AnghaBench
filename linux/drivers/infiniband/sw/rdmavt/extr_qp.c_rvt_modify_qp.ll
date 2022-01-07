; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.ib_qp_attr = type { i32, i32, i64, i64, i32, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.rvt_dev_info = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 (%struct.rvt_dev_info.0*, %struct.rvt_qp*, %struct.ib_qp_attr.1*)*, i32 (%struct.rvt_qp*, %struct.ib_qp_attr.2*, i32, %struct.ib_udata.3*)*, i32 (%struct.rvt_dev_info.4*, %struct.rvt_qp*, i32)*, i64 (%struct.rvt_qp*, %struct.ib_qp_attr.5*, i32, %struct.ib_udata.6*)* }
%struct.rvt_dev_info.0 = type opaque
%struct.rvt_qp = type { i32, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.ib_qp_attr.1 = type opaque
%struct.ib_qp_attr.2 = type opaque
%struct.ib_udata.3 = type opaque
%struct.rvt_dev_info.4 = type opaque
%struct.ib_qp_attr.5 = type opaque
%struct.ib_udata.6 = type opaque
%struct.TYPE_7__ = type { i64, i32 }
%struct.ib_event.7 = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@OPA_MCAST_NR = common dso_local global i32 0, align 4
@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@IB_QP_ALT_PATH = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QP_DEST_QPN = common dso_local global i32 0, align 4
@RVT_QPN_MASK = common dso_local global i64 0, align 8
@IB_QP_RETRY_CNT = common dso_local global i32 0, align 4
@IB_QP_RNR_RETRY = common dso_local global i32 0, align 4
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@IB_QP_PATH_MIG_STATE = common dso_local global i32 0, align 4
@IB_MIG_REARM = common dso_local global i64 0, align 8
@IB_MIG_ARMED = common dso_local global i64 0, align 8
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_MIG_MIGRATED = common dso_local global i64 0, align 8
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@RVT_R_COMM_EST = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@IB_QP_RQ_PSN = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.rvt_dev_info*, align 8
  %11 = alloca %struct.rvt_qp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_event.7, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %19 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %20 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = call %struct.rvt_dev_info* @ib_to_rvt(%struct.TYPE_11__* %21)
  store %struct.rvt_dev_info* %22, %struct.rvt_dev_info** %10, align 8
  %23 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %24 = call %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp* %23)
  store %struct.rvt_qp* %24, %struct.rvt_qp** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %26 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %25, i32 0, i32 19
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %29 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %28, i32 0, i32 20
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %32 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %31, i32 0, i32 21
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %40 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  br label %46

42:                                               ; preds = %4
  %43 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %44 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @IB_QP_STATE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %54 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  br label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %12, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %55, %52 ], [ %57, %56 ]
  store i32 %59, i32* %13, align 4
  %60 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %61 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %64 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @rdma_cap_opa_ah(%struct.TYPE_11__* %62, i64 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %70 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ib_modify_qp_is_ok(i32 %67, i32 %68, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %58
  br label %798

76:                                               ; preds = %58
  %77 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %78 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load i64 (%struct.rvt_qp*, %struct.ib_qp_attr.5*, i32, %struct.ib_udata.6*)*, i64 (%struct.rvt_qp*, %struct.ib_qp_attr.5*, i32, %struct.ib_udata.6*)** %79, align 8
  %81 = icmp ne i64 (%struct.rvt_qp*, %struct.ib_qp_attr.5*, i32, %struct.ib_udata.6*)* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %84 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load i64 (%struct.rvt_qp*, %struct.ib_qp_attr.5*, i32, %struct.ib_udata.6*)*, i64 (%struct.rvt_qp*, %struct.ib_qp_attr.5*, i32, %struct.ib_udata.6*)** %85, align 8
  %87 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %88 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %89 = bitcast %struct.ib_qp_attr* %88 to %struct.ib_qp_attr.5*
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %92 = bitcast %struct.ib_udata* %91 to %struct.ib_udata.6*
  %93 = call i64 %86(%struct.rvt_qp* %87, %struct.ib_qp_attr.5* %89, i32 %90, %struct.ib_udata.6* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %798

96:                                               ; preds = %82, %76
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @IB_QP_AV, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %133

101:                                              ; preds = %96
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %106 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %105, i32 0, i32 17
  %107 = call i64 @rdma_ah_get_dlid(i32* %106)
  %108 = load i32, i32* @OPA_MCAST_NR, align 4
  %109 = call i64 @opa_get_mcast_base(i32 %108)
  %110 = icmp sge i64 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %798

112:                                              ; preds = %104
  br label %122

113:                                              ; preds = %101
  %114 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %115 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %114, i32 0, i32 17
  %116 = call i64 @rdma_ah_get_dlid(i32* %115)
  %117 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %118 = call i64 @be16_to_cpu(i32 %117)
  %119 = icmp sge i64 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %798

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %112
  %123 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %124 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %123, i32 0, i32 22
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %128 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %127, i32 0, i32 17
  %129 = call i64 @rvt_check_ah(i32 %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %798

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %96
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %178

138:                                              ; preds = %133
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %143 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %142, i32 0, i32 16
  %144 = call i64 @rdma_ah_get_dlid(i32* %143)
  %145 = load i32, i32* @OPA_MCAST_NR, align 4
  %146 = call i64 @opa_get_mcast_base(i32 %145)
  %147 = icmp sge i64 %144, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %798

149:                                              ; preds = %141
  br label %159

150:                                              ; preds = %138
  %151 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %152 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %151, i32 0, i32 16
  %153 = call i64 @rdma_ah_get_dlid(i32* %152)
  %154 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %155 = call i64 @be16_to_cpu(i32 %154)
  %156 = icmp sge i64 %153, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %798

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %149
  %160 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %161 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %160, i32 0, i32 22
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %165 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %164, i32 0, i32 16
  %166 = call i64 @rvt_check_ah(i32 %163, i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  br label %798

169:                                              ; preds = %159
  %170 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %171 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %174 = call i64 @rvt_get_npkeys(%struct.rvt_dev_info* %173)
  %175 = icmp sge i64 %172, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %798

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %133
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %185 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %188 = call i64 @rvt_get_npkeys(%struct.rvt_dev_info* %187)
  %189 = icmp sge i64 %186, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %798

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %178
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %199 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = icmp sgt i32 %200, 31
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %798

203:                                              ; preds = %197
  br label %204

204:                                              ; preds = %203, %192
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @IB_QP_PORT, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %240

209:                                              ; preds = %204
  %210 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %211 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %210, i32 0, i32 22
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @IB_QPT_SMI, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %238, label %216

216:                                              ; preds = %209
  %217 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %218 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %217, i32 0, i32 22
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @IB_QPT_GSI, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %238, label %223

223:                                              ; preds = %216
  %224 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %225 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %223
  %229 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %230 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %233 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %232, i32 0, i32 1
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp sgt i64 %231, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %228, %223, %216, %209
  br label %798

239:                                              ; preds = %228
  br label %240

240:                                              ; preds = %239, %204
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %247 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @RVT_QPN_MASK, align 8
  %250 = icmp sgt i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  br label %798

252:                                              ; preds = %245
  br label %253

253:                                              ; preds = %252, %240
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %253
  %259 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %260 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = icmp sgt i32 %261, 7
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  br label %798

264:                                              ; preds = %258
  br label %265

265:                                              ; preds = %264, %253
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %265
  %271 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %272 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 4
  %274 = icmp sgt i32 %273, 7
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %798

276:                                              ; preds = %270
  br label %277

277:                                              ; preds = %276, %265
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %297

282:                                              ; preds = %277
  %283 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %284 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  %286 = load i32 (%struct.rvt_dev_info.0*, %struct.rvt_qp*, %struct.ib_qp_attr.1*)*, i32 (%struct.rvt_dev_info.0*, %struct.rvt_qp*, %struct.ib_qp_attr.1*)** %285, align 8
  %287 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %288 = bitcast %struct.rvt_dev_info* %287 to %struct.rvt_dev_info.0*
  %289 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %290 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %291 = bitcast %struct.ib_qp_attr* %290 to %struct.ib_qp_attr.1*
  %292 = call i32 %286(%struct.rvt_dev_info.0* %288, %struct.rvt_qp* %289, %struct.ib_qp_attr.1* %291)
  store i32 %292, i32* %17, align 4
  %293 = load i32, i32* %17, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %282
  br label %798

296:                                              ; preds = %282
  br label %297

297:                                              ; preds = %296, %277
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* @IB_QP_PATH_MIG_STATE, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %353

302:                                              ; preds = %297
  %303 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %304 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %303, i32 0, i32 9
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @IB_MIG_REARM, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %321

308:                                              ; preds = %302
  %309 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %310 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @IB_MIG_ARMED, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %308
  br label %798

315:                                              ; preds = %308
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* @IB_QPS_RTS, align 4
  %318 = icmp ne i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  br label %798

320:                                              ; preds = %315
  br label %352

321:                                              ; preds = %302
  %322 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %323 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %322, i32 0, i32 9
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @IB_MIG_MIGRATED, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %350

327:                                              ; preds = %321
  %328 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %329 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @IB_MIG_REARM, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %327
  br label %798

334:                                              ; preds = %327
  %335 = load i32, i32* %13, align 4
  %336 = load i32, i32* @IB_QPS_RTS, align 4
  %337 = icmp ne i32 %335, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %334
  %339 = load i32, i32* %13, align 4
  %340 = icmp ne i32 %339, 129
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  br label %798

342:                                              ; preds = %338, %334
  %343 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %344 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @IB_MIG_ARMED, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  store i32 1, i32* %16, align 4
  br label %349

349:                                              ; preds = %348, %342
  br label %351

350:                                              ; preds = %321
  br label %798

351:                                              ; preds = %349
  br label %352

352:                                              ; preds = %351, %320
  br label %353

353:                                              ; preds = %352, %297
  %354 = load i32, i32* %8, align 4
  %355 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %369

358:                                              ; preds = %353
  %359 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %360 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %359, i32 0, i32 10
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %363 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp sgt i64 %361, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %358
  br label %798

368:                                              ; preds = %358
  br label %369

369:                                              ; preds = %368, %353
  %370 = load i32, i32* %13, align 4
  switch i32 %370, label %424 [
    i32 131, label %371
    i32 130, label %384
    i32 129, label %394
    i32 128, label %408
    i32 132, label %420
  ]

371:                                              ; preds = %369
  %372 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %373 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp ne i32 %374, 131
  br i1 %375, label %376, label %383

376:                                              ; preds = %371
  %377 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %378 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %379 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %380 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @rvt_reset_qp(%struct.rvt_dev_info* %377, %struct.rvt_qp* %378, i32 %381)
  br label %383

383:                                              ; preds = %376, %371
  br label %428

384:                                              ; preds = %369
  %385 = load i32, i32* @RVT_R_COMM_EST, align 4
  %386 = xor i32 %385, -1
  %387 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %388 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %387, i32 0, i32 36
  %389 = load i32, i32* %388, align 4
  %390 = and i32 %389, %386
  store i32 %390, i32* %388, align 4
  %391 = load i32, i32* %13, align 4
  %392 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %393 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %392, i32 0, i32 0
  store i32 %391, i32* %393, align 8
  br label %428

394:                                              ; preds = %369
  %395 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %396 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %395, i32 0, i32 35
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %399 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %398, i32 0, i32 34
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %397, %400
  %402 = zext i1 %401 to i32
  %403 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %404 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %403, i32 0, i32 3
  store i32 %402, i32* %404, align 8
  %405 = load i32, i32* %13, align 4
  %406 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %407 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %406, i32 0, i32 0
  store i32 %405, i32* %407, align 8
  br label %428

408:                                              ; preds = %369
  %409 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %410 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %409, i32 0, i32 22
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @IB_QPT_RC, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %408
  br label %798

416:                                              ; preds = %408
  %417 = load i32, i32* %13, align 4
  %418 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %419 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %418, i32 0, i32 0
  store i32 %417, i32* %419, align 8
  br label %428

420:                                              ; preds = %369
  %421 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %422 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %423 = call i32 @rvt_error_qp(%struct.rvt_qp* %421, i32 %422)
  store i32 %423, i32* %15, align 4
  br label %428

424:                                              ; preds = %369
  %425 = load i32, i32* %13, align 4
  %426 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %427 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %426, i32 0, i32 0
  store i32 %425, i32* %427, align 8
  br label %428

428:                                              ; preds = %424, %420, %416, %394, %384, %383
  %429 = load i32, i32* %8, align 4
  %430 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %439

433:                                              ; preds = %428
  %434 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %435 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %434, i32 0, i32 3
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %438 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %437, i32 0, i32 4
  store i64 %436, i64* %438, align 8
  br label %439

439:                                              ; preds = %433, %428
  %440 = load i32, i32* %8, align 4
  %441 = load i32, i32* @IB_QP_PORT, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %450

444:                                              ; preds = %439
  %445 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %446 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %445, i32 0, i32 5
  %447 = load i64, i64* %446, align 8
  %448 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %449 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %448, i32 0, i32 1
  store i64 %447, i64* %449, align 8
  br label %450

450:                                              ; preds = %444, %439
  %451 = load i32, i32* %8, align 4
  %452 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %461

455:                                              ; preds = %450
  %456 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %457 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %456, i32 0, i32 6
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %460 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %459, i32 0, i32 5
  store i64 %458, i64* %460, align 8
  br label %461

461:                                              ; preds = %455, %450
  %462 = load i32, i32* %8, align 4
  %463 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %498

466:                                              ; preds = %461
  %467 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %468 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %467, i32 0, i32 11
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %471 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 8
  %474 = and i32 %469, %473
  %475 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %476 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %475, i32 0, i32 6
  store i32 %474, i32* %476, align 8
  %477 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %478 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %477, i32 0, i32 6
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %481 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %480, i32 0, i32 7
  store i32 %479, i32* %481, align 4
  %482 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %483 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %482, i32 0, i32 6
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %486 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %485, i32 0, i32 8
  store i32 %484, i32* %486, align 8
  %487 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %488 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %487, i32 0, i32 6
  %489 = load i32, i32* %488, align 8
  %490 = sub nsw i32 %489, 1
  %491 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %492 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %491, i32 0, i32 9
  store i32 %490, i32* %492, align 4
  %493 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %494 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %493, i32 0, i32 9
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %497 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %496, i32 0, i32 10
  store i32 %495, i32* %497, align 8
  br label %498

498:                                              ; preds = %466, %461
  %499 = load i32, i32* %8, align 4
  %500 = load i32, i32* @IB_QP_RQ_PSN, align 4
  %501 = and i32 %499, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %514

503:                                              ; preds = %498
  %504 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %505 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %504, i32 0, i32 12
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %508 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = and i32 %506, %510
  %512 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %513 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %512, i32 0, i32 11
  store i32 %511, i32* %513, align 4
  br label %514

514:                                              ; preds = %503, %498
  %515 = load i32, i32* %8, align 4
  %516 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %517 = and i32 %515, %516
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %525

519:                                              ; preds = %514
  %520 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %521 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %520, i32 0, i32 18
  %522 = load i32, i32* %521, align 4
  %523 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %524 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %523, i32 0, i32 33
  store i32 %522, i32* %524, align 8
  br label %525

525:                                              ; preds = %519, %514
  %526 = load i32, i32* %8, align 4
  %527 = load i32, i32* @IB_QP_AV, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %547

530:                                              ; preds = %525
  %531 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %532 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %531, i32 0, i32 30
  %533 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %534 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %533, i32 0, i32 17
  %535 = call i32 @rdma_replace_ah_attr(i32* %532, i32* %534)
  %536 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %537 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %536, i32 0, i32 17
  %538 = call i32 @rdma_ah_get_static_rate(i32* %537)
  %539 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %540 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %539, i32 0, i32 31
  store i32 %538, i32* %540, align 8
  %541 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %542 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %541, i32 0, i32 31
  %543 = load i32, i32* %542, align 8
  %544 = call i32 @ib_rate_to_mbps(i32 %543)
  %545 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %546 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %545, i32 0, i32 32
  store i32 %544, i32* %546, align 4
  br label %547

547:                                              ; preds = %530, %525
  %548 = load i32, i32* %8, align 4
  %549 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %563

552:                                              ; preds = %547
  %553 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %554 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %553, i32 0, i32 29
  %555 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %556 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %555, i32 0, i32 16
  %557 = call i32 @rdma_replace_ah_attr(i32* %554, i32* %556)
  %558 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %559 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %558, i32 0, i32 2
  %560 = load i64, i64* %559, align 8
  %561 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %562 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %561, i32 0, i32 12
  store i64 %560, i64* %562, align 8
  br label %563

563:                                              ; preds = %552, %547
  %564 = load i32, i32* %8, align 4
  %565 = load i32, i32* @IB_QP_PATH_MIG_STATE, align 4
  %566 = and i32 %564, %565
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %593

568:                                              ; preds = %563
  %569 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %570 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %569, i32 0, i32 9
  %571 = load i64, i64* %570, align 8
  %572 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %573 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %572, i32 0, i32 2
  store i64 %571, i64* %573, align 8
  %574 = load i32, i32* %16, align 4
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %592

576:                                              ; preds = %568
  %577 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %578 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %577, i32 0, i32 29
  %579 = load i32, i32* %578, align 8
  %580 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %581 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %580, i32 0, i32 30
  store i32 %579, i32* %581, align 4
  %582 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %583 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %582, i32 0, i32 29
  %584 = call i64 @rdma_ah_get_port_num(i32* %583)
  %585 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %586 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %585, i32 0, i32 1
  store i64 %584, i64* %586, align 8
  %587 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %588 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %587, i32 0, i32 12
  %589 = load i64, i64* %588, align 8
  %590 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %591 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %590, i32 0, i32 4
  store i64 %589, i64* %591, align 8
  br label %592

592:                                              ; preds = %576, %568
  br label %593

593:                                              ; preds = %592, %563
  %594 = load i32, i32* %8, align 4
  %595 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %596 = and i32 %594, %595
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %616

598:                                              ; preds = %593
  %599 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %600 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %600, i32 0, i32 2
  %602 = load i32 (%struct.rvt_dev_info.4*, %struct.rvt_qp*, i32)*, i32 (%struct.rvt_dev_info.4*, %struct.rvt_qp*, i32)** %601, align 8
  %603 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %604 = bitcast %struct.rvt_dev_info* %603 to %struct.rvt_dev_info.4*
  %605 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %606 = load i32, i32* %17, align 4
  %607 = call i32 %602(%struct.rvt_dev_info.4* %604, %struct.rvt_qp* %605, i32 %606)
  %608 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %609 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %608, i32 0, i32 27
  store i32 %607, i32* %609, align 8
  %610 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %611 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %610, i32 0, i32 27
  %612 = load i32, i32* %611, align 8
  %613 = call i32 @ilog2(i32 %612)
  %614 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %615 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %614, i32 0, i32 28
  store i32 %613, i32* %615, align 4
  br label %616

616:                                              ; preds = %598, %593
  %617 = load i32, i32* %8, align 4
  %618 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %619 = and i32 %617, %618
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %632

621:                                              ; preds = %616
  %622 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %623 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %622, i32 0, i32 7
  %624 = load i32, i32* %623, align 8
  %625 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %626 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %625, i32 0, i32 13
  store i32 %624, i32* %626, align 8
  %627 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %628 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %627, i32 0, i32 7
  %629 = load i32, i32* %628, align 8
  %630 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %631 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %630, i32 0, i32 14
  store i32 %629, i32* %631, align 4
  br label %632

632:                                              ; preds = %621, %616
  %633 = load i32, i32* %8, align 4
  %634 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %635 = and i32 %633, %634
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %648

637:                                              ; preds = %632
  %638 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %639 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %638, i32 0, i32 8
  %640 = load i32, i32* %639, align 4
  %641 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %642 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %641, i32 0, i32 15
  store i32 %640, i32* %642, align 8
  %643 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %644 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %643, i32 0, i32 8
  %645 = load i32, i32* %644, align 4
  %646 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %647 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %646, i32 0, i32 16
  store i32 %645, i32* %647, align 4
  br label %648

648:                                              ; preds = %637, %632
  %649 = load i32, i32* %8, align 4
  %650 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %651 = and i32 %649, %650
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %659

653:                                              ; preds = %648
  %654 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %655 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %654, i32 0, i32 4
  %656 = load i32, i32* %655, align 8
  %657 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %658 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %657, i32 0, i32 17
  store i32 %656, i32* %658, align 8
  br label %659

659:                                              ; preds = %653, %648
  %660 = load i32, i32* %8, align 4
  %661 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %662 = and i32 %660, %661
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %676

664:                                              ; preds = %659
  %665 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %666 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %665, i32 0, i32 15
  %667 = load i32, i32* %666, align 8
  %668 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %669 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %668, i32 0, i32 25
  store i32 %667, i32* %669, align 8
  %670 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %671 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %670, i32 0, i32 25
  %672 = load i32, i32* %671, align 8
  %673 = call i32 @rvt_timeout_to_jiffies(i32 %672)
  %674 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %675 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %674, i32 0, i32 26
  store i32 %673, i32* %675, align 4
  br label %676

676:                                              ; preds = %664, %659
  %677 = load i32, i32* %8, align 4
  %678 = load i32, i32* @IB_QP_QKEY, align 4
  %679 = and i32 %677, %678
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %687

681:                                              ; preds = %676
  %682 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %683 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %682, i32 0, i32 14
  %684 = load i32, i32* %683, align 4
  %685 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %686 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %685, i32 0, i32 24
  store i32 %684, i32* %686, align 4
  br label %687

687:                                              ; preds = %681, %676
  %688 = load i32, i32* %8, align 4
  %689 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %690 = and i32 %688, %689
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %698

692:                                              ; preds = %687
  %693 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %694 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %693, i32 0, i32 10
  %695 = load i64, i64* %694, align 8
  %696 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %697 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %696, i32 0, i32 18
  store i64 %695, i64* %697, align 8
  br label %698

698:                                              ; preds = %692, %687
  %699 = load i32, i32* %8, align 4
  %700 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %701 = and i32 %699, %700
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %709

703:                                              ; preds = %698
  %704 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %705 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %704, i32 0, i32 13
  %706 = load i32, i32* %705, align 8
  %707 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %708 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %707, i32 0, i32 23
  store i32 %706, i32* %708, align 8
  br label %709

709:                                              ; preds = %703, %698
  %710 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %711 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %710, i32 0, i32 0
  %712 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %711, i32 0, i32 1
  %713 = load i32 (%struct.rvt_qp*, %struct.ib_qp_attr.2*, i32, %struct.ib_udata.3*)*, i32 (%struct.rvt_qp*, %struct.ib_qp_attr.2*, i32, %struct.ib_udata.3*)** %712, align 8
  %714 = icmp ne i32 (%struct.rvt_qp*, %struct.ib_qp_attr.2*, i32, %struct.ib_udata.3*)* %713, null
  br i1 %714, label %715, label %727

715:                                              ; preds = %709
  %716 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %717 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %716, i32 0, i32 0
  %718 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %717, i32 0, i32 1
  %719 = load i32 (%struct.rvt_qp*, %struct.ib_qp_attr.2*, i32, %struct.ib_udata.3*)*, i32 (%struct.rvt_qp*, %struct.ib_qp_attr.2*, i32, %struct.ib_udata.3*)** %718, align 8
  %720 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %721 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %722 = bitcast %struct.ib_qp_attr* %721 to %struct.ib_qp_attr.2*
  %723 = load i32, i32* %8, align 4
  %724 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %725 = bitcast %struct.ib_udata* %724 to %struct.ib_udata.3*
  %726 = call i32 %719(%struct.rvt_qp* %720, %struct.ib_qp_attr.2* %722, i32 %723, %struct.ib_udata.3* %725)
  br label %727

727:                                              ; preds = %715, %709
  %728 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %729 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %728, i32 0, i32 21
  %730 = call i32 @spin_unlock(i32* %729)
  %731 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %732 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %731, i32 0, i32 20
  %733 = call i32 @spin_unlock(i32* %732)
  %734 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %735 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %734, i32 0, i32 19
  %736 = call i32 @spin_unlock_irq(i32* %735)
  %737 = load i32, i32* %12, align 4
  %738 = icmp eq i32 %737, 131
  br i1 %738, label %739, label %747

739:                                              ; preds = %727
  %740 = load i32, i32* %13, align 4
  %741 = load i32, i32* @IB_QPS_INIT, align 4
  %742 = icmp eq i32 %740, %741
  br i1 %742, label %743, label %747

743:                                              ; preds = %739
  %744 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %10, align 8
  %745 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %746 = call i32 @rvt_insert_qp(%struct.rvt_dev_info* %744, %struct.rvt_qp* %745)
  br label %747

747:                                              ; preds = %743, %739, %727
  %748 = load i32, i32* %15, align 4
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %750, label %772

750:                                              ; preds = %747
  %751 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %752 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %751, i32 0, i32 22
  %753 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %752, i32 0, i32 3
  %754 = load i32, i32* %753, align 8
  %755 = getelementptr inbounds %struct.ib_event.7, %struct.ib_event.7* %14, i32 0, i32 2
  store i32 %754, i32* %755, align 8
  %756 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %757 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %756, i32 0, i32 22
  %758 = getelementptr inbounds %struct.ib_event.7, %struct.ib_event.7* %14, i32 0, i32 1
  %759 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %758, i32 0, i32 0
  store %struct.TYPE_9__* %757, %struct.TYPE_9__** %759, align 8
  %760 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %761 = getelementptr inbounds %struct.ib_event.7, %struct.ib_event.7* %14, i32 0, i32 0
  store i32 %760, i32* %761, align 8
  %762 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %763 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %762, i32 0, i32 22
  %764 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %763, i32 0, i32 2
  %765 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %764, align 8
  %766 = bitcast %struct.ib_event.7* %14 to %struct.ib_event*
  %767 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %768 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %767, i32 0, i32 22
  %769 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %768, i32 0, i32 1
  %770 = load i32, i32* %769, align 8
  %771 = call i32 %765(%struct.ib_event* %766, i32 %770)
  br label %772

772:                                              ; preds = %750, %747
  %773 = load i32, i32* %16, align 4
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %797

775:                                              ; preds = %772
  %776 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %777 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %776, i32 0, i32 22
  %778 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %777, i32 0, i32 3
  %779 = load i32, i32* %778, align 8
  %780 = getelementptr inbounds %struct.ib_event.7, %struct.ib_event.7* %14, i32 0, i32 2
  store i32 %779, i32* %780, align 8
  %781 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %782 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %781, i32 0, i32 22
  %783 = getelementptr inbounds %struct.ib_event.7, %struct.ib_event.7* %14, i32 0, i32 1
  %784 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %783, i32 0, i32 0
  store %struct.TYPE_9__* %782, %struct.TYPE_9__** %784, align 8
  %785 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %786 = getelementptr inbounds %struct.ib_event.7, %struct.ib_event.7* %14, i32 0, i32 0
  store i32 %785, i32* %786, align 8
  %787 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %788 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %787, i32 0, i32 22
  %789 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %788, i32 0, i32 2
  %790 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %789, align 8
  %791 = bitcast %struct.ib_event.7* %14 to %struct.ib_event*
  %792 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %793 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %792, i32 0, i32 22
  %794 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %793, i32 0, i32 1
  %795 = load i32, i32* %794, align 8
  %796 = call i32 %790(%struct.ib_event* %791, i32 %795)
  br label %797

797:                                              ; preds = %775, %772
  store i32 0, i32* %5, align 4
  br label %810

798:                                              ; preds = %415, %367, %350, %341, %333, %319, %314, %295, %275, %263, %251, %238, %202, %190, %176, %168, %157, %148, %131, %120, %111, %95, %75
  %799 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %800 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %799, i32 0, i32 21
  %801 = call i32 @spin_unlock(i32* %800)
  %802 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %803 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %802, i32 0, i32 20
  %804 = call i32 @spin_unlock(i32* %803)
  %805 = load %struct.rvt_qp*, %struct.rvt_qp** %11, align 8
  %806 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %805, i32 0, i32 19
  %807 = call i32 @spin_unlock_irq(i32* %806)
  %808 = load i32, i32* @EINVAL, align 4
  %809 = sub nsw i32 0, %808
  store i32 %809, i32* %5, align 4
  br label %810

810:                                              ; preds = %798, %797
  %811 = load i32, i32* %5, align 4
  ret i32 %811
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(%struct.TYPE_11__*) #1

declare dso_local %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rdma_cap_opa_ah(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @ib_modify_qp_is_ok(i32, i32, i32, i32) #1

declare dso_local i64 @rdma_ah_get_dlid(i32*) #1

declare dso_local i64 @opa_get_mcast_base(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @rvt_check_ah(i32, i32*) #1

declare dso_local i64 @rvt_get_npkeys(%struct.rvt_dev_info*) #1

declare dso_local i32 @rvt_reset_qp(%struct.rvt_dev_info*, %struct.rvt_qp*, i32) #1

declare dso_local i32 @rvt_error_qp(%struct.rvt_qp*, i32) #1

declare dso_local i32 @rdma_replace_ah_attr(i32*, i32*) #1

declare dso_local i32 @rdma_ah_get_static_rate(i32*) #1

declare dso_local i32 @ib_rate_to_mbps(i32) #1

declare dso_local i64 @rdma_ah_get_port_num(i32*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @rvt_timeout_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rvt_insert_qp(%struct.rvt_dev_info*, %struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
