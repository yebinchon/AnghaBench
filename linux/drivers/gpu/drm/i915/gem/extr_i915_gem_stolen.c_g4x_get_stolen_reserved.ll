; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c_g4x_get_stolen_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c_g4x_get_stolen_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CTG_STOLEN_RESERVED = common dso_local global i32 0, align 4
@ELK_STOLEN_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s_STOLEN_RESERVED = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CTG\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ELK\00", align 1
@G4X_STOLEN_RESERVED_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"ILK stolen reserved found? 0x%08x\0A\00", align 1
@G4X_STOLEN_RESERVED_ADDR2_MASK = common dso_local global i32 0, align 4
@G4X_STOLEN_RESERVED_ADDR1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32*, i32*)* @g4x_get_stolen_reserved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_get_stolen_reserved(%struct.drm_i915_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = call i64 @IS_GM45(%struct.drm_i915_private* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @CTG_STOLEN_RESERVED, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ELK_STOLEN_RESERVED, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i32 @I915_READ(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = call i64 @IS_GM45(%struct.drm_i915_private* %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @G4X_STOLEN_RESERVED_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  br label %65

36:                                               ; preds = %16
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %38 = call i32 @IS_GEN(%struct.drm_i915_private* %37, i32 5)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @WARN(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @G4X_STOLEN_RESERVED_ADDR2_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %65

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @G4X_STOLEN_RESERVED_ADDR2_MASK, align 4
  %49 = and i32 %47, %48
  %50 = shl i32 %49, 16
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @G4X_STOLEN_RESERVED_ADDR1_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %60, %62
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %46, %45, %35
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_GM45(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
