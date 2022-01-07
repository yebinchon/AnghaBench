; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_move_vram_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_move_vram_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32, %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { i32, i32* }
%struct.ttm_operation_ctx = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.ttm_place = type { i32, i64, i64 }
%struct.ttm_placement = type { i32, i32, %struct.ttm_place*, %struct.ttm_place* }

@TTM_PL_MASK_CACHING = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to find GTT space for blit from VRAM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, %struct.ttm_operation_ctx*, %struct.ttm_mem_reg*)* @amdgpu_move_vram_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_move_vram_ram(%struct.ttm_buffer_object* %0, i32 %1, %struct.ttm_operation_ctx* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_operation_ctx*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.ttm_mem_reg, align 8
  %13 = alloca %struct.ttm_place, align 8
  %14 = alloca %struct.ttm_placement, align 8
  %15 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ttm_operation_ctx* %2, %struct.ttm_operation_ctx** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %17 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %16, i32 0, i32 2
  store %struct.ttm_mem_reg* %17, %struct.ttm_mem_reg** %11, align 8
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %20)
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %10, align 8
  %22 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %23 = bitcast %struct.ttm_mem_reg* %12 to i8*
  %24 = bitcast %struct.ttm_mem_reg* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  %25 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %12, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %14, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %14, i32 0, i32 3
  store %struct.ttm_place* %13, %struct.ttm_place** %27, align 8
  %28 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %14, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %14, i32 0, i32 2
  store %struct.ttm_place* %13, %struct.ttm_place** %29, align 8
  %30 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %13, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %13, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @TTM_PL_MASK_CACHING, align 4
  %33 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %13, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %37 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %38 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %36, %struct.ttm_placement* %14, %struct.ttm_mem_reg* %12, %struct.ttm_operation_ctx* %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %5, align 4
  br label %87

45:                                               ; preds = %4
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ttm_tt_set_placement_caching(i32 %48, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %83

56:                                               ; preds = %45
  %57 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %58 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %61 = call i32 @ttm_tt_bind(i32 %59, %struct.ttm_mem_reg* %12, %struct.ttm_operation_ctx* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %83

66:                                               ; preds = %56
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %73 = call i32 @amdgpu_move_blit(%struct.ttm_buffer_object* %67, i32 %68, i32 %71, %struct.ttm_mem_reg* %12, %struct.ttm_mem_reg* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %83

78:                                               ; preds = %66
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %80 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %8, align 8
  %81 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %82 = call i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object* %79, %struct.ttm_operation_ctx* %80, %struct.ttm_mem_reg* %81)
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %78, %77, %65, %55
  %84 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %85 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %84, %struct.ttm_mem_reg* %12)
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %42
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ttm_tt_set_placement_caching(i32, i32) #1

declare dso_local i32 @ttm_tt_bind(i32, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @amdgpu_move_blit(%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object*, %struct.ttm_operation_ctx*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
