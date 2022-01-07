; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c__mlx4_ib_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c__mlx4_ib_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { i32, i32, %struct.TYPE_14__*, %struct.ib_recv_wr* }
%struct.TYPE_14__ = type { i32 }
%struct.mlx4_ib_qp = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_12__ = type { i8** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_wqe_data_seg = type { i64, i8*, i8* }
%struct.mlx4_ib_dev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_SMI_OWNER = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_SMI = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_GSI = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MLX4_INVALID_LKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**, i32)* @_mlx4_ib_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx4_ib_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2, i32 %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca %struct.ib_recv_wr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_qp*, align 8
  %10 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %6, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %19 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %18)
  store %struct.mlx4_ib_qp* %19, %struct.mlx4_ib_qp** %9, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %21 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mlx4_ib_dev* @to_mdev(i32 %22)
  store %struct.mlx4_ib_dev* %23, %struct.mlx4_ib_dev** %17, align 8
  %24 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %15, align 4
  %28 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %17, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  %49 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %50 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %49, %struct.ib_recv_wr** %50, align 8
  store i32 0, i32* %13, align 4
  br label %221

51:                                               ; preds = %43, %4
  %52 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %55, %60
  store i32 %61, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %214, %51
  %63 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %64 = icmp ne %struct.ib_recv_wr* %63, null
  br i1 %64, label %65, label %220

65:                                               ; preds = %62
  %66 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %66, i32 0, i32 1
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @mlx4_wq_overflow(%struct.TYPE_13__* %67, i32 %68, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  %78 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %79 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %78, %struct.ib_recv_wr** %79, align 8
  br label %221

80:                                               ; preds = %65
  %81 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %82 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %83, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %12, align 4
  %95 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %96 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %7, align 8
  store %struct.ib_recv_wr* %95, %struct.ib_recv_wr** %96, align 8
  br label %221

97:                                               ; preds = %80
  %98 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call %struct.mlx4_wqe_data_seg* @get_recv_wqe(%struct.mlx4_ib_qp* %98, i32 %99)
  store %struct.mlx4_wqe_data_seg* %100, %struct.mlx4_wqe_data_seg** %10, align 8
  %101 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %102 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI_OWNER, align 4
  %105 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @MLX4_IB_QPT_PROXY_GSI, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %103, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %97
  %112 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %113 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %116 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %115, i32 0, i32 3
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %124 = call i32 @ib_dma_sync_single_for_device(i32 %114, i32 %122, i32 4, i32 %123)
  %125 = call i8* @cpu_to_be32(i32 4)
  %126 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %10, align 8
  %127 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %129 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %128, i32 0, i32 2
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @cpu_to_be32(i32 %132)
  %134 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %10, align 8
  %135 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %137 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %136, i32 0, i32 3
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @cpu_to_be64(i32 %143)
  %145 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %10, align 8
  %146 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %10, align 8
  %148 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %147, i32 1
  store %struct.mlx4_wqe_data_seg* %148, %struct.mlx4_wqe_data_seg** %10, align 8
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %15, align 4
  br label %151

151:                                              ; preds = %111, %97
  store i32 0, i32* %16, align 4
  br label %152

152:                                              ; preds = %170, %151
  %153 = load i32, i32* %16, align 4
  %154 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %155 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %152
  %159 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %10, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %159, i64 %161
  %163 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %164 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %163, i32 0, i32 2
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i64 %167
  %169 = call i32 @__set_data_seg(%struct.mlx4_wqe_data_seg* %162, %struct.TYPE_14__* %168)
  br label %170

170:                                              ; preds = %158
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %152

173:                                              ; preds = %152
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %173
  %178 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %10, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %178, i64 %180
  %182 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %181, i32 0, i32 2
  store i8* null, i8** %182, align 8
  %183 = load i32, i32* @MLX4_INVALID_LKEY, align 4
  %184 = call i8* @cpu_to_be32(i32 %183)
  %185 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %10, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %185, i64 %187
  %189 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %188, i32 0, i32 1
  store i8* %184, i8** %189, align 8
  %190 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %10, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %190, i64 %192
  %194 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %193, i32 0, i32 0
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %177, %173
  %196 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %197 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %200 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %198, i32* %205, align 4
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  %208 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %209 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = sub nsw i32 %211, 1
  %213 = and i32 %207, %212
  store i32 %213, i32* %14, align 4
  br label %214

214:                                              ; preds = %195
  %215 = load i32, i32* %13, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %13, align 4
  %217 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %6, align 8
  %218 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %217, i32 0, i32 3
  %219 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %218, align 8
  store %struct.ib_recv_wr* %219, %struct.ib_recv_wr** %6, align 8
  br label %62

220:                                              ; preds = %62
  br label %221

221:                                              ; preds = %220, %92, %75, %46
  %222 = load i32, i32* %13, align 4
  %223 = call i64 @likely(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %243

225:                                              ; preds = %221
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %228 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, %226
  store i32 %231, i32* %229, align 4
  %232 = call i32 (...) @wmb()
  %233 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %234 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, 65535
  %238 = call i8* @cpu_to_be32(i32 %237)
  %239 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %240 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i8**, i8*** %241, align 8
  store i8* %238, i8** %242, align 8
  br label %243

243:                                              ; preds = %225, %221
  %244 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %245 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 3
  %247 = load i64, i64* %11, align 8
  %248 = call i32 @spin_unlock_irqrestore(i32* %246, i64 %247)
  %249 = load i32, i32* %12, align 4
  ret i32 %249
}

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mlx4_wq_overflow(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mlx4_wqe_data_seg* @get_recv_wqe(%struct.mlx4_ib_qp*, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @__set_data_seg(%struct.mlx4_wqe_data_seg*, %struct.TYPE_14__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
