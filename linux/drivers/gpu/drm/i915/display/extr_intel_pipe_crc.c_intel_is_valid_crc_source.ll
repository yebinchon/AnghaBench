; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_intel_is_valid_crc_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_pipe_crc.c_intel_is_valid_crc_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @intel_is_valid_crc_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_is_valid_crc_source(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = call i64 @IS_GEN(%struct.drm_i915_private* %6, i32 2)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @i8xx_crc_source_valid(%struct.drm_i915_private* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = call i32 @INTEL_GEN(%struct.drm_i915_private* %14)
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @i9xx_crc_source_valid(%struct.drm_i915_private* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %13
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @vlv_crc_source_valid(%struct.drm_i915_private* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %25
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %35 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %34, i32 5, i32 6)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ilk_crc_source_valid(%struct.drm_i915_private* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %33
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %43 = call i32 @INTEL_GEN(%struct.drm_i915_private* %42)
  %44 = icmp slt i32 %43, 9
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @ivb_crc_source_valid(%struct.drm_i915_private* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @skl_crc_source_valid(%struct.drm_i915_private* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %45, %37, %29, %17, %9
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @i8xx_crc_source_valid(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @i9xx_crc_source_valid(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_crc_source_valid(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @ilk_crc_source_valid(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ivb_crc_source_valid(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @skl_crc_source_valid(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
