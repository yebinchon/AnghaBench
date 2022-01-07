; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_pipeline_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_pipeline_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32*, i8*, %struct.TYPE_2__, %struct.ttm_mem_reg, %struct.ttm_bo_device* }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_mem_reg = type { i64, i32* }
%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32, i32, i8* }
%struct.dma_fence = type { i32 }

@TTM_MEMTYPE_FLAG_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_pipeline_move(%struct.ttm_buffer_object* %0, %struct.dma_fence* %1, i32 %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.ttm_bo_device*, align 8
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.ttm_mem_type_manager*, align 8
  %13 = alloca %struct.ttm_mem_type_manager*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %17 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %16, i32 0, i32 4
  %18 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %17, align 8
  store %struct.ttm_bo_device* %18, %struct.ttm_bo_device** %10, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 3
  store %struct.ttm_mem_reg* %20, %struct.ttm_mem_reg** %11, align 8
  %21 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %22 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %21, i32 0, i32 0
  %23 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %22, align 8
  %24 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %23, i64 %26
  store %struct.ttm_mem_type_manager* %27, %struct.ttm_mem_type_manager** %12, align 8
  %28 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  %29 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %28, i32 0, i32 0
  %30 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %29, align 8
  %31 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %32 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %30, i64 %33
  store %struct.ttm_mem_type_manager* %34, %struct.ttm_mem_type_manager** %13, align 8
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %36 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %40 = call i32 @dma_resv_add_excl_fence(i32 %38, %struct.dma_fence* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %82, label %43

43:                                               ; preds = %4
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @dma_fence_put(i8* %46)
  %48 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %49 = call i8* @dma_fence_get(%struct.dma_fence* %48)
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %53 = call i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object* %52, %struct.ttm_buffer_object** %15)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %159

58:                                               ; preds = %43
  %59 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %15, align 8
  %60 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %64 = call i32 @dma_resv_add_excl_fence(i32 %62, %struct.dma_fence* %63)
  %65 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %66 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %58
  %72 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %15, align 8
  %73 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  br label %77

74:                                               ; preds = %58
  %75 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %76 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %15, align 8
  %79 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %78)
  %80 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %15, align 8
  %81 = call i32 @ttm_bo_put(%struct.ttm_buffer_object* %80)
  br label %152

82:                                               ; preds = %4
  %83 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %84 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %127

89:                                               ; preds = %82
  %90 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %91 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %90, i32 0, i32 1
  %92 = call i32 @spin_lock(i32* %91)
  %93 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %94 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %99 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %100 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @dma_fence_is_later(%struct.dma_fence* %98, i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97, %89
  %105 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %106 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @dma_fence_put(i8* %107)
  %109 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %110 = call i8* @dma_fence_get(%struct.dma_fence* %109)
  %111 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %112 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %104, %97
  %114 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %115 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %114, i32 0, i32 1
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %118 = call i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object* %117)
  %119 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %120 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @dma_fence_put(i8* %121)
  %123 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %124 = call i8* @dma_fence_get(%struct.dma_fence* %123)
  %125 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %126 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  br label %151

127:                                              ; preds = %82
  %128 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %129 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %128, i32 0, i32 0)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %5, align 4
  br label %159

134:                                              ; preds = %127
  %135 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %13, align 8
  %136 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %143 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @ttm_tt_destroy(i32* %144)
  %146 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %147 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %146, i32 0, i32 0
  store i32* null, i32** %147, align 8
  br label %148

148:                                              ; preds = %141, %134
  %149 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %150 = call i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object* %149)
  br label %151

151:                                              ; preds = %148, %113
  br label %152

152:                                              ; preds = %151, %77
  %153 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %154 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %155 = bitcast %struct.ttm_mem_reg* %153 to i8*
  %156 = bitcast %struct.ttm_mem_reg* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %155, i8* align 8 %156, i64 16, i1 false)
  %157 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %158 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %157, i32 0, i32 1
  store i32* null, i32** %158, align 8
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %152, %132, %56
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @dma_resv_add_excl_fence(i32, %struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(i8*) #1

declare dso_local i8* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object*, %struct.ttm_buffer_object**) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_put(%struct.ttm_buffer_object*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @dma_fence_is_later(%struct.dma_fence*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32) #1

declare dso_local i32 @ttm_tt_destroy(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
