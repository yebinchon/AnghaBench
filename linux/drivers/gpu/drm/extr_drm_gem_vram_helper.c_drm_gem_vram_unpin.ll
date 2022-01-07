; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_vram_helper.c_drm_gem_vram_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_vram_object = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_gem_vram_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_operation_ctx, align 4
  store %struct.drm_gem_vram_object* %0, %struct.drm_gem_vram_object** %3, align 8
  %7 = bitcast %struct.ttm_operation_ctx* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %9 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %8, i32 0, i32 0
  %10 = call i32 @ttm_bo_reserve(i32* %9, i32 1, i32 0, i32* null)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %17 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %68

25:                                               ; preds = %15
  %26 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %27 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %31 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %68

35:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %39 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %47 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %45
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %60 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %59, i32 0, i32 0
  %61 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %62 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %61, i32 0, i32 1
  %63 = call i32 @ttm_bo_validate(i32* %60, %struct.TYPE_4__* %62, %struct.ttm_operation_ctx* %6)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %72

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %34, %24
  %69 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %70 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %69, i32 0, i32 0
  %71 = call i32 @ttm_bo_unreserve(i32* %70)
  store i32 0, i32* %2, align 4
  br label %77

72:                                               ; preds = %66
  %73 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %3, align 8
  %74 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %73, i32 0, i32 0
  %75 = call i32 @ttm_bo_unreserve(i32* %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %68, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32*) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @ttm_bo_validate(i32*, %struct.TYPE_4__*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @ttm_bo_unreserve(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
