; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32 }

@TILER_PWROFF_LO = common dso_local global i32 0, align 4
@SHADER_PWROFF_LO = common dso_local global i32 0, align 4
@STACK_PWROFF_LO = common dso_local global i32 0, align 4
@L2_PWROFF_LO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panfrost_gpu_power_off(%struct.panfrost_device* %0) #0 {
  %2 = alloca %struct.panfrost_device*, align 8
  store %struct.panfrost_device* %0, %struct.panfrost_device** %2, align 8
  %3 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %4 = load i32, i32* @TILER_PWROFF_LO, align 4
  %5 = call i32 @gpu_write(%struct.panfrost_device* %3, i32 %4, i32 0)
  %6 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %7 = load i32, i32* @SHADER_PWROFF_LO, align 4
  %8 = call i32 @gpu_write(%struct.panfrost_device* %6, i32 %7, i32 0)
  %9 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %10 = load i32, i32* @STACK_PWROFF_LO, align 4
  %11 = call i32 @gpu_write(%struct.panfrost_device* %9, i32 %10, i32 0)
  %12 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %13 = load i32, i32* @L2_PWROFF_LO, align 4
  %14 = call i32 @gpu_write(%struct.panfrost_device* %12, i32 %13, i32 0)
  ret void
}

declare dso_local i32 @gpu_write(%struct.panfrost_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
