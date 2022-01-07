; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_ctx_signature_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_ctx_signature_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_rw_ctx = type { i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_14__*, %struct.TYPE_19__, %struct.TYPE_17__, %struct.ib_rdma_wr }
%struct.TYPE_14__ = type { %struct.TYPE_22__*, i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__*, i64, i64, i32*, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.ib_rdma_wr = type { i32, %struct.TYPE_20__, i32 }
%struct.ib_qp = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.scatterlist = type { i32 }
%struct.ib_sig_attrs = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [64 x i8] c"SG count too large: sg_cnt=%d, prot_sg_cnt=%d, pages_per_mr=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_RW_SIG_MR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to map PI sg (%d)\0A\00", align 1
@IB_WR_REG_MR_INTEGRITY = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_SIG_TYPE_NONE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IB_WR_RDMA_WRITE = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_rw_ctx_signature_init(%struct.rdma_rw_ctx* %0, %struct.ib_qp* %1, i32 %2, %struct.scatterlist* %3, i32 %4, %struct.scatterlist* %5, i32 %6, %struct.ib_sig_attrs* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.rdma_rw_ctx*, align 8
  %14 = alloca %struct.ib_qp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.scatterlist*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ib_sig_attrs*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ib_device*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.ib_rdma_wr*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.rdma_rw_ctx* %0, %struct.rdma_rw_ctx** %13, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %14, align 8
  store i32 %2, i32* %15, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %16, align 8
  store i32 %4, i32* %17, align 4
  store %struct.scatterlist* %5, %struct.scatterlist** %18, align 8
  store i32 %6, i32* %19, align 4
  store %struct.ib_sig_attrs* %7, %struct.ib_sig_attrs** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %29 = load %struct.ib_qp*, %struct.ib_qp** %14, align 8
  %30 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %29, i32 0, i32 3
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.ib_device*, %struct.ib_device** %32, align 8
  store %struct.ib_device* %33, %struct.ib_device** %24, align 8
  %34 = load %struct.ib_qp*, %struct.ib_qp** %14, align 8
  %35 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %34, i32 0, i32 3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.ib_device*, %struct.ib_device** %37, align 8
  %39 = load %struct.ib_qp*, %struct.ib_qp** %14, align 8
  %40 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @rdma_rw_fr_page_list_len(%struct.ib_device* %38, i32 %41)
  store i32 %42, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %25, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %11
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %25, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46, %11
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %25, align 4
  %54 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %356

57:                                               ; preds = %46
  %58 = load %struct.ib_device*, %struct.ib_device** %24, align 8
  %59 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %23, align 4
  %62 = call i32 @ib_dma_map_sg(%struct.ib_device* %58, %struct.scatterlist* %59, i32 %60, i32 %61)
  store i32 %62, i32* %28, align 4
  %63 = load i32, i32* %28, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %356

68:                                               ; preds = %57
  %69 = load i32, i32* %28, align 4
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load %struct.ib_device*, %struct.ib_device** %24, align 8
  %74 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %23, align 4
  %77 = call i32 @ib_dma_map_sg(%struct.ib_device* %73, %struct.scatterlist* %74, i32 %75, i32 %76)
  store i32 %77, i32* %28, align 4
  %78 = load i32, i32* %28, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %28, align 4
  br label %349

83:                                               ; preds = %72
  %84 = load i32, i32* %28, align 4
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %83, %68
  %86 = load i32, i32* @RDMA_RW_SIG_MR, align 4
  %87 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %88 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %90 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.TYPE_21__* @kcalloc(i32 1, i32 112, i32 %91)
  %93 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %94 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %93, i32 0, i32 1
  store %struct.TYPE_21__* %92, %struct.TYPE_21__** %94, align 8
  %95 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %96 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %95, i32 0, i32 1
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = icmp ne %struct.TYPE_21__* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %85
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %28, align 4
  br label %339

102:                                              ; preds = %85
  %103 = load %struct.ib_qp*, %struct.ib_qp** %14, align 8
  %104 = load %struct.ib_qp*, %struct.ib_qp** %14, align 8
  %105 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %104, i32 0, i32 0
  %106 = call %struct.TYPE_14__* @ib_mr_pool_get(%struct.ib_qp* %103, i32* %105)
  %107 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %108 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %107, i32 0, i32 1
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %110, align 8
  %111 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %112 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %111, i32 0, i32 1
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = icmp ne %struct.TYPE_14__* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %102
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %28, align 4
  br label %334

120:                                              ; preds = %102
  %121 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %122 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %121, i32 0, i32 1
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %122, align 8
  %124 = call i64 @rdma_rw_inv_key(%struct.TYPE_21__* %123)
  %125 = load i32, i32* %27, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %27, align 4
  %129 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %130 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %129, i32 0, i32 1
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %134, align 8
  %136 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %20, align 8
  %137 = call i32 @memcpy(%struct.TYPE_22__* %135, %struct.ib_sig_attrs* %136, i32 8)
  %138 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %139 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %138, i32 0, i32 1
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* @SZ_4K, align 4
  %148 = call i32 @ib_map_mr_sg_pi(%struct.TYPE_14__* %142, %struct.scatterlist* %143, i32 %144, i32* null, %struct.scatterlist* %145, i32 %146, i32* null, i32 %147)
  store i32 %148, i32* %28, align 4
  %149 = load i32, i32* %28, align 4
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %120
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %153, %154
  %156 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  br label %324

157:                                              ; preds = %120
  %158 = load i32, i32* @IB_WR_REG_MR_INTEGRITY, align 4
  %159 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %160 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %159, i32 0, i32 1
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 4
  store i32 %158, i32* %164, align 8
  %165 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %166 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %165, i32 0, i32 1
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 3
  store i32* null, i32** %170, align 8
  %171 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %172 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %171, i32 0, i32 1
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  store i64 0, i64* %176, align 8
  %177 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %178 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %177, i32 0, i32 1
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  store i64 0, i64* %182, align 8
  %183 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %184 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %185 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %184, i32 0, i32 1
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 3
  store i32 %183, i32* %188, align 8
  %189 = load %struct.ib_qp*, %struct.ib_qp** %14, align 8
  %190 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %15, align 4
  %193 = call i64 @rdma_protocol_iwarp(i32 %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %157
  %196 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %197 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %198 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %197, i32 0, i32 1
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %196
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %195, %157
  %205 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %206 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %205, i32 0, i32 1
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %211 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %210, i32 0, i32 1
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 2
  store %struct.TYPE_14__* %209, %struct.TYPE_14__** %214, align 8
  %215 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %216 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %215, i32 0, i32 1
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %223 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %222, i32 0, i32 1
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 1
  store i32 %221, i32* %226, align 8
  %227 = load i32, i32* %27, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %27, align 4
  %229 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %230 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %229, i32 0, i32 1
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %237 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %236, i32 0, i32 1
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 1
  store i32 %235, i32* %240, align 4
  %241 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %242 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %241, i32 0, i32 1
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %249 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %248, i32 0, i32 1
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  store i32 %247, i32* %252, align 8
  %253 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %20, align 8
  %254 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @IB_SIG_TYPE_NONE, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %278

259:                                              ; preds = %204
  %260 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %261 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %260, i32 0, i32 1
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %270 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %269, i32 0, i32 1
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = sext i32 %274 to i64
  %276 = sub nsw i64 %275, %268
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %273, align 8
  br label %278

278:                                              ; preds = %259, %204
  %279 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %280 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %279, i32 0, i32 1
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 3
  store %struct.ib_rdma_wr* %282, %struct.ib_rdma_wr** %26, align 8
  %283 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %284 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %283, i32 0, i32 1
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 2
  %287 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %26, align 8
  %288 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 2
  store %struct.TYPE_17__* %286, %struct.TYPE_17__** %289, align 8
  %290 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %26, align 8
  %291 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 0
  store i32 1, i32* %292, align 8
  %293 = load i32, i32* %21, align 4
  %294 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %26, align 8
  %295 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  %296 = load i32, i32* %22, align 4
  %297 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %26, align 8
  %298 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 8
  %299 = load i32, i32* %23, align 4
  %300 = load i32, i32* @DMA_TO_DEVICE, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %278
  %303 = load i32, i32* @IB_WR_RDMA_WRITE, align 4
  %304 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %26, align 8
  %305 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 1
  store i32 %303, i32* %306, align 4
  br label %312

307:                                              ; preds = %278
  %308 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %309 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %26, align 8
  %310 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 1
  store i32 %308, i32* %311, align 4
  br label %312

312:                                              ; preds = %307, %302
  %313 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %26, align 8
  %314 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %313, i32 0, i32 1
  %315 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %316 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %315, i32 0, i32 1
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 0
  store %struct.TYPE_20__* %314, %struct.TYPE_20__** %320, align 8
  %321 = load i32, i32* %27, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %27, align 4
  %323 = load i32, i32* %27, align 4
  store i32 %323, i32* %12, align 4
  br label %356

324:                                              ; preds = %152
  %325 = load %struct.ib_qp*, %struct.ib_qp** %14, align 8
  %326 = load %struct.ib_qp*, %struct.ib_qp** %14, align 8
  %327 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %326, i32 0, i32 0
  %328 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %329 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %328, i32 0, i32 1
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %331, align 8
  %333 = call i32 @ib_mr_pool_put(%struct.ib_qp* %325, i32* %327, %struct.TYPE_14__* %332)
  br label %334

334:                                              ; preds = %324, %117
  %335 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %13, align 8
  %336 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %335, i32 0, i32 1
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %336, align 8
  %338 = call i32 @kfree(%struct.TYPE_21__* %337)
  br label %339

339:                                              ; preds = %334, %99
  %340 = load i32, i32* %19, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %339
  %343 = load %struct.ib_device*, %struct.ib_device** %24, align 8
  %344 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %345 = load i32, i32* %19, align 4
  %346 = load i32, i32* %23, align 4
  %347 = call i32 @ib_dma_unmap_sg(%struct.ib_device* %343, %struct.scatterlist* %344, i32 %345, i32 %346)
  br label %348

348:                                              ; preds = %342, %339
  br label %349

349:                                              ; preds = %348, %80
  %350 = load %struct.ib_device*, %struct.ib_device** %24, align 8
  %351 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %352 = load i32, i32* %17, align 4
  %353 = load i32, i32* %23, align 4
  %354 = call i32 @ib_dma_unmap_sg(%struct.ib_device* %350, %struct.scatterlist* %351, i32 %352, i32 %353)
  %355 = load i32, i32* %28, align 4
  store i32 %355, i32* %12, align 4
  br label %356

356:                                              ; preds = %349, %312, %65, %50
  %357 = load i32, i32* %12, align 4
  ret i32 %357
}

declare dso_local i32 @rdma_rw_fr_page_list_len(%struct.ib_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @ib_dma_map_sg(%struct.ib_device*, %struct.scatterlist*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @ib_mr_pool_get(%struct.ib_qp*, i32*) #1

declare dso_local i64 @rdma_rw_inv_key(%struct.TYPE_21__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_22__*, %struct.ib_sig_attrs*, i32) #1

declare dso_local i32 @ib_map_mr_sg_pi(%struct.TYPE_14__*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rdma_protocol_iwarp(i32, i32) #1

declare dso_local i32 @ib_mr_pool_put(%struct.ib_qp*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @kfree(%struct.TYPE_21__*) #1

declare dso_local i32 @ib_dma_unmap_sg(%struct.ib_device*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
