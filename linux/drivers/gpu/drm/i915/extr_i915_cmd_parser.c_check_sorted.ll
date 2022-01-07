; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_check_sorted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_check_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32 }
%struct.drm_i915_reg_descriptor = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"CMD: %s [%d] register table not sorted: entry=%d reg=0x%08X prev=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*, %struct.drm_i915_reg_descriptor*, i32)* @check_sorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sorted(%struct.intel_engine_cs* %0, %struct.drm_i915_reg_descriptor* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.drm_i915_reg_descriptor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store %struct.drm_i915_reg_descriptor* %1, %struct.drm_i915_reg_descriptor** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %39, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load %struct.drm_i915_reg_descriptor*, %struct.drm_i915_reg_descriptor** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.drm_i915_reg_descriptor, %struct.drm_i915_reg_descriptor* %16, i64 %18
  %20 = getelementptr inbounds %struct.drm_i915_reg_descriptor, %struct.drm_i915_reg_descriptor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @i915_mmio_reg_offset(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %15
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %28 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %31 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %33, i64 %34, i64 %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %26, %15
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local i64 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
