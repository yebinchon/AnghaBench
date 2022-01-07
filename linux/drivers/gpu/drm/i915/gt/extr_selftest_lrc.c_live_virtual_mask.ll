; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_lrc.c_live_virtual_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_lrc.c_live_virtual_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, %struct.intel_gt }
%struct.TYPE_2__ = type { i32 }
%struct.intel_gt = type { %struct.intel_engine_cs*** }
%struct.intel_engine_cs = type { i32 }

@MAX_ENGINE_INSTANCE = common dso_local global i32 0, align 4
@MAX_ENGINE_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @live_virtual_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @live_virtual_mask(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_gt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load i32, i32* @MAX_ENGINE_INSTANCE, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca %struct.intel_engine_cs*, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 1
  store %struct.intel_gt* %21, %struct.intel_gt** %7, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = call i64 @USES_GUC_SUBMISSION(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %95

26:                                               ; preds = %1
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %85, %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAX_ENGINE_CLASS, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MAX_ENGINE_INSTANCE, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %42 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %41, i32 0, i32 0
  %43 = load %struct.intel_engine_cs***, %struct.intel_engine_cs**** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.intel_engine_cs**, %struct.intel_engine_cs*** %43, i64 %45
  %47 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %47, i64 %49
  %51 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %50, align 8
  %52 = icmp ne %struct.intel_engine_cs* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  br label %73

54:                                               ; preds = %40
  %55 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %56 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %55, i32 0, i32 0
  %57 = load %struct.intel_engine_cs***, %struct.intel_engine_cs**** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.intel_engine_cs**, %struct.intel_engine_cs*** %57, i64 %59
  %61 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %61, i64 %63
  %65 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %19, i64 %68
  store %struct.intel_engine_cs* %65, %struct.intel_engine_cs** %69, align 8
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %36

73:                                               ; preds = %53, %36
  %74 = load i32, i32* %12, align 4
  %75 = icmp ult i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %85

77:                                               ; preds = %73
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @mask_virtual_engine(%struct.drm_i915_private* %78, %struct.intel_engine_cs** %19, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %89

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %76
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %31

88:                                               ; preds = %31
  br label %89

89:                                               ; preds = %88, %83
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %95

95:                                               ; preds = %89, %25
  %96 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @USES_GUC_SUBMISSION(%struct.drm_i915_private*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mask_virtual_engine(%struct.drm_i915_private*, %struct.intel_engine_cs**, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
