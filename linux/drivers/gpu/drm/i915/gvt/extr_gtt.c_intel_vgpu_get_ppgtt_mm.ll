; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_get_ppgtt_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_get_ppgtt_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_mm = type { i32 }
%struct.intel_vgpu = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"fail to create mm\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_vgpu_mm* @intel_vgpu_get_ppgtt_mm(%struct.intel_vgpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.intel_vgpu_mm*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call %struct.intel_vgpu_mm* @intel_vgpu_find_ppgtt_mm(%struct.intel_vgpu* %8, i32* %9)
  store %struct.intel_vgpu_mm* %10, %struct.intel_vgpu_mm** %7, align 8
  %11 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %7, align 8
  %12 = icmp ne %struct.intel_vgpu_mm* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %7, align 8
  %15 = call i32 @intel_vgpu_mm_get(%struct.intel_vgpu_mm* %14)
  br label %27

16:                                               ; preds = %3
  %17 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.intel_vgpu_mm* @intel_vgpu_create_ppgtt_mm(%struct.intel_vgpu* %17, i32 %18, i32* %19)
  store %struct.intel_vgpu_mm* %20, %struct.intel_vgpu_mm** %7, align 8
  %21 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %7, align 8
  %22 = call i64 @IS_ERR(%struct.intel_vgpu_mm* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %16
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %7, align 8
  ret %struct.intel_vgpu_mm* %28
}

declare dso_local %struct.intel_vgpu_mm* @intel_vgpu_find_ppgtt_mm(%struct.intel_vgpu*, i32*) #1

declare dso_local i32 @intel_vgpu_mm_get(%struct.intel_vgpu_mm*) #1

declare dso_local %struct.intel_vgpu_mm* @intel_vgpu_create_ppgtt_mm(%struct.intel_vgpu*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.intel_vgpu_mm*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
