; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_vram_object = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_vram_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_operation_ctx, align 4
  store %struct.drm_gem_vram_object* %0, %struct.drm_gem_vram_object** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = bitcast %struct.ttm_operation_ctx* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %11 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %10, i32 0, i32 0
  %12 = call i32 @ttm_bo_reserve(i32* %11, i32 1, i32 0, i32* null)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %19 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %62

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @drm_gem_vram_placement(%struct.drm_gem_vram_object* %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %23
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %34 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %40 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %41 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %39
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %54 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %53, i32 0, i32 0
  %55 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %56 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %55, i32 0, i32 2
  %57 = call i32 @ttm_bo_validate(i32* %54, %struct.TYPE_4__* %56, %struct.ttm_operation_ctx* %8)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %70

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %22
  %63 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %64 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %68 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %67, i32 0, i32 0
  %69 = call i32 @ttm_bo_unreserve(i32* %68)
  store i32 0, i32* %3, align 4
  br label %75

70:                                               ; preds = %60
  %71 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %72 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %71, i32 0, i32 0
  %73 = call i32 @ttm_bo_unreserve(i32* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %62, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32*) #2

declare dso_local i32 @drm_gem_vram_placement(%struct.drm_gem_vram_object*, i64) #2

declare dso_local i32 @ttm_bo_validate(i32*, %struct.TYPE_4__*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @ttm_bo_unreserve(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
