; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_wm_latency_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_wm_latency_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.drm_device }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"WM%d %u (%u.%u usec)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32*)* @wm_latency_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_latency_show(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %21 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %34

24:                                               ; preds = %19
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %26 = call i64 @IS_G4X(%struct.drm_i915_private* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 3, i32* %8, align 4
  br label %33

29:                                               ; preds = %24
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = call i32 @ilk_wm_max_level(%struct.drm_i915_private* %30)
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %28
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %37 = call i32 @drm_modeset_lock_all(%struct.drm_device* %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %86, %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %49 = call i32 @INTEL_GEN(%struct.drm_i915_private* %48)
  %50 = icmp sge i32 %49, 9
  br i1 %50, label %63, label %51

51:                                               ; preds = %42
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %53 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %57 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %61 = call i64 @IS_G4X(%struct.drm_i915_private* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55, %51, %42
  %64 = load i32, i32* %9, align 4
  %65 = mul i32 %64, 10
  store i32 %65, i32* %9, align 4
  br label %73

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = mul i32 %70, 5
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %63
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = udiv i32 %81, 10
  %83 = load i32, i32* %9, align 4
  %84 = urem i32 %83, 10
  %85 = call i32 @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %80, i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %38

89:                                               ; preds = %38
  %90 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %91 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %90)
  ret void
}

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @ilk_wm_max_level(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
