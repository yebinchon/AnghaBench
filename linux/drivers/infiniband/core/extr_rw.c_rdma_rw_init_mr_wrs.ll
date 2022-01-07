; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_init_mr_wrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_init_mr_wrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_rw_ctx = type { i32, %struct.rdma_rw_reg_ctx*, i32 }
%struct.rdma_rw_reg_ctx = type { %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.ib_qp = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.scatterlist = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IB_WR_RDMA_WRITE = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ_WITH_INV = common dso_local global i32 0, align 4
@RDMA_RW_MR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_rw_ctx*, %struct.ib_qp*, i32, %struct.scatterlist*, i32, i32, i32, i32, i32)* @rdma_rw_init_mr_wrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_rw_init_mr_wrs(%struct.rdma_rw_ctx* %0, %struct.ib_qp* %1, i32 %2, %struct.scatterlist* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.rdma_rw_ctx*, align 8
  %12 = alloca %struct.ib_qp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.rdma_rw_reg_ctx*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.rdma_rw_reg_ctx*, align 8
  %27 = alloca i32, align 4
  store %struct.rdma_rw_ctx* %0, %struct.rdma_rw_ctx** %11, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store %struct.rdma_rw_reg_ctx* null, %struct.rdma_rw_reg_ctx** %20, align 8
  %28 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %29 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %28, i32 0, i32 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %34 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @rdma_rw_fr_page_list_len(i32 %32, i32 %35)
  store i32 %36, i32* %21, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %21, align 4
  %39 = add nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %21, align 4
  %42 = sdiv i32 %40, %41
  %43 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %44 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %46 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.rdma_rw_reg_ctx* @kcalloc(i32 %47, i32 80, i32 %48)
  %50 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %51 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %50, i32 0, i32 1
  store %struct.rdma_rw_reg_ctx* %49, %struct.rdma_rw_reg_ctx** %51, align 8
  %52 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %53 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %52, i32 0, i32 1
  %54 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %53, align 8
  %55 = icmp ne %struct.rdma_rw_reg_ctx* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %9
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %24, align 4
  br label %245

59:                                               ; preds = %9
  store i32 0, i32* %22, align 4
  br label %60

60:                                               ; preds = %206, %59
  %61 = load i32, i32* %22, align 4
  %62 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %63 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %209

66:                                               ; preds = %60
  %67 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %68 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %67, i32 0, i32 1
  %69 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %68, align 8
  %70 = load i32, i32* %22, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %69, i64 %71
  store %struct.rdma_rw_reg_ctx* %72, %struct.rdma_rw_reg_ctx** %26, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @min(i32 %73, i32 %74)
  store i32 %75, i32* %27, align 4
  %76 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %79 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @rdma_rw_init_one_mr(%struct.ib_qp* %76, i32 %77, %struct.rdma_rw_reg_ctx* %78, %struct.scatterlist* %79, i32 %80, i32 %81)
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %24, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %66
  br label %222

86:                                               ; preds = %66
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %25, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %25, align 4
  %90 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %20, align 8
  %91 = icmp ne %struct.rdma_rw_reg_ctx* %90, null
  br i1 %91, label %92, label %115

92:                                               ; preds = %86
  %93 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %94 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %93, i32 0, i32 0
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %101 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %100, i32 0, i32 4
  %102 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %20, align 8
  %103 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %105, align 8
  br label %114

106:                                              ; preds = %92
  %107 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %108 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %20, align 8
  %111 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %113, align 8
  br label %114

114:                                              ; preds = %106, %99
  br label %115

115:                                              ; preds = %114, %86
  %116 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %117 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %120 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %122, align 8
  %123 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %124 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %123, i32 0, i32 2
  %125 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %126 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 4
  store %struct.TYPE_12__* %124, %struct.TYPE_12__** %128, align 8
  %129 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %130 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %135 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 8
  %137 = load i32, i32* %18, align 4
  %138 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %139 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* @DMA_TO_DEVICE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %115
  %145 = load i32, i32* @IB_WR_RDMA_WRITE, align 4
  %146 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %147 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  store i32 %145, i32* %149, align 4
  br label %180

150:                                              ; preds = %115
  %151 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %152 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @rdma_cap_read_inv(i32 %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %159 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %160 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 3
  store i32 %158, i32* %162, align 4
  br label %179

163:                                              ; preds = %150
  %164 = load i32, i32* @IB_WR_RDMA_READ_WITH_INV, align 4
  %165 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %166 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 3
  store i32 %164, i32* %168, align 4
  %169 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %170 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %169, i32 0, i32 0
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %175 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  store i32 %173, i32* %178, align 8
  br label %179

179:                                              ; preds = %163, %157
  br label %180

180:                                              ; preds = %179, %144
  %181 = load i32, i32* %25, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %25, align 4
  %183 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  %184 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %27, align 4
  %192 = load i32, i32* %15, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %15, align 4
  store i32 0, i32* %23, align 4
  br label %194

194:                                              ; preds = %201, %180
  %195 = load i32, i32* %23, align 4
  %196 = load i32, i32* %27, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %200 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %199)
  store %struct.scatterlist* %200, %struct.scatterlist** %14, align 8
  br label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %23, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %23, align 4
  br label %194

204:                                              ; preds = %194
  %205 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %26, align 8
  store %struct.rdma_rw_reg_ctx* %205, %struct.rdma_rw_reg_ctx** %20, align 8
  store i32 0, i32* %16, align 4
  br label %206

206:                                              ; preds = %204
  %207 = load i32, i32* %22, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %22, align 4
  br label %60

209:                                              ; preds = %60
  %210 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %20, align 8
  %211 = icmp ne %struct.rdma_rw_reg_ctx* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %20, align 8
  %214 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %216, align 8
  br label %217

217:                                              ; preds = %212, %209
  %218 = load i32, i32* @RDMA_RW_MR, align 4
  %219 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %220 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %25, align 4
  store i32 %221, i32* %10, align 4
  br label %247

222:                                              ; preds = %85
  br label %223

223:                                              ; preds = %227, %222
  %224 = load i32, i32* %22, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %22, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %223
  %228 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %229 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %230 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %229, i32 0, i32 0
  %231 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %232 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %231, i32 0, i32 1
  %233 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %232, align 8
  %234 = load i32, i32* %22, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %233, i64 %235
  %237 = getelementptr inbounds %struct.rdma_rw_reg_ctx, %struct.rdma_rw_reg_ctx* %236, i32 0, i32 0
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %237, align 8
  %239 = call i32 @ib_mr_pool_put(%struct.ib_qp* %228, i32* %230, %struct.TYPE_16__* %238)
  br label %223

240:                                              ; preds = %223
  %241 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %242 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %241, i32 0, i32 1
  %243 = load %struct.rdma_rw_reg_ctx*, %struct.rdma_rw_reg_ctx** %242, align 8
  %244 = call i32 @kfree(%struct.rdma_rw_reg_ctx* %243)
  br label %245

245:                                              ; preds = %240, %56
  %246 = load i32, i32* %24, align 4
  store i32 %246, i32* %10, align 4
  br label %247

247:                                              ; preds = %245, %217
  %248 = load i32, i32* %10, align 4
  ret i32 %248
}

declare dso_local i32 @rdma_rw_fr_page_list_len(i32, i32) #1

declare dso_local %struct.rdma_rw_reg_ctx* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rdma_rw_init_one_mr(%struct.ib_qp*, i32, %struct.rdma_rw_reg_ctx*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @rdma_cap_read_inv(i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @ib_mr_pool_put(%struct.ib_qp*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @kfree(%struct.rdma_rw_reg_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
