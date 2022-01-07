; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c__mlx5_ib_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c__mlx5_ib_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32 }
%struct.ib_recv_wr = type { i32, i32, i64, %struct.ib_recv_wr* }
%struct.mlx5_ib_qp = type { %struct.TYPE_6__, %struct.TYPE_5__, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { i8** }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_wqe_data_seg = type { i64, i8*, i64 }
%struct.mlx5_rwqe_sig = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i64 }

@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_INVALID_LKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**, i32)* @_mlx5_ib_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx5_ib_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_recv_wr*, align 8
  %8 = alloca %struct.ib_recv_wr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_ib_qp*, align 8
  %11 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %12 = alloca %struct.mlx5_rwqe_sig*, align 8
  %13 = alloca %struct.mlx5_ib_dev*, align 8
  %14 = alloca %struct.mlx5_core_dev*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %7, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %21 = call %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp* %20)
  store %struct.mlx5_ib_qp* %21, %struct.mlx5_ib_qp** %10, align 8
  %22 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %23 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.mlx5_ib_dev* @to_mdev(i32 %24)
  store %struct.mlx5_ib_dev* %25, %struct.mlx5_ib_dev** %13, align 8
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %13, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %26, i32 0, i32 0
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %27, align 8
  store %struct.mlx5_core_dev* %28, %struct.mlx5_core_dev** %14, align 8
  store i32 0, i32* %16, align 4
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %4
  %39 = phi i1 [ false, %4 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %45 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %8, align 8
  store %struct.ib_recv_wr* %44, %struct.ib_recv_wr** %45, align 8
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %244

48:                                               ; preds = %38
  %49 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %50 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IB_QPT_GSI, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %59 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %60 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %8, align 8
  %61 = call i32 @mlx5_ib_gsi_post_recv(%struct.ib_qp* %58, %struct.ib_recv_wr* %59, %struct.ib_recv_wr** %60)
  store i32 %61, i32* %5, align 4
  br label %244

62:                                               ; preds = %48
  %63 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %64 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %69 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %73 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = and i32 %71, %76
  store i32 %77, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %208, %62
  %79 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %80 = icmp ne %struct.ib_recv_wr* %79, null
  br i1 %80, label %81, label %214

81:                                               ; preds = %78
  %82 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %82, i32 0, i32 0
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %86 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @mlx5_wq_overflow(%struct.TYPE_6__* %83, i32 %84, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %16, align 4
  %94 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %95 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %8, align 8
  store %struct.ib_recv_wr* %94, %struct.ib_recv_wr** %95, align 8
  br label %215

96:                                               ; preds = %81
  %97 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %98 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %99, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %96
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %16, align 4
  %111 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %112 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %8, align 8
  store %struct.ib_recv_wr* %111, %struct.ib_recv_wr** %112, align 8
  br label %215

113:                                              ; preds = %96
  %114 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  %117 = load i32, i32* %18, align 4
  %118 = call %struct.mlx5_wqe_data_seg* @mlx5_frag_buf_get_wqe(i32* %116, i32 %117)
  store %struct.mlx5_wqe_data_seg* %118, %struct.mlx5_wqe_data_seg** %11, align 8
  %119 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %120 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %125 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %124, i32 1
  store %struct.mlx5_wqe_data_seg* %125, %struct.mlx5_wqe_data_seg** %11, align 8
  br label %126

126:                                              ; preds = %123, %113
  store i32 0, i32* %19, align 4
  br label %127

127:                                              ; preds = %145, %126
  %128 = load i32, i32* %19, align 4
  %129 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %130 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %134, i64 %136
  %138 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %139 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %140, %142
  %144 = call i32 @set_data_ptr_seg(%struct.mlx5_wqe_data_seg* %137, i64 %143)
  br label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %19, align 4
  br label %127

148:                                              ; preds = %127
  %149 = load i32, i32* %19, align 4
  %150 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %151 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %148
  %156 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %156, i64 %158
  %160 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  %161 = load i32, i32* @MLX5_INVALID_LKEY, align 4
  %162 = call i8* @cpu_to_be32(i32 %161)
  %163 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %163, i64 %165
  %167 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %166, i32 0, i32 1
  store i8* %162, i8** %167, align 8
  %168 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %168, i64 %170
  %172 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %155, %148
  %174 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %175 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %173
  %179 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %11, align 8
  %180 = bitcast %struct.mlx5_wqe_data_seg* %179 to %struct.mlx5_rwqe_sig*
  store %struct.mlx5_rwqe_sig* %180, %struct.mlx5_rwqe_sig** %12, align 8
  %181 = load %struct.mlx5_rwqe_sig*, %struct.mlx5_rwqe_sig** %12, align 8
  %182 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %183 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, 1
  %187 = shl i32 %186, 2
  %188 = call i32 @set_sig_seg(%struct.mlx5_rwqe_sig* %181, i32 %187)
  br label %189

189:                                              ; preds = %178, %173
  %190 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %191 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %194 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %192, i32* %199, align 4
  %200 = load i32, i32* %18, align 4
  %201 = add nsw i32 %200, 1
  %202 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %203 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %205, 1
  %207 = and i32 %201, %206
  store i32 %207, i32* %18, align 4
  br label %208

208:                                              ; preds = %189
  %209 = load i32, i32* %17, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %17, align 4
  %211 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %212 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %211, i32 0, i32 3
  %213 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %212, align 8
  store %struct.ib_recv_wr* %213, %struct.ib_recv_wr** %7, align 8
  br label %78

214:                                              ; preds = %78
  br label %215

215:                                              ; preds = %214, %108, %91
  %216 = load i32, i32* %17, align 4
  %217 = call i64 @likely(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %215
  %220 = load i32, i32* %17, align 4
  %221 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %222 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, %220
  store i32 %225, i32* %223, align 8
  %226 = call i32 (...) @wmb()
  %227 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %228 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = and i32 %230, 65535
  %232 = call i8* @cpu_to_be32(i32 %231)
  %233 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %234 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i8**, i8*** %235, align 8
  store i8* %232, i8** %236, align 8
  br label %237

237:                                              ; preds = %219, %215
  %238 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %239 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 3
  %241 = load i64, i64* %15, align 8
  %242 = call i32 @spin_unlock_irqrestore(i32* %240, i64 %241)
  %243 = load i32, i32* %16, align 4
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %237, %57, %43
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_ib_gsi_post_recv(%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mlx5_wq_overflow(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.mlx5_wqe_data_seg* @mlx5_frag_buf_get_wqe(i32*, i32) #1

declare dso_local i32 @set_data_ptr_seg(%struct.mlx5_wqe_data_seg*, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @set_sig_seg(%struct.mlx5_rwqe_sig*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
