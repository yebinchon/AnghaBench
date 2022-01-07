; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i32, i32, %struct.TYPE_12__*, %struct.ib_recv_wr* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.hns_roce_dev = type { %struct.TYPE_8__, %struct.device* }
%struct.TYPE_8__ = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_qp = type { i64, %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.hns_roce_rinl_sge* }
%struct.hns_roce_rinl_sge = type { i64, i8* }
%struct.hns_roce_v2_wqe_data_seg = type { i64, i32 }
%struct.ib_qp_attr = type { i64 }

@IB_QPS_RESET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rq:num_sge=%d > qp->sq.max_gs=%d\0A\00", align 1
@HNS_ROCE_INVALID_LKEY = common dso_local global i32 0, align 4
@HNS_ROCE_CAP_FLAG_RQ_INLINE = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i64 0, align 8
@IB_QP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)* @hns_roce_v2_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_qp*, align 8
  %10 = alloca %struct.hns_roce_v2_wqe_data_seg*, align 8
  %11 = alloca %struct.hns_roce_rinl_sge*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.ib_qp_attr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  %21 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %22 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.hns_roce_dev* @to_hr_dev(i32 %23)
  store %struct.hns_roce_dev* %24, %struct.hns_roce_dev** %8, align 8
  %25 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %26 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %25)
  store %struct.hns_roce_qp* %26, %struct.hns_roce_qp** %9, align 8
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %28 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %27, i32 0, i32 1
  %29 = load %struct.device*, %struct.device** %28, align 8
  store %struct.device* %29, %struct.device** %12, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %30 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %31 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %36 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %40 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %38, %43
  store i32 %44, i32* %19, align 4
  %45 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %46 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IB_QPS_RESET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %3
  %51 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %52 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %57 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %56, %struct.ib_recv_wr** %57, align 8
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %308

60:                                               ; preds = %3
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %243, %60
  %62 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %63 = icmp ne %struct.ib_recv_wr* %62, null
  br i1 %63, label %64, label %249

