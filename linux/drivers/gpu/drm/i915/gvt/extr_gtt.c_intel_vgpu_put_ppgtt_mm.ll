; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_put_ppgtt_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_put_ppgtt_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }
%struct.intel_vgpu_mm = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"fail to find ppgtt instance.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgpu_put_ppgtt_mm(%struct.intel_vgpu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.intel_vgpu_mm*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call %struct.intel_vgpu_mm* @intel_vgpu_find_ppgtt_mm(%struct.intel_vgpu* %7, i32* %8)
  store %struct.intel_vgpu_mm* %9, %struct.intel_vgpu_mm** %6, align 8
  %10 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %6, align 8
  %11 = icmp ne %struct.intel_vgpu_mm* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %6, align 8
  %18 = call i32 @intel_vgpu_mm_put(%struct.intel_vgpu_mm* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.intel_vgpu_mm* @intel_vgpu_find_ppgtt_mm(%struct.intel_vgpu*, i32*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @intel_vgpu_mm_put(%struct.intel_vgpu_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
