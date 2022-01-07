; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_debugfs.c_vgpu_scan_nonprivbb_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_debugfs.c_vgpu_scan_nonprivbb_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.intel_engine_cs** }
%struct.intel_engine_cs = type { i32 }

@I915_NUM_ENGINES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"gvt: vgpu %d turns on non-privileged batch buffers scanning on Engines:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"low performance expected.\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @vgpu_scan_nonprivbb_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgpu_scan_nonprivbb_set(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_engine_cs*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.intel_vgpu*
  store %struct.intel_vgpu* %14, %struct.intel_vgpu** %6, align 8
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %18, align 8
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %7, align 8
  %20 = load i32, i32* @I915_NUM_ENGINES, align 4
  %21 = shl i32 1, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %26 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %94

35:                                               ; preds = %31
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8* %44, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %82, %35
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @I915_NUM_ENGINES, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %52, i64 %54
  %56 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %55, align 8
  store %struct.intel_engine_cs* %56, %struct.intel_engine_cs** %12, align 8
  %57 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %12, align 8
  %58 = icmp ne %struct.intel_engine_cs* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %12, align 8
  %68 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snprintf(i8* %66, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %10, align 8
  br label %81

75:                                               ; preds = %59, %49
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 1, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %75, %65
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %45

85:                                               ; preds = %45
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %85
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %91, %34
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %97 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %30
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
