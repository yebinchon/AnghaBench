; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_gvt_ggtt_gmadr_g2h.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_gvt_ggtt_gmadr_g2h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"invalid guest gmadr %llx\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gvt_ggtt_gmadr_g2h(%struct.intel_vgpu* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @vgpu_gmadr_is_valid(%struct.intel_vgpu* %8, i64 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @WARN(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @vgpu_gmadr_is_aperture(%struct.intel_vgpu* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %27 = call i64 @vgpu_aperture_gmadr_base(%struct.intel_vgpu* %26)
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %30 = call i64 @vgpu_aperture_offset(%struct.intel_vgpu* %29)
  %31 = sub nsw i64 %28, %30
  %32 = add nsw i64 %27, %31
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  br label %43

34:                                               ; preds = %20
  %35 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %36 = call i64 @vgpu_hidden_gmadr_base(%struct.intel_vgpu* %35)
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %39 = call i64 @vgpu_hidden_offset(%struct.intel_vgpu* %38)
  %40 = sub nsw i64 %37, %39
  %41 = add nsw i64 %36, %40
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %34, %25
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @WARN(i32, i8*, i64) #1

declare dso_local i32 @vgpu_gmadr_is_valid(%struct.intel_vgpu*, i64) #1

declare dso_local i64 @vgpu_gmadr_is_aperture(%struct.intel_vgpu*, i64) #1

declare dso_local i64 @vgpu_aperture_gmadr_base(%struct.intel_vgpu*) #1

declare dso_local i64 @vgpu_aperture_offset(%struct.intel_vgpu*) #1

declare dso_local i64 @vgpu_hidden_gmadr_base(%struct.intel_vgpu*) #1

declare dso_local i64 @vgpu_hidden_offset(%struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
