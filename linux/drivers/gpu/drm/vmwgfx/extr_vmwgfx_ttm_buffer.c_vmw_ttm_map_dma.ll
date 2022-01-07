; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_buffer.c_vmw_ttm_map_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_buffer.c_vmw_ttm_map_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.vmw_ttm_tt = type { i32, i64, %struct.vmw_sg_table, %struct.TYPE_9__, %struct.TYPE_7__, %struct.vmw_private* }
%struct.vmw_sg_table = type { i32, i64, %struct.TYPE_9__*, i64, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.vmw_private = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ttm_mem_global = type { i32 }
%struct.vmw_piter = type { i32 }

@__const.vmw_ttm_map_dma.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@vmw_ttm_map_dma.sgl_size = internal global i64 0, align 8
@vmw_ttm_map_dma.sgt_size = internal global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_ttm_tt*)* @vmw_ttm_map_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_ttm_map_dma(%struct.vmw_ttm_tt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_ttm_tt*, align 8
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.ttm_mem_global*, align 8
  %6 = alloca %struct.vmw_sg_table*, align 8
  %7 = alloca %struct.ttm_operation_ctx, align 4
  %8 = alloca %struct.vmw_piter, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vmw_ttm_tt* %0, %struct.vmw_ttm_tt** %3, align 8
  %13 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %14 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %13, i32 0, i32 5
  %15 = load %struct.vmw_private*, %struct.vmw_private** %14, align 8
  store %struct.vmw_private* %15, %struct.vmw_private** %4, align 8
  %16 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %17 = call %struct.ttm_mem_global* @vmw_mem_glob(%struct.vmw_private* %16)
  store %struct.ttm_mem_global* %17, %struct.ttm_mem_global** %5, align 8
  %18 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %19 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %18, i32 0, i32 2
  store %struct.vmw_sg_table* %19, %struct.vmw_sg_table** %6, align 8
  %20 = bitcast %struct.ttm_operation_ctx* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.vmw_ttm_map_dma.ctx to i8*), i64 8, i1 false)
  store i32 0, i32* %10, align 4
  %21 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %22 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %201

26:                                               ; preds = %1
  %27 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %28 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %31 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %33 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %38 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %40 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %45 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %47 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %51 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %53 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %52, i32 0, i32 3
  %54 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %55 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %54, i32 0, i32 2
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %55, align 8
  %56 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %57 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %157 [
    i32 129, label %59
    i32 128, label %59
  ]

59:                                               ; preds = %26, %26
  %60 = load i64, i64* @vmw_ttm_map_dma.sgl_size, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @unlikely(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = call i64 @ttm_round_pot(i32 4)
  store i64 %67, i64* @vmw_ttm_map_dma.sgl_size, align 8
  %68 = call i64 @ttm_round_pot(i32 4)
  store i64 %68, i64* @vmw_ttm_map_dma.sgt_size, align 8
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i64, i64* @vmw_ttm_map_dma.sgt_size, align 8
  %71 = load i64, i64* @vmw_ttm_map_dma.sgl_size, align 8
  %72 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %73 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 %71, %74
  %76 = add i64 %70, %75
  %77 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %78 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %80 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %81 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ttm_mem_global_alloc(%struct.ttm_mem_global* %79, i64 %82, %struct.ttm_operation_ctx* %7)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @unlikely(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %69
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %2, align 4
  br label %201

91:                                               ; preds = %69
  %92 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %93 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %92, i32 0, i32 3
  %94 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %95 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %98 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %101 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PAGE_SHIFT, align 8
  %104 = shl i64 %102, %103
  %105 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %106 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %105, i32 0, i32 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dma_get_max_seg_size(i32 %109)
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i32 @__sg_alloc_table_from_pages(%struct.TYPE_9__* %93, i32 %96, i64 %99, i32 0, i64 %104, i32 %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @unlikely(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %91
  br label %194

119:                                              ; preds = %91
  %120 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %121 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %124 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ugt i64 %122, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %119
  %129 = load i64, i64* @vmw_ttm_map_dma.sgl_size, align 8
  %130 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %131 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %134 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %132, %136
  %138 = mul i64 %129, %137
  store i64 %138, i64* %11, align 8
  %139 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %140 = load i64, i64* %11, align 8
  %141 = call i32 @ttm_mem_global_free(%struct.ttm_mem_global* %139, i64 %140)
  %142 = load i64, i64* %11, align 8
  %143 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %144 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = sub i64 %145, %142
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %128, %119
  %148 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %149 = call i32 @vmw_ttm_map_for_dma(%struct.vmw_ttm_tt* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @unlikely(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %185

156:                                              ; preds = %147
  br label %158

157:                                              ; preds = %26
  br label %158

158:                                              ; preds = %157, %156
  store i64 -1, i64* %9, align 8
  %159 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %160 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %160, i32 0, i32 3
  store i64 0, i64* %161, align 8
  %162 = load %struct.vmw_sg_table*, %struct.vmw_sg_table** %6, align 8
  %163 = call i32 @vmw_piter_start(%struct.vmw_piter* %8, %struct.vmw_sg_table* %162, i32 0)
  br label %164

164:                                              ; preds = %180, %158
  %165 = call i64 @vmw_piter_next(%struct.vmw_piter* %8)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %164
  %168 = call i64 @vmw_piter_dma_addr(%struct.vmw_piter* %8)
  store i64 %168, i64* %12, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i64, i64* %9, align 8
  %171 = load i64, i64* @PAGE_SIZE, align 8
  %172 = add nsw i64 %170, %171
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %176 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %174, %167
  %181 = load i64, i64* %12, align 8
  store i64 %181, i64* %9, align 8
  br label %164

182:                                              ; preds = %164
  %183 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %184 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  store i32 0, i32* %2, align 4
  br label %201

185:                                              ; preds = %155
  %186 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %187 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %187, i32 0, i32 2
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = call i32 @sg_free_table(%struct.TYPE_9__* %189)
  %191 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %192 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.vmw_sg_table, %struct.vmw_sg_table* %192, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %193, align 8
  br label %194

194:                                              ; preds = %185, %118
  %195 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %196 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %3, align 8
  %197 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @ttm_mem_global_free(%struct.ttm_mem_global* %195, i64 %198)
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %194, %182, %89, %25
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.ttm_mem_global* @vmw_mem_glob(%struct.vmw_private*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unlikely(i32) #1

declare dso_local i64 @ttm_round_pot(i32) #1

declare dso_local i32 @ttm_mem_global_alloc(%struct.ttm_mem_global*, i64, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @__sg_alloc_table_from_pages(%struct.TYPE_9__*, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @dma_get_max_seg_size(i32) #1

declare dso_local i32 @ttm_mem_global_free(%struct.ttm_mem_global*, i64) #1

declare dso_local i32 @vmw_ttm_map_for_dma(%struct.vmw_ttm_tt*) #1

declare dso_local i32 @vmw_piter_start(%struct.vmw_piter*, %struct.vmw_sg_table*, i32) #1

declare dso_local i64 @vmw_piter_next(%struct.vmw_piter*) #1

declare dso_local i64 @vmw_piter_dma_addr(%struct.vmw_piter*) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
