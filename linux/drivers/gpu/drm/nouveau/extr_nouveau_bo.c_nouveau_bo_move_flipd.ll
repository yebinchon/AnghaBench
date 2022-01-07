; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move_flipd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move_flipd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32* }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.ttm_place = type { i32, i32, i32 }
%struct.ttm_placement = type { i32, i32, %struct.ttm_place*, %struct.ttm_place* }

@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@TTM_PL_MASK_CACHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*)* @nouveau_bo_move_flipd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bo_move_flipd(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.ttm_operation_ctx, align 4
  %13 = alloca %struct.ttm_place, align 4
  %14 = alloca %struct.ttm_placement, align 8
  %15 = alloca %struct.ttm_mem_reg, align 8
  %16 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %17 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %12, i32 0, i32 0
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %12, i32 0, i32 1
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %13, i32 0, i32 0
  %22 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %23 = load i32, i32* @TTM_PL_MASK_CACHING, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %13, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %13, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %14, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %14, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %14, i32 0, i32 2
  store %struct.ttm_place* %13, %struct.ttm_place** %29, align 8
  %30 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %14, i32 0, i32 3
  store %struct.ttm_place* %13, %struct.ttm_place** %30, align 8
  %31 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %32 = bitcast %struct.ttm_mem_reg* %15 to i8*
  %33 = bitcast %struct.ttm_mem_reg* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %15, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %36 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %35, %struct.ttm_placement* %14, %struct.ttm_mem_reg* %15, %struct.ttm_operation_ctx* %12)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %6, align 4
  br label %65

41:                                               ; preds = %5
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %43 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ttm_tt_bind(i32 %44, %struct.ttm_mem_reg* %15, %struct.ttm_operation_ctx* %12)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %61

49:                                               ; preds = %41
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @nouveau_bo_move_m2mf(%struct.ttm_buffer_object* %50, i32 1, i32 %51, i32 %52, %struct.ttm_mem_reg* %15)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %61

57:                                               ; preds = %49
  %58 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %59 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %60 = call i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object* %58, %struct.ttm_operation_ctx* %12, %struct.ttm_mem_reg* %59)
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %57, %56, %48
  %62 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %63 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %62, %struct.ttm_mem_reg* %15)
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %39
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @ttm_tt_bind(i32, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @nouveau_bo_move_m2mf(%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*) #2

declare dso_local i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object*, %struct.ttm_operation_ctx*, %struct.ttm_mem_reg*) #2

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
