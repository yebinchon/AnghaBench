; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_move_vram_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_move_vram_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { i32, i32* }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.ttm_place = type { i32, i64, i64 }
%struct.ttm_placement = type { i32, i32, %struct.ttm_place*, %struct.ttm_place* }

@TTM_PL_MASK_CACHING = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*)* @radeon_move_vram_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_move_vram_ram(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.ttm_operation_ctx, align 4
  %13 = alloca %struct.ttm_mem_reg*, align 8
  %14 = alloca %struct.ttm_mem_reg, align 8
  %15 = alloca %struct.ttm_place, align 8
  %16 = alloca %struct.ttm_placement, align 8
  %17 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %18 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %12, i32 0, i32 0
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %12, i32 0, i32 1
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %23 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %22, i32 0, i32 1
  store %struct.ttm_mem_reg* %23, %struct.ttm_mem_reg** %13, align 8
  %24 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %25 = bitcast %struct.ttm_mem_reg* %14 to i8*
  %26 = bitcast %struct.ttm_mem_reg* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %14, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %16, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %16, i32 0, i32 3
  store %struct.ttm_place* %15, %struct.ttm_place** %29, align 8
  %30 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %16, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %16, i32 0, i32 2
  store %struct.ttm_place* %15, %struct.ttm_place** %31, align 8
  %32 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %15, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %15, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @TTM_PL_MASK_CACHING, align 4
  %35 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %15, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %39 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %38, %struct.ttm_placement* %16, %struct.ttm_mem_reg* %14, %struct.ttm_operation_ctx* %12)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %5
  %44 = load i32, i32* %17, align 4
  store i32 %44, i32* %6, align 4
  br label %82

45:                                               ; preds = %5
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %14, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ttm_tt_set_placement_caching(i32 %48, i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %78

56:                                               ; preds = %45
  %57 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %58 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ttm_tt_bind(i32 %59, %struct.ttm_mem_reg* %14, %struct.ttm_operation_ctx* %12)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %78

65:                                               ; preds = %56
  %66 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %69 = call i32 @radeon_move_blit(%struct.ttm_buffer_object* %66, i32 1, i32 %67, %struct.ttm_mem_reg* %14, %struct.ttm_mem_reg* %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %78

74:                                               ; preds = %65
  %75 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %76 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %77 = call i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object* %75, %struct.ttm_operation_ctx* %12, %struct.ttm_mem_reg* %76)
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %74, %73, %64, %55
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %80 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %79, %struct.ttm_mem_reg* %14)
  %81 = load i32, i32* %17, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %43
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @ttm_tt_set_placement_caching(i32, i32) #2

declare dso_local i32 @ttm_tt_bind(i32, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @radeon_move_blit(%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*) #2

declare dso_local i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object*, %struct.ttm_operation_ctx*, %struct.ttm_mem_reg*) #2

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
