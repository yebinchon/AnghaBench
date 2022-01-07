; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_surf_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_surf_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*, i32)* @intel_surf_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_surf_alignment(%struct.drm_framebuffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %8 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 4096, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %16 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %28 [
    i32 133, label %18
    i32 132, label %21
    i32 130, label %27
    i32 128, label %27
    i32 131, label %27
    i32 129, label %27
  ]

18:                                               ; preds = %14
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %20 = call i32 @intel_linear_alignment(%struct.drm_i915_private* %19)
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %14
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = call i32 @INTEL_GEN(%struct.drm_i915_private* %22)
  %24 = icmp sge i32 %23, 9
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 262144, i32* %3, align 4
  br label %33

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %33

27:                                               ; preds = %14, %14, %14, %14
  store i32 1048576, i32* %3, align 4
  br label %33

28:                                               ; preds = %14
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %30 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MISSING_CASE(i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %27, %26, %25, %18, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_linear_alignment(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
