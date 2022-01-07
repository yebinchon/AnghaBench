; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_ring_freq_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_ring_freq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GEN9_FREQ_SCALER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"GPU freq (MHz)\09Effective CPU freq (MHz)\09Effective Ring freq (MHz)\0A\00", align 1
@GEN6_PCODE_READ_MIN_FREQ_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%d\09\09%d\09\09\09\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_ring_freq_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_ring_freq_table(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_rps*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @node_to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.intel_rps* %19, %struct.intel_rps** %7, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %21 = call i32 @HAS_LLC(%struct.drm_i915_private* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %97

26:                                               ; preds = %2
  %27 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %28 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.intel_rps*, %struct.intel_rps** %7, align 8
  %31 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %34 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %38 = call i32 @INTEL_GEN(%struct.drm_i915_private* %37)
  %39 = icmp sge i32 %38, 10
  br i1 %39, label %40, label %47

40:                                               ; preds = %36, %26
  %41 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  %42 = load i32, i32* %9, align 4
  %43 = udiv i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  %45 = load i32, i32* %8, align 4
  %46 = udiv i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %40, %36
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = call i32 @seq_puts(%struct.seq_file* %48, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = call i32 @intel_runtime_pm_get(i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %89, %47
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %61 = load i32, i32* @GEN6_PCODE_READ_MIN_FREQ_TABLE, align 4
  %62 = call i32 @sandybridge_pcode_read(%struct.drm_i915_private* %60, i32 %61, i32* %12, i32* null)
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %67 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %71 = call i32 @INTEL_GEN(%struct.drm_i915_private* %70)
  %72 = icmp sge i32 %71, 10
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %58
  %74 = load i32, i32* @GEN9_FREQ_SCALER, align 4
  br label %76

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 1, %75 ]
  %78 = mul i32 %65, %77
  %79 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %64, i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = ashr i32 %80, 0
  %82 = and i32 %81, 255
  %83 = mul nsw i32 %82, 100
  %84 = load i32, i32* %12, align 4
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 255
  %87 = mul nsw i32 %86, 100
  %88 = call i32 @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %54

92:                                               ; preds = %54
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 0
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @intel_runtime_pm_put(i32* %94, i32 %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %23
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @HAS_LLC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @sandybridge_pcode_read(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @intel_gpu_freq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
