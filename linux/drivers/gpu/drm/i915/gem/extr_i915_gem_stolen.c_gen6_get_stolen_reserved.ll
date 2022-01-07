; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c_gen6_get_stolen_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c_gen6_get_stolen_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GEN6_STOLEN_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"GEN6_STOLEN_RESERVED = %08x\0A\00", align 1
@GEN6_STOLEN_RESERVED_ENABLE = common dso_local global i32 0, align 4
@GEN6_STOLEN_RESERVED_ADDR_MASK = common dso_local global i32 0, align 4
@GEN6_STOLEN_RESERVED_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32*, i32*)* @gen6_get_stolen_reserved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_get_stolen_reserved(%struct.drm_i915_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @GEN6_STOLEN_RESERVED, align 4
  %9 = call i32 @I915_READ(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GEN6_STOLEN_RESERVED_ENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %39

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GEN6_STOLEN_RESERVED_ADDR_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @GEN6_STOLEN_RESERVED_SIZE_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %33 [
    i32 130, label %25
    i32 128, label %27
    i32 129, label %29
    i32 131, label %31
  ]

25:                                               ; preds = %17
  %26 = load i32*, i32** %6, align 8
  store i32 1048576, i32* %26, align 4
  br label %39

27:                                               ; preds = %17
  %28 = load i32*, i32** %6, align 8
  store i32 524288, i32* %28, align 4
  br label %39

29:                                               ; preds = %17
  %30 = load i32*, i32** %6, align 8
  store i32 262144, i32* %30, align 4
  br label %39

31:                                               ; preds = %17
  %32 = load i32*, i32** %6, align 8
  store i32 131072, i32* %32, align 4
  br label %39

33:                                               ; preds = %17
  %34 = load i32*, i32** %6, align 8
  store i32 1048576, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @GEN6_STOLEN_RESERVED_SIZE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @MISSING_CASE(i32 %37)
  br label %39

39:                                               ; preds = %16, %33, %31, %29, %27, %25
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
