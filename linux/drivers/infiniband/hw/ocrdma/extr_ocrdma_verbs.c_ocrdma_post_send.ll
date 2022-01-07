; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { i32, i64, i32, %struct.ib_send_wr*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ocrdma_qp = type { i64, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ocrdma_hdr_wqe = type { i32, i32, i8*, i64 }

@OCRDMA_QPS_RTS = common dso_local global i64 0, align 8
@OCRDMA_QPS_SQD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@OCRDMA_FLAG_SIG = common dso_local global i32 0, align 4
@OCRDMA_WQE_FLAGS_SHIFT = common dso_local global i32 0, align 4
@IB_SEND_FENCE = common dso_local global i32 0, align 4
@OCRDMA_FLAG_FENCE_L = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@OCRDMA_FLAG_SOLICIT = common dso_local global i32 0, align 4
@OCRDMA_FLAG_IMM = common dso_local global i32 0, align 4
@OCRDMA_SEND = common dso_local global i32 0, align 4
@OCRDMA_WQE_OPCODE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_FLAG_INV = common dso_local global i32 0, align 4
@OCRDMA_WRITE = common dso_local global i32 0, align 4
@OCRDMA_LKEY_INV = common dso_local global i32 0, align 4
@OCRDMA_WQE_STRIDE = common dso_local global i32 0, align 4
@OCRDMA_WQE_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_WQE_SIZE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_qp*, align 8
  %10 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %11 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = call %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp* %12)
  store %struct.ocrdma_qp* %13, %struct.ocrdma_qp** %9, align 8
  %14 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %15 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %14, i32 0, i32 2
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %19 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OCRDMA_QPS_RTS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %3
  %24 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %25 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OCRDMA_QPS_SQD, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %31 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %30, i32 0, i32 2
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %35 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %34, %struct.ib_send_wr** %35, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %339

38:                                               ; preds = %23, %3
  br label %39

39:                                               ; preds = %300, %38
  %40 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %41 = icmp ne %struct.ib_send_wr* %40, null
  br i1 %41, label %42, label %333

42:                                               ; preds = %39
  %43 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %44 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_QPT_UD, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %50 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 130
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %55 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 129
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %60 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %59, %struct.ib_send_wr** %60, align 8
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %333

63:                                               ; preds = %53, %48, %42
  %64 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %65 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %64, i32 0, i32 3
  %66 = call i64 @ocrdma_hwq_free_cnt(%struct.TYPE_8__* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %70 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %73 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %71, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %68, %63
  %78 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %79 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %78, %struct.ib_send_wr** %79, align 8
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %333

82:                                               ; preds = %68
  %83 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %84 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %83, i32 0, i32 3
  %85 = call %struct.ocrdma_hdr_wqe* @ocrdma_hwq_head(%struct.TYPE_8__* %84)
  store %struct.ocrdma_hdr_wqe* %85, %struct.ocrdma_hdr_wqe** %10, align 8
  %86 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %87 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %82
  %95 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %96 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94, %82
  %100 = load i32, i32* @OCRDMA_FLAG_SIG, align 4
  %101 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %104 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %99, %94
  %108 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %109 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IB_SEND_FENCE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load i32, i32* @OCRDMA_FLAG_FENCE_L, align 4
  %116 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %119 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %114, %107
  %123 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %124 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load i32, i32* @OCRDMA_FLAG_SOLICIT, align 4
  %131 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %134 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %129, %122
  %138 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %139 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  %140 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %141 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %259 [
    i32 129, label %143
    i32 130, label %158
    i32 128, label %170
    i32 132, label %195
    i32 133, label %210
    i32 134, label %222
    i32 135, label %227
    i32 131, label %253
  ]

143:                                              ; preds = %137
  %144 = load i32, i32* @OCRDMA_FLAG_IMM, align 4
  %145 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %148 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %152 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @ntohl(i32 %154)
  %156 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %157 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %137, %143
  %159 = load i32, i32* @OCRDMA_SEND, align 4
  %160 = load i32, i32* @OCRDMA_WQE_OPCODE_SHIFT, align 4
  %161 = shl i32 %159, %160
  %162 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %163 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %167 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %168 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %169 = call i32 @ocrdma_build_send(%struct.ocrdma_qp* %166, %struct.ocrdma_hdr_wqe* %167, %struct.ib_send_wr* %168)
  br label %262

170:                                              ; preds = %137
  %171 = load i32, i32* @OCRDMA_FLAG_INV, align 4
  %172 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %173 = shl i32 %171, %172
  %174 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %175 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load i32, i32* @OCRDMA_SEND, align 4
  %179 = load i32, i32* @OCRDMA_WQE_OPCODE_SHIFT, align 4
  %180 = shl i32 %178, %179
  %181 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %182 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %186 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %190 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %192 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %193 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %194 = call i32 @ocrdma_build_send(%struct.ocrdma_qp* %191, %struct.ocrdma_hdr_wqe* %192, %struct.ib_send_wr* %193)
  store i32 %194, i32* %8, align 4
  br label %262

195:                                              ; preds = %137
  %196 = load i32, i32* @OCRDMA_FLAG_IMM, align 4
  %197 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %200 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %204 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i8* @ntohl(i32 %206)
  %208 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %209 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %208, i32 0, i32 2
  store i8* %207, i8** %209, align 8
  br label %210

210:                                              ; preds = %137, %195
  %211 = load i32, i32* @OCRDMA_WRITE, align 4
  %212 = load i32, i32* @OCRDMA_WQE_OPCODE_SHIFT, align 4
  %213 = shl i32 %211, %212
  %214 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %215 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %219 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %220 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %221 = call i32 @ocrdma_build_write(%struct.ocrdma_qp* %218, %struct.ocrdma_hdr_wqe* %219, %struct.ib_send_wr* %220)
  store i32 %221, i32* %8, align 4
  br label %262

222:                                              ; preds = %137
  %223 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %224 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %225 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %226 = call i32 @ocrdma_build_read(%struct.ocrdma_qp* %223, %struct.ocrdma_hdr_wqe* %224, %struct.ib_send_wr* %225)
  br label %262

227:                                              ; preds = %137
  %228 = load i32, i32* @OCRDMA_LKEY_INV, align 4
  %229 = load i32, i32* @OCRDMA_WQE_OPCODE_SHIFT, align 4
  %230 = shl i32 %228, %229
  %231 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %232 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load i32, i32* @OCRDMA_WQE_STRIDE, align 4
  %236 = sext i32 %235 to i64
  %237 = udiv i64 28, %236
  %238 = load i32, i32* @OCRDMA_WQE_SIZE_SHIFT, align 4
  %239 = zext i32 %238 to i64
  %240 = shl i64 %237, %239
  %241 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %242 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = or i64 %244, %240
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %242, align 8
  %247 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %248 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %252 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  br label %262

253:                                              ; preds = %137
  %254 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %255 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %256 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %257 = call i32 @reg_wr(%struct.ib_send_wr* %256)
  %258 = call i32 @ocrdma_build_reg(%struct.ocrdma_qp* %254, %struct.ocrdma_hdr_wqe* %255, i32 %257)
  store i32 %258, i32* %8, align 4
  br label %262

259:                                              ; preds = %137
  %260 = load i32, i32* @EINVAL, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %259, %253, %227, %222, %210, %170, %158
  %263 = load i32, i32* %8, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %267 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %266, %struct.ib_send_wr** %267, align 8
  br label %333

268:                                              ; preds = %262
  %269 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %270 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %268
  %276 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %277 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %276, i32 0, i32 5
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %275, %268
  %281 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %282 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %281, i32 0, i32 4
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %282, align 8
  %284 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %285 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  store i32 1, i32* %289, align 4
  br label %300

290:                                              ; preds = %275
  %291 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %292 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %291, i32 0, i32 4
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %292, align 8
  %294 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %295 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 0
  store i32 0, i32* %299, align 4
  br label %300

300:                                              ; preds = %290, %280
  %301 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %302 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %305 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %304, i32 0, i32 4
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %308 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  store i32 %303, i32* %312, align 4
  %313 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %314 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %10, align 8
  %315 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @OCRDMA_WQE_SIZE_SHIFT, align 4
  %318 = ashr i32 %316, %317
  %319 = load i32, i32* @OCRDMA_WQE_SIZE_MASK, align 4
  %320 = and i32 %318, %319
  %321 = load i32, i32* @OCRDMA_WQE_STRIDE, align 4
  %322 = mul nsw i32 %320, %321
  %323 = call i32 @ocrdma_cpu_to_le32(%struct.ocrdma_hdr_wqe* %313, i32 %322)
  %324 = call i32 (...) @wmb()
  %325 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %326 = call i32 @ocrdma_ring_sq_db(%struct.ocrdma_qp* %325)
  %327 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %328 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %327, i32 0, i32 3
  %329 = call i32 @ocrdma_hwq_inc_head(%struct.TYPE_8__* %328)
  %330 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %331 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %330, i32 0, i32 3
  %332 = load %struct.ib_send_wr*, %struct.ib_send_wr** %331, align 8
  store %struct.ib_send_wr* %332, %struct.ib_send_wr** %6, align 8
  br label %39

333:                                              ; preds = %265, %77, %58, %39
  %334 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %335 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %334, i32 0, i32 2
  %336 = load i64, i64* %11, align 8
  %337 = call i32 @spin_unlock_irqrestore(i32* %335, i64 %336)
  %338 = load i32, i32* %8, align 4
  store i32 %338, i32* %4, align 4
  br label %339

339:                                              ; preds = %333, %29
  %340 = load i32, i32* %4, align 4
  ret i32 %340
}

declare dso_local %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ocrdma_hwq_free_cnt(%struct.TYPE_8__*) #1

declare dso_local %struct.ocrdma_hdr_wqe* @ocrdma_hwq_head(%struct.TYPE_8__*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @ocrdma_build_send(%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_send_wr*) #1

declare dso_local i32 @ocrdma_build_write(%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_send_wr*) #1

declare dso_local i32 @ocrdma_build_read(%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_send_wr*) #1

declare dso_local i32 @ocrdma_build_reg(%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, i32) #1

declare dso_local i32 @reg_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @ocrdma_cpu_to_le32(%struct.ocrdma_hdr_wqe*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ocrdma_ring_sq_db(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_hwq_inc_head(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
