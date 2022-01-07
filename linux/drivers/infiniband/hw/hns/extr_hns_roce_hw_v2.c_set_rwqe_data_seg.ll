; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_rwqe_data_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_rwqe_data_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.hns_roce_v2_rc_send_wqe = type { i32, i32, i32, i32 }
%struct.hns_roce_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.hns_roce_v2_wqe_data_seg = type { i32 }
%struct.hns_roce_qp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IB_SEND_INLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"inline len(1-%d)=%d, illegal\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Not support inline data!\0A\00", align 1
@V2_RC_SEND_WQE_BYTE_4_INLINE_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_M = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_S = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_16_SGE_NUM_M = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_16_SGE_NUM_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_send_wr*, %struct.hns_roce_v2_rc_send_wqe*, i8*, i32*, %struct.ib_send_wr**)* @set_rwqe_data_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rwqe_data_seg(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.hns_roce_v2_rc_send_wqe* %2, i8* %3, i32* %4, %struct.ib_send_wr** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca %struct.ib_send_wr*, align 8
  %10 = alloca %struct.hns_roce_v2_rc_send_wqe*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ib_send_wr**, align 8
  %14 = alloca %struct.hns_roce_dev*, align 8
  %15 = alloca %struct.hns_roce_v2_wqe_data_seg*, align 8
  %16 = alloca %struct.hns_roce_qp*, align 8
  %17 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %8, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %9, align 8
  store %struct.hns_roce_v2_rc_send_wqe* %2, %struct.hns_roce_v2_rc_send_wqe** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.ib_send_wr** %5, %struct.ib_send_wr*** %13, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %19 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.hns_roce_dev* @to_hr_dev(i32 %20)
  store %struct.hns_roce_dev* %21, %struct.hns_roce_dev** %14, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to %struct.hns_roce_v2_wqe_data_seg*
  store %struct.hns_roce_v2_wqe_data_seg* %23, %struct.hns_roce_v2_wqe_data_seg** %15, align 8
  %24 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %25 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %24)
  store %struct.hns_roce_qp* %25, %struct.hns_roce_qp** %16, align 8
  %26 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %27 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IB_SEND_INLINE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %125

32:                                               ; preds = %6
  %33 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %34 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %125

37:                                               ; preds = %32
  %38 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %10, align 8
  %39 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %43 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %41, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %37
  %48 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %49 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %13, align 8
  store %struct.ib_send_wr* %48, %struct.ib_send_wr** %49, align 8
  %50 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %51 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %10, align 8
  %54 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %57 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %226

63:                                               ; preds = %37
  %64 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %65 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %71 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %13, align 8
  store %struct.ib_send_wr* %70, %struct.ib_send_wr** %71, align 8
  %72 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %14, align 8
  %73 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %226

78:                                               ; preds = %63
  store i32 0, i32* %17, align 4
  br label %79

79:                                               ; preds = %116, %78
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %82 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %119

85:                                               ; preds = %79
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %88 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %97 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @memcpy(i8* %86, i8* %95, i32 %103)
  %105 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %106 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %105, i32 0, i32 3
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr i8, i8* %113, i64 %114
  store i8* %115, i8** %11, align 8
  br label %116

116:                                              ; preds = %85
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  br label %79

119:                                              ; preds = %79
  %120 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %10, align 8
  %121 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @V2_RC_SEND_WQE_BYTE_4_INLINE_S, align 4
  %124 = call i32 @roce_set_bit(i32 %122, i32 %123, i32 1)
  br label %225

125:                                              ; preds = %32, %6
  %126 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %127 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %165

131:                                              ; preds = %125
  store i32 0, i32* %17, align 4
  br label %132

132:                                              ; preds = %161, %131
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %135 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %164

138:                                              ; preds = %132
  %139 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %140 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @likely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %138
  %150 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %15, align 8
  %151 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %152 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %151, i32 0, i32 3
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = call i32 @set_data_seg_v2(%struct.hns_roce_v2_wqe_data_seg* %150, %struct.TYPE_6__* %156)
  %158 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %15, align 8
  %159 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %158, i32 1
  store %struct.hns_roce_v2_wqe_data_seg* %159, %struct.hns_roce_v2_wqe_data_seg** %15, align 8
  br label %160

160:                                              ; preds = %149, %138
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %17, align 4
  br label %132

164:                                              ; preds = %132
  br label %215

165:                                              ; preds = %125
  %166 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %10, align 8
  %167 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_M, align 4
  %170 = load i32, i32* @V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_S, align 4
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %16, align 8
  %174 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = and i32 %172, %177
  %179 = call i32 @roce_set_field(i32 %168, i32 %169, i32 %170, i32 %178)
  store i32 0, i32* %17, align 4
  br label %180

180:                                              ; preds = %207, %165
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* @HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %210

184:                                              ; preds = %180
  %185 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %186 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %185, i32 0, i32 3
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %17, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @likely(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %184
  %196 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %15, align 8
  %197 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %198 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %197, i32 0, i32 3
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i32, i32* %17, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %201
  %203 = call i32 @set_data_seg_v2(%struct.hns_roce_v2_wqe_data_seg* %196, %struct.TYPE_6__* %202)
  %204 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %15, align 8
  %205 = getelementptr inbounds %struct.hns_roce_v2_wqe_data_seg, %struct.hns_roce_v2_wqe_data_seg* %204, i32 1
  store %struct.hns_roce_v2_wqe_data_seg* %205, %struct.hns_roce_v2_wqe_data_seg** %15, align 8
  br label %206

206:                                              ; preds = %195, %184
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %17, align 4
  br label %180

210:                                              ; preds = %180
  %211 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %16, align 8
  %212 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %213 = load i32*, i32** %12, align 8
  %214 = call i32 @set_extend_sge(%struct.hns_roce_qp* %211, %struct.ib_send_wr* %212, i32* %213)
  br label %215

215:                                              ; preds = %210, %164
  %216 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %10, align 8
  %217 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @V2_RC_SEND_WQE_BYTE_16_SGE_NUM_M, align 4
  %220 = load i32, i32* @V2_RC_SEND_WQE_BYTE_16_SGE_NUM_S, align 4
  %221 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %222 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @roce_set_field(i32 %218, i32 %219, i32 %220, i32 %223)
  br label %225

225:                                              ; preds = %215, %119
  store i32 0, i32* %7, align 4
  br label %226

226:                                              ; preds = %225, %69, %47
  %227 = load i32, i32* %7, align 4
  ret i32 %227
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @set_data_seg_v2(%struct.hns_roce_v2_wqe_data_seg*, %struct.TYPE_6__*) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @set_extend_sge(%struct.hns_roce_qp*, %struct.ib_send_wr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
