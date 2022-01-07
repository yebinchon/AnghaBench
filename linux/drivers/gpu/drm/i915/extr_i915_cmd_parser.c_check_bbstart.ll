; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_check_bbstart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_check_bbstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"CMD: Rejecting BB_START for ggtt based submission\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"CMD: Recursive BB_START with bad length(%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"CMD: BB_START to 0x%llx jumps out of BB\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"CMD: Rejecting BB_START - truncated whitelist array\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"CMD: BB_START to 0x%llx not a previously executed cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gem_context*, i32*, i32, i32, i32, i32, i32)* @check_bbstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_bbstart(%struct.i915_gem_context* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i915_gem_context*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.i915_gem_context*, %struct.i915_gem_context** %9, align 8
  %21 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @CMDPARSER_USES_GGTT(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %92

29:                                               ; preds = %7
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %92

37:                                               ; preds = %29
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i32, i32* %17, align 4
  %49 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %92

52:                                               ; preds = %37
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @lower_32_bits(i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %18, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %92

68:                                               ; preds = %52
  %69 = load %struct.i915_gem_context*, %struct.i915_gem_context** %9, align 8
  %70 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %92

78:                                               ; preds = %68
  %79 = load i32, i32* %19, align 4
  %80 = load %struct.i915_gem_context*, %struct.i915_gem_context** %9, align 8
  %81 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @test_bit(i32 %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %17, align 4
  %87 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %92

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %85, %74, %67, %47, %32, %25
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i64 @CMDPARSER_USES_GGTT(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