64:                                               ; preds = %61
  %65 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %66 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %65, i32 0, i32 1
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %69 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @hns_roce_wq_overflow(%struct.TYPE_13__* %66, i32 %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %17, align 4
  %77 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %78 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %77, %struct.ib_recv_wr** %78, align 8
  br label %250

79:                                               ; preds = %64
  %80 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %84 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %82, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %79
  %92 = load %struct.device*, %struct.device** %12, align 8
  %93 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %94 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %97 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %17, align 4
  %103 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %104 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %103, %struct.ib_recv_wr** %104, align 8
  br label %250

105:                                              ; preds = %79
  %106 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %107 = load i32, i32* %19, align 4
  %108 = call i8* @get_recv_wqe(%struct.hns_roce_qp* %106, i32 %107)
  store i8* %108, i8** %15, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = bitcast i8* %109 to %struct.hns_roce_v2_wqe_data_seg*
  store %struct.hns_roce_v2_wqe_data_seg* %110, %struct.hns_roce_v2_wqe_data_seg** %10, align 8
  store i32 0, i32* %20, align 4
  br label %111

111:                                              ; preds = %139, %105
  %112 = load i32, i32* %20, align 4
  %113 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %114 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %111
  %118 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %119 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %118, i32 0, i32 2
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i32, i32* %20, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %117
  br label %139

128:                                              ; preds = %117
  %129 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %10, align 8
  %130 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %131 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %130, i32 0, i32 2
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i64 %134
  %136 = call i32 @set_data_seg_v2(%struct.hns_roce_v2_wqe_data_seg* %129, %struct.TYPE_12__* %135)
  %137 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %10, align 8
  %138 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %137, i32 1
  store %struct.hns_roce_v2_wqe_data_seg* %138, %struct.hns_roce_v2_wqe_data_seg** %10, align 8
  br label %139

139:                                              ; preds = %128, %127
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %20, align 4
  br label %111

142:                                              ; preds = %111
  %143 = load i32, i32* %20, align 4
  %144 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %145 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load i32, i32* @HNS_ROCE_INVALID_LKEY, align 4
  %151 = call i32 @cpu_to_le32(i32 %150)
  %152 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %10, align 8
  %153 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %10, align 8
  %155 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %149, %142
  %157 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %158 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @HNS_ROCE_CAP_FLAG_RQ_INLINE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %224

164:                                              ; preds = %156
  %165 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %166 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load %struct.hns_roce_rinl_sge*, %struct.hns_roce_rinl_sge** %172, align 8
  store %struct.hns_roce_rinl_sge* %173, %struct.hns_roce_rinl_sge** %11, align 8
  %174 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %175 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %179 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = load i32, i32* %19, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  store i64 %177, i64* %185, align 8
  store i32 0, i32* %20, align 4
  br label %186

186:                                              ; preds = %220, %164
  %187 = load i32, i32* %20, align 4
  %188 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %189 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %223

192:                                              ; preds = %186
  %193 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %194 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %193, i32 0, i32 2
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i8*
  %202 = load %struct.hns_roce_rinl_sge*, %struct.hns_roce_rinl_sge** %11, align 8
  %203 = load i32, i32* %20, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.hns_roce_rinl_sge, %struct.hns_roce_rinl_sge* %202, i64 %204
  %206 = getelementptr inbounds %struct.hns_roce_rinl_sge, %struct.hns_roce_rinl_sge* %205, i32 0, i32 1
  store i8* %201, i8** %206, align 8
  %207 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %208 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %207, i32 0, i32 2
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i32, i32* %20, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.hns_roce_rinl_sge*, %struct.hns_roce_rinl_sge** %11, align 8
  %216 = load i32, i32* %20, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.hns_roce_rinl_sge, %struct.hns_roce_rinl_sge* %215, i64 %217
  %219 = getelementptr inbounds %struct.hns_roce_rinl_sge, %struct.hns_roce_rinl_sge* %218, i32 0, i32 0
  store i64 %214, i64* %219, align 8
  br label %220

220:                                              ; preds = %192
  %221 = load i32, i32* %20, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %20, align 4
  br label %186

223:                                              ; preds = %186
  br label %224

224:                                              ; preds = %223, %156
  %225 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %226 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %229 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %19, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %227, i32* %234, align 4
  %235 = load i32, i32* %19, align 4
  %236 = add nsw i32 %235, 1
  %237 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %238 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = sub nsw i32 %240, 1
  %242 = and i32 %236, %241
  store i32 %242, i32* %19, align 4
  br label %243

243:                                              ; preds = %224
  %244 = load i32, i32* %18, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %18, align 4
  %246 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %247 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %246, i32 0, i32 3
  %248 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %247, align 8
  store %struct.ib_recv_wr* %248, %struct.ib_recv_wr** %6, align 8
  br label %61

249:                                              ; preds = %61
  br label %250

250:                                              ; preds = %249, %91, %74
  %251 = load i32, i32* %18, align 4
  %252 = call i64 @likely(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %301

254:                                              ; preds = %250
  %255 = load i32, i32* %18, align 4
  %256 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %257 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, %255
  store i32 %260, i32* %258, align 8
  %261 = call i32 (...) @wmb()
  %262 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %263 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %265, 65535
  %267 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %268 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  store i32 %266, i32* %270, align 4
  %271 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %272 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @IB_QPS_ERR, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %300

276:                                              ; preds = %254
  %277 = load i32, i32* @IB_QP_STATE, align 4
  store i32 %277, i32* %16, align 4
  %278 = load i64, i64* @IB_QPS_ERR, align 8
  %279 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %13, i32 0, i32 0
  store i64 %278, i64* %279, align 8
  %280 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %281 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %280, i32 0, i32 2
  %282 = load i32, i32* %16, align 4
  %283 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %284 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @IB_QPS_ERR, align 8
  %287 = call i32 @hns_roce_v2_modify_qp(%struct.TYPE_14__* %281, %struct.ib_qp_attr* %13, i32 %282, i64 %285, i64 %286)
  store i32 %287, i32* %17, align 4
  %288 = load i32, i32* %17, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %276
  %291 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %292 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 3
  %294 = load i64, i64* %14, align 8
  %295 = call i32 @spin_unlock_irqrestore(i32* %293, i64 %294)
  %296 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %297 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %296, %struct.ib_recv_wr** %297, align 8
  %298 = load i32, i32* %17, align 4
  store i32 %298, i32* %4, align 4
  br label %308

299:                                              ; preds = %276
  br label %300

300:                                              ; preds = %299, %254
  br label %301

301:                                              ; preds = %300, %250
  %302 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %9, align 8
  %303 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 3
  %305 = load i64, i64* %14, align 8
  %306 = call i32 @spin_unlock_irqrestore(i32* %304, i64 %305)
  %307 = load i32, i32* %17, align 4
  store i32 %307, i32* %4, align 4
  br label %308

308:                                              ; preds = %301, %290, %50
  %309 = load i32, i32* %4, align 4
  ret i32 %309
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @hns_roce_wq_overflow(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i8* @get_recv_wqe(%struct.hns_roce_qp*, i32) #1

declare dso_local i32 @set_data_seg_v2(%struct.hns_roce_v2_wqe_data_seg*, %struct.TYPE_12__*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hns_roce_v2_modify_qp(%struct.TYPE_14__*, %struct.ib_qp_attr*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
