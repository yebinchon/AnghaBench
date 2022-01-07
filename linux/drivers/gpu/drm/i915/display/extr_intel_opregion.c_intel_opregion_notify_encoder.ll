; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_notify_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_notify_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PORT_E = common dso_local global i32 0, align 4
@DISPLAY_TYPE_CRT = common dso_local global i32 0, align 4
@DISPLAY_TYPE_EXTERNAL_FLAT_PANEL = common dso_local global i32 0, align 4
@DISPLAY_TYPE_INTERNAL_FLAT_PANEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unsupported intel_encoder type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SWSCI_SBCB_DISPLAY_POWER_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_opregion_notify_encoder(%struct.intel_encoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %16 = call i32 @HAS_DDI(%struct.drm_i915_private* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 130
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %29

25:                                               ; preds = %19
  %26 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %27 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PORT_E, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %41

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %34, %33
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, 1024
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %49 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %57 [
    i32 134, label %51
    i32 133, label %53
    i32 132, label %53
    i32 128, label %53
    i32 131, label %53
    i32 129, label %55
    i32 130, label %55
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* @DISPLAY_TYPE_CRT, align 4
  store i32 %52, i32* %8, align 4
  br label %64

53:                                               ; preds = %47, %47, %47, %47
  %54 = load i32, i32* @DISPLAY_TYPE_EXTERNAL_FLAT_PANEL, align 4
  store i32 %54, i32* %8, align 4
  br label %64

55:                                               ; preds = %47, %47
  %56 = load i32, i32* @DISPLAY_TYPE_INTERNAL_FLAT_PANEL, align 4
  store i32 %56, i32* %8, align 4
  br label %64

57:                                               ; preds = %47
  %58 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %59 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %76

64:                                               ; preds = %55, %53, %51
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 3
  %68 = add nsw i32 16, %67
  %69 = shl i32 %65, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %73 = load i32, i32* @SWSCI_SBCB_DISPLAY_POWER_STATE, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @swsci(%struct.drm_i915_private* %72, i32 %73, i32 %74, i32* null)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %64, %57, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @swsci(%struct.drm_i915_private*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
