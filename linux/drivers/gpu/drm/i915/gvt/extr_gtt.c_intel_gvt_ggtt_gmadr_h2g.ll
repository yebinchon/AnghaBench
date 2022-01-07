; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_gvt_ggtt_gmadr_h2g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_gvt_ggtt_gmadr_h2g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid host gmadr %llx\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gvt_ggtt_gmadr_h2g(%struct.intel_vgpu* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @gvt_gmadr_is_valid(i32 %10, i64 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @WARN(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EACCES, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @gvt_gmadr_is_aperture(i32 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %31 = call i64 @vgpu_aperture_gmadr_base(%struct.intel_vgpu* %30)
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %34 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @gvt_aperture_gmadr_base(i32 %35)
  %37 = sub nsw i64 %32, %36
  %38 = add nsw i64 %31, %37
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  br label %51

40:                                               ; preds = %22
  %41 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %42 = call i64 @vgpu_hidden_gmadr_base(%struct.intel_vgpu* %41)
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %45 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @gvt_hidden_gmadr_base(i32 %46)
  %48 = sub nsw i64 %43, %47
  %49 = add nsw i64 %42, %48
  %50 = load i64*, i64** %7, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %40, %29
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @WARN(i32, i8*, i64) #1

declare dso_local i32 @gvt_gmadr_is_valid(i32, i64) #1

declare dso_local i64 @gvt_gmadr_is_aperture(i32, i64) #1

declare dso_local i64 @vgpu_aperture_gmadr_base(%struct.intel_vgpu*) #1

declare dso_local i64 @gvt_aperture_gmadr_base(i32) #1

declare dso_local i64 @vgpu_hidden_gmadr_base(%struct.intel_vgpu*) #1

declare dso_local i64 @gvt_hidden_gmadr_base(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
