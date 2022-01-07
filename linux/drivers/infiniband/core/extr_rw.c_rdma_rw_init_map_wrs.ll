; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_init_map_wrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_init_map_wrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_rw_ctx = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.ib_sge*, %struct.ib_rdma_wr* }
%struct.ib_sge = type { i64, i64, i32 }
%struct.ib_rdma_wr = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, %struct.ib_sge*, i32 }
%struct.ib_qp = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_WR_RDMA_WRITE = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i32 0, align 4
@RDMA_RW_MULTI_WR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_rw_ctx*, %struct.ib_qp*, %struct.scatterlist*, i64, i64, i64, i64, i32)* @rdma_rw_init_map_wrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_rw_init_map_wrs(%struct.rdma_rw_ctx* %0, %struct.ib_qp* %1, %struct.scatterlist* %2, i64 %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdma_rw_ctx*, align 8
  %11 = alloca %struct.ib_qp*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.ib_sge*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.ib_rdma_wr*, align 8
  %24 = alloca i64, align 8
  store %struct.rdma_rw_ctx* %0, %struct.rdma_rw_ctx** %10, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %11, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %8
  %29 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %30 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  br label %36

32:                                               ; preds = %8
  %33 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %34 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i64 [ %31, %28 ], [ %35, %32 ]
  store i64 %37, i64* %18, align 8
  store i64 0, i64* %20, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %18, align 8
  %40 = call i64 @DIV_ROUND_UP(i64 %38, i64 %39)
  %41 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %42 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kcalloc(i64 %43, i32 24, i32 %44)
  %46 = bitcast i8* %45 to %struct.ib_sge*
  store %struct.ib_sge* %46, %struct.ib_sge** %19, align 8
  %47 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %48 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store %struct.ib_sge* %46, %struct.ib_sge** %49, align 8
  %50 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.ib_sge*, %struct.ib_sge** %52, align 8
  %54 = icmp ne %struct.ib_sge* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %36
  br label %196

56:                                               ; preds = %36
  %57 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %58 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kcalloc(i64 %59, i32 48, i32 %60)
  %62 = bitcast i8* %61 to %struct.ib_rdma_wr*
  %63 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %64 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store %struct.ib_rdma_wr* %62, %struct.ib_rdma_wr** %65, align 8
  %66 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %67 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %68, align 8
  %70 = icmp ne %struct.ib_rdma_wr* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %56
  br label %190

72:                                               ; preds = %56
  store i64 0, i64* %21, align 8
  br label %73

73:                                               ; preds = %179, %72
  %74 = load i64, i64* %21, align 8
  %75 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %76 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %182

79:                                               ; preds = %73
  %80 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %81 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %82, align 8
  %84 = load i64, i64* %21, align 8
  %85 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %83, i64 %84
  store %struct.ib_rdma_wr* %85, %struct.ib_rdma_wr** %23, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %18, align 8
  %88 = call i64 @min(i64 %86, i64 %87)
  store i64 %88, i64* %24, align 8
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %79
  %93 = load i32, i32* @IB_WR_RDMA_WRITE, align 4
  %94 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %23, align 8
  %95 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 8
  br label %102

97:                                               ; preds = %79
  %98 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %99 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %23, align 8
  %100 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %20, align 8
  %105 = add i64 %103, %104
  %106 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %23, align 8
  %107 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %23, align 8
  %110 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %24, align 8
  %112 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %23, align 8
  %113 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  %115 = load %struct.ib_sge*, %struct.ib_sge** %19, align 8
  %116 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %23, align 8
  %117 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  store %struct.ib_sge* %115, %struct.ib_sge** %118, align 8
  store i64 0, i64* %22, align 8
  br label %119

119:                                              ; preds = %152, %102
  %120 = load i64, i64* %22, align 8
  %121 = load i64, i64* %24, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %157

123:                                              ; preds = %119
  %124 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %125 = call i64 @sg_dma_address(%struct.scatterlist* %124)
  %126 = load i64, i64* %14, align 8
  %127 = add i64 %125, %126
  %128 = load %struct.ib_sge*, %struct.ib_sge** %19, align 8
  %129 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %131 = call i64 @sg_dma_len(%struct.scatterlist* %130)
  %132 = load i64, i64* %14, align 8
  %133 = sub i64 %131, %132
  %134 = load %struct.ib_sge*, %struct.ib_sge** %19, align 8
  %135 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %137 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %136, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ib_sge*, %struct.ib_sge** %19, align 8
  %142 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.ib_sge*, %struct.ib_sge** %19, align 8
  %144 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %20, align 8
  %147 = add i64 %146, %145
  store i64 %147, i64* %20, align 8
  %148 = load %struct.ib_sge*, %struct.ib_sge** %19, align 8
  %149 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %148, i32 1
  store %struct.ib_sge* %149, %struct.ib_sge** %19, align 8
  %150 = load i64, i64* %13, align 8
  %151 = add i64 %150, -1
  store i64 %151, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %152

152:                                              ; preds = %123
  %153 = load i64, i64* %22, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %22, align 8
  %155 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %156 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %155)
  store %struct.scatterlist* %156, %struct.scatterlist** %12, align 8
  br label %119

157:                                              ; preds = %119
  %158 = load i64, i64* %21, align 8
  %159 = add i64 %158, 1
  %160 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %161 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %159, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %157
  %165 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %166 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %167, align 8
  %169 = load i64, i64* %21, align 8
  %170 = add i64 %169, 1
  %171 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %168, i64 %170
  %172 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %171, i32 0, i32 2
  br label %174

173:                                              ; preds = %157
  br label %174

174:                                              ; preds = %173, %164
  %175 = phi %struct.TYPE_5__* [ %172, %164 ], [ null, %173 ]
  %176 = load %struct.ib_rdma_wr*, %struct.ib_rdma_wr** %23, align 8
  %177 = getelementptr inbounds %struct.ib_rdma_wr, %struct.ib_rdma_wr* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  store %struct.TYPE_5__* %175, %struct.TYPE_5__** %178, align 8
  br label %179

179:                                              ; preds = %174
  %180 = load i64, i64* %21, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %21, align 8
  br label %73

182:                                              ; preds = %73
  %183 = load i32, i32* @RDMA_RW_MULTI_WR, align 4
  %184 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %185 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %187 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %9, align 4
  br label %199

190:                                              ; preds = %71
  %191 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %10, align 8
  %192 = getelementptr inbounds %struct.rdma_rw_ctx, %struct.rdma_rw_ctx* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load %struct.ib_sge*, %struct.ib_sge** %193, align 8
  %195 = call i32 @kfree(%struct.ib_sge* %194)
  br label %196

196:                                              ; preds = %190, %55
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %196, %182
  %200 = load i32, i32* %9, align 4
  ret i32 %200
}

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @kfree(%struct.ib_sge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
