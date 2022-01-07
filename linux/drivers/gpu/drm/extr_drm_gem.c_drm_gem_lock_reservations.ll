; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_lock_reservations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_lock_reservations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

@reservation_ww_class = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_lock_reservations(%struct.drm_gem_object** %0, i32 %1, %struct.ww_acquire_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_gem_object**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ww_acquire_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_gem_object** %0, %struct.drm_gem_object*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ww_acquire_ctx* %2, %struct.ww_acquire_ctx** %7, align 8
  store i32 -1, i32* %8, align 4
  %13 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %14 = call i32 @ww_acquire_init(%struct.ww_acquire_ctx* %13, i32* @reservation_ww_class)
  br label %15

15:                                               ; preds = %96, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %19, i64 %21
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %22, align 8
  store %struct.drm_gem_object* %23, %struct.drm_gem_object** %11, align 8
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %28 = call i32 @dma_resv_lock_slow_interruptible(i32 %26, %struct.ww_acquire_ctx* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %33 = call i32 @ww_acquire_done(%struct.ww_acquire_ctx* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %109

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %15
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %103, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %106

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %103

46:                                               ; preds = %41
  %47 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %47, i64 %49
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %50, align 8
  %52 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %55 = call i32 @dma_resv_lock_interruptible(i32 %53, %struct.ww_acquire_ctx* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %72, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %5, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %64, i64 %66
  %68 = load %struct.drm_gem_object*, %struct.drm_gem_object** %67, align 8
  %69 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dma_resv_unlock(i32 %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %59

75:                                               ; preds = %59
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %83, i64 %85
  %87 = load %struct.drm_gem_object*, %struct.drm_gem_object** %86, align 8
  %88 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dma_resv_unlock(i32 %89)
  br label %91

91:                                               ; preds = %82, %78, %75
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @EDEADLK, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %8, align 4
  br label %15

98:                                               ; preds = %91
  %99 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %100 = call i32 @ww_acquire_done(%struct.ww_acquire_ctx* %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %109

102:                                              ; preds = %46
  br label %103

103:                                              ; preds = %102, %45
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %37

106:                                              ; preds = %37
  %107 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %7, align 8
  %108 = call i32 @ww_acquire_done(%struct.ww_acquire_ctx* %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %98, %31
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @ww_acquire_init(%struct.ww_acquire_ctx*, i32*) #1

declare dso_local i32 @dma_resv_lock_slow_interruptible(i32, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @ww_acquire_done(%struct.ww_acquire_ctx*) #1

declare dso_local i32 @dma_resv_lock_interruptible(i32, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @dma_resv_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
