; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_broadwell_sseu_device_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_broadwell_sseu_device_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.sseu_dev_info = type { i32, i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32* }

@GEN8_GT_SLICE_INFO = common dso_local global i32 0, align 4
@GEN8_LSLICESTAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.sseu_dev_info*)* @broadwell_sseu_device_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @broadwell_sseu_device_status(%struct.drm_i915_private* %0, %struct.sseu_dev_info* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.sseu_dev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.sseu_dev_info* %1, %struct.sseu_dev_info** %4, align 8
  %8 = load i32, i32* @GEN8_GT_SLICE_INFO, align 4
  %9 = call i32 @I915_READ(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GEN8_LSLICESTAT_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %14 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %16 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %91

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %26 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %50, %19
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %30 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @fls(i32 %31)
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = call %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %45 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %27

53:                                               ; preds = %27
  %54 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %55 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %58 = call i32 @intel_sseu_subslice_total(%struct.sseu_dev_info* %57)
  %59 = mul nsw i32 %56, %58
  %60 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %61 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %87, %53
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %65 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @fls(i32 %66)
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %62
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %71 = call %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @hweight8(i32 %79)
  %81 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %82 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  br label %87

87:                                               ; preds = %69
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %62

90:                                               ; preds = %62
  br label %91

91:                                               ; preds = %90, %2
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @intel_sseu_subslice_total(%struct.sseu_dev_info*) #1

declare dso_local i64 @hweight8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
