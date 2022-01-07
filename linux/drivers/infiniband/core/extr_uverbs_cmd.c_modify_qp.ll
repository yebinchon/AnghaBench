; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_ex_modify_qp = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ib_qp_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_qp = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVERBS_OBJECT_QP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i64 0, align 8
@IB_QP_ALT_PATH = common dso_local global i32 0, align 4
@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i64 0, align 8
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@IB_QP_PATH_MIG_STATE = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_RQ_PSN = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@IB_QP_DEST_QPN = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_EN_SQD_ASYNC_NOTIFY = common dso_local global i32 0, align 4
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@IB_QP_RETRY_CNT = common dso_local global i32 0, align 4
@IB_QP_RNR_RETRY = common dso_local global i32 0, align 4
@IB_QP_RATE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_modify_qp*)* @modify_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_qp(%struct.uverbs_attr_bundle* %0, %struct.ib_uverbs_ex_modify_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uverbs_attr_bundle*, align 8
  %5 = alloca %struct.ib_uverbs_ex_modify_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %4, align 8
  store %struct.ib_uverbs_ex_modify_qp* %1, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ib_qp_attr* @kzalloc(i32 112, i32 %9)
  store %struct.ib_qp_attr* %10, %struct.ib_qp_attr** %6, align 8
  %11 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %12 = icmp ne %struct.ib_qp_attr* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %603

16:                                               ; preds = %2
  %17 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %18 = load i32, i32* @UVERBS_OBJECT_QP, align 4
  %19 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %20 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 24
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %24 = call %struct.ib_qp* @uobj_get_obj_read(%struct.ib_qp* %17, i32 %18, i32 %22, %struct.uverbs_attr_bundle* %23)
  store %struct.ib_qp* %24, %struct.ib_qp** %7, align 8
  %25 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %26 = icmp ne %struct.ib_qp* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %599

30:                                               ; preds = %16
  %31 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %32 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IB_QP_PORT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %40 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %43 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @rdma_is_port_valid(i32 %41, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %596

51:                                               ; preds = %38, %30
  %52 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %53 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IB_QP_AV, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %159

59:                                               ; preds = %51
  %60 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %61 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %64 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @rdma_is_port_valid(i32 %62, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %596

73:                                               ; preds = %59
  %74 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %75 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IB_QP_STATE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %73
  %82 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %83 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IB_QPS_RTR, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %81
  %89 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %90 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %95 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %93, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %8, align 4
  br label %596

103:                                              ; preds = %88
  br label %158

104:                                              ; preds = %81, %73
  %105 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %106 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @IB_QP_AV, align 4
  %110 = load i32, i32* @IB_QP_PORT, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = load i32, i32* @IB_QP_AV, align 4
  %114 = load i32, i32* @IB_QP_PORT, align 4
  %115 = or i32 %113, %114
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %104
  %118 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %119 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %123 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %121, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %8, align 4
  br label %596

131:                                              ; preds = %117, %104
  %132 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %133 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @IB_QP_AV, align 4
  %137 = load i32, i32* @IB_QP_PORT, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %135, %138
  %140 = load i32, i32* @IB_QP_AV, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %131
  %143 = load i32, i32* @IB_QP_PORT, align 4
  %144 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %145 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 8
  %149 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %150 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %155 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  store i64 %153, i64* %156, align 8
  br label %157

157:                                              ; preds = %142, %131
  br label %158

158:                                              ; preds = %157, %103
  br label %159

159:                                              ; preds = %158, %51
  %160 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %161 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %202

167:                                              ; preds = %159
  %168 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %169 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %172 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @rdma_is_port_valid(i32 %170, i64 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %199

177:                                              ; preds = %167
  %178 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %179 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %182 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @rdma_is_port_valid(i32 %180, i64 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %177
  %189 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %190 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %194 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %192, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %188, %177, %167
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %8, align 4
  br label %596

202:                                              ; preds = %188, %159
  %203 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %204 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %202
  %211 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %212 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @IB_QPS_ERR, align 8
  %216 = icmp sgt i64 %214, %215
  br i1 %216, label %232, label %217

217:                                              ; preds = %210, %202
  %218 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %219 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @IB_QP_STATE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %217
  %226 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %227 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @IB_QPS_ERR, align 8
  %231 = icmp sgt i64 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %225, %210
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %8, align 4
  br label %596

235:                                              ; preds = %225, %217
  %236 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %237 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @IB_QP_STATE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %235
  %244 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %245 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %249 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %248, i32 0, i32 0
  store i64 %247, i64* %249, align 8
  br label %250

250:                                              ; preds = %243, %235
  %251 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %252 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %250
  %259 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %260 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %264 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %263, i32 0, i32 1
  store i64 %262, i64* %264, align 8
  br label %265

265:                                              ; preds = %258, %250
  %266 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %267 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %265
  %274 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %275 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 23
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %279 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %278, i32 0, i32 23
  store i32 %277, i32* %279, align 4
  br label %280

280:                                              ; preds = %273, %265
  %281 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %282 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @IB_QP_PATH_MIG_STATE, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %280
  %289 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %290 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 22
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %294 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %293, i32 0, i32 22
  store i32 %292, i32* %294, align 8
  br label %295

295:                                              ; preds = %288, %280
  %296 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %297 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @IB_QP_QKEY, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %295
  %304 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %305 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 21
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %309 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %308, i32 0, i32 21
  store i32 %307, i32* %309, align 4
  br label %310

310:                                              ; preds = %303, %295
  %311 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %312 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @IB_QP_RQ_PSN, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %310
  %319 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %320 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 20
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %324 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %323, i32 0, i32 20
  store i32 %322, i32* %324, align 8
  br label %325

325:                                              ; preds = %318, %310
  %326 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %327 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %325
  %334 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %335 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 19
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %339 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %338, i32 0, i32 19
  store i32 %337, i32* %339, align 4
  br label %340

340:                                              ; preds = %333, %325
  %341 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %342 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %340
  %349 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %350 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 18
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %354 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %353, i32 0, i32 18
  store i32 %352, i32* %354, align 8
  br label %355

355:                                              ; preds = %348, %340
  %356 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %357 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %355
  %364 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %365 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 17
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %369 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %368, i32 0, i32 17
  store i32 %367, i32* %369, align 4
  br label %370

370:                                              ; preds = %363, %355
  %371 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %372 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %370
  %379 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %380 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 16
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %384 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %383, i32 0, i32 16
  store i32 %382, i32* %384, align 8
  br label %385

385:                                              ; preds = %378, %370
  %386 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %387 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @IB_QP_EN_SQD_ASYNC_NOTIFY, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %385
  %394 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %395 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i32 0, i32 15
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %399 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %398, i32 0, i32 15
  store i32 %397, i32* %399, align 4
  br label %400

400:                                              ; preds = %393, %385
  %401 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %402 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %400
  %409 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %410 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 14
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %414 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %413, i32 0, i32 14
  store i32 %412, i32* %414, align 8
  br label %415

415:                                              ; preds = %408, %400
  %416 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %417 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %430

423:                                              ; preds = %415
  %424 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %425 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 13
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %429 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %428, i32 0, i32 13
  store i32 %427, i32* %429, align 4
  br label %430

430:                                              ; preds = %423, %415
  %431 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %432 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %445

438:                                              ; preds = %430
  %439 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %440 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 12
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %444 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %443, i32 0, i32 12
  store i32 %442, i32* %444, align 8
  br label %445

445:                                              ; preds = %438, %430
  %446 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %447 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* @IB_QP_PORT, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %460

453:                                              ; preds = %445
  %454 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %455 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %459 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %458, i32 0, i32 2
  store i64 %457, i64* %459, align 8
  br label %460

460:                                              ; preds = %453, %445
  %461 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %462 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %475

468:                                              ; preds = %460
  %469 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %470 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 11
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %474 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %473, i32 0, i32 11
  store i32 %472, i32* %474, align 4
  br label %475

475:                                              ; preds = %468, %460
  %476 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %477 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %490

483:                                              ; preds = %475
  %484 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %485 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %485, i32 0, i32 10
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %489 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %488, i32 0, i32 10
  store i32 %487, i32* %489, align 8
  br label %490

490:                                              ; preds = %483, %475
  %491 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %492 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %505

498:                                              ; preds = %490
  %499 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %500 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %500, i32 0, i32 9
  %502 = load i32, i32* %501, align 8
  %503 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %504 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %503, i32 0, i32 9
  store i32 %502, i32* %504, align 4
  br label %505

505:                                              ; preds = %498, %490
  %506 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %507 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %532

513:                                              ; preds = %505
  %514 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %515 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %515, i32 0, i32 3
  %517 = load i64, i64* %516, align 8
  %518 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %519 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %518, i32 0, i32 3
  store i64 %517, i64* %519, align 8
  %520 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %521 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %521, i32 0, i32 8
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %525 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %524, i32 0, i32 8
  store i32 %523, i32* %525, align 8
  %526 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %527 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %527, i32 0, i32 7
  %529 = load i32, i32* %528, align 8
  %530 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %531 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %530, i32 0, i32 7
  store i32 %529, i32* %531, align 4
  br label %532

532:                                              ; preds = %513, %505
  %533 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %534 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @IB_QP_RATE_LIMIT, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %546

540:                                              ; preds = %532
  %541 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %542 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %545 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %544, i32 0, i32 6
  store i32 %543, i32* %545, align 8
  br label %546

546:                                              ; preds = %540, %532
  %547 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %548 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = load i32, i32* @IB_QP_AV, align 4
  %552 = and i32 %550, %551
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %564

554:                                              ; preds = %546
  %555 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %556 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %559 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %558, i32 0, i32 5
  %560 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %561 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %561, i32 0, i32 6
  %563 = call i32 @copy_ah_attr_from_uverbs(i32 %557, i32* %559, %struct.TYPE_6__* %562)
  br label %564

564:                                              ; preds = %554, %546
  %565 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %566 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %570 = and i32 %568, %569
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %582

572:                                              ; preds = %564
  %573 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %574 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %577 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %576, i32 0, i32 4
  %578 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %579 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %579, i32 0, i32 5
  %581 = call i32 @copy_ah_attr_from_uverbs(i32 %575, i32* %577, %struct.TYPE_6__* %580)
  br label %582

582:                                              ; preds = %572, %564
  %583 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %584 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %585 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %586 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = load %struct.ib_uverbs_ex_modify_qp*, %struct.ib_uverbs_ex_modify_qp** %5, align 8
  %589 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, %struct.ib_uverbs_ex_modify_qp* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = call i32 @modify_qp_mask(i32 %587, i32 %591)
  %593 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %594 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %593, i32 0, i32 0
  %595 = call i32 @ib_modify_qp_with_udata(%struct.ib_qp* %583, %struct.ib_qp_attr* %584, i32 %592, i32* %594)
  store i32 %595, i32* %8, align 4
  br label %596

596:                                              ; preds = %582, %232, %199, %128, %100, %70, %48
  %597 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %598 = call i32 @uobj_put_obj_read(%struct.ib_qp* %597)
  br label %599

599:                                              ; preds = %596, %27
  %600 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %601 = call i32 @kfree(%struct.ib_qp_attr* %600)
  %602 = load i32, i32* %8, align 4
  store i32 %602, i32* %3, align 4
  br label %603

603:                                              ; preds = %599, %13
  %604 = load i32, i32* %3, align 4
  ret i32 %604
}

declare dso_local %struct.ib_qp_attr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_qp* @uobj_get_obj_read(%struct.ib_qp*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @rdma_is_port_valid(i32, i64) #1

declare dso_local i32 @copy_ah_attr_from_uverbs(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ib_modify_qp_with_udata(%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32*) #1

declare dso_local i32 @modify_qp_mask(i32, i32) #1

declare dso_local i32 @uobj_put_obj_read(%struct.ib_qp*) #1

declare dso_local i32 @kfree(%struct.ib_qp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
