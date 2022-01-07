; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_move_ttm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_move_ttm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_mem_reg, %struct.ttm_tt* }
%struct.ttm_mem_reg = type { i64, i32*, i32 }
%struct.ttm_tt = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to expire sync object before unbinding TTM\0A\00", align 1
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@TTM_PL_MASK_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object* %0, %struct.ttm_operation_ctx* %1, %struct.ttm_mem_reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca %struct.ttm_operation_ctx*, align 8
  %7 = alloca %struct.ttm_mem_reg*, align 8
  %8 = alloca %struct.ttm_tt*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store %struct.ttm_operation_ctx* %1, %struct.ttm_operation_ctx** %6, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %7, align 8
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %11, i32 0, i32 1
  %13 = load %struct.ttm_tt*, %struct.ttm_tt** %12, align 8
  store %struct.ttm_tt* %13, %struct.ttm_tt** %8, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 0
  store %struct.ttm_mem_reg* %15, %struct.ttm_mem_reg** %9, align 8
  %16 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %3
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %23 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %22, i32 %25, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ERESTARTSYS, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %96

44:                                               ; preds = %21
  %45 = load %struct.ttm_tt*, %struct.ttm_tt** %8, align 8
  %46 = call i32 @ttm_tt_unbind(%struct.ttm_tt* %45)
  %47 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %48 = call i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object* %47)
  %49 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %50 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %49, i32 0, i32 2
  %51 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %52 = load i32, i32* @TTM_PL_MASK_MEM, align 4
  %53 = call i32 @ttm_flag_masked(i32* %50, i32 %51, i32 %52)
  %54 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %55 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %56 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %44, %3
  %58 = load %struct.ttm_tt*, %struct.ttm_tt** %8, align 8
  %59 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %60 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ttm_tt_set_placement_caching(%struct.ttm_tt* %58, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %96

70:                                               ; preds = %57
  %71 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %72 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load %struct.ttm_tt*, %struct.ttm_tt** %8, align 8
  %78 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %79 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %80 = call i32 @ttm_tt_bind(%struct.ttm_tt* %77, %struct.ttm_mem_reg* %78, %struct.ttm_operation_ctx* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %96

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %70
  %90 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %91 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %92 = bitcast %struct.ttm_mem_reg* %90 to i8*
  %93 = bitcast %struct.ttm_mem_reg* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 24, i1 false)
  %94 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %95 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %94, i32 0, i32 1
  store i32* null, i32** %95, align 8
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %89, %86, %68, %42
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ttm_tt_unbind(%struct.ttm_tt*) #1

declare dso_local i32 @ttm_bo_free_old_node(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_flag_masked(i32*, i32, i32) #1

declare dso_local i32 @ttm_tt_set_placement_caching(%struct.ttm_tt*, i32) #1

declare dso_local i32 @ttm_tt_bind(%struct.ttm_tt*, %struct.ttm_mem_reg*, %struct.ttm_operation_ctx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
