; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_gvt_ggtt_validate_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_gvt_ggtt_validate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid ggtt range at 0x%llx, size: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gvt_ggtt_validate_range(%struct.intel_vgpu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @vgpu_gmadr_is_valid(%struct.intel_vgpu* %11, i64 %12)
  store i32 %13, i32* %4, align 4
  br label %47

14:                                               ; preds = %3
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @vgpu_gmadr_is_aperture(%struct.intel_vgpu* %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %21, %22
  %24 = sub nsw i64 %23, 1
  %25 = call i64 @vgpu_gmadr_is_aperture(%struct.intel_vgpu* %20, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %47

28:                                               ; preds = %19, %14
  %29 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @vgpu_gmadr_is_hidden(%struct.intel_vgpu* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %35, %36
  %38 = sub nsw i64 %37, 1
  %39 = call i64 @vgpu_gmadr_is_hidden(%struct.intel_vgpu* %34, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %47

42:                                               ; preds = %33, %28
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @gvt_dbg_mm(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %41, %27, %10
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @vgpu_gmadr_is_valid(%struct.intel_vgpu*, i64) #1

declare dso_local i64 @vgpu_gmadr_is_aperture(%struct.intel_vgpu*, i64) #1

declare dso_local i64 @vgpu_gmadr_is_hidden(%struct.intel_vgpu*, i64) #1

declare dso_local i32 @gvt_dbg_mm(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
