; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_load_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_load_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32 }

@VIVS_HI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@VIVS_HI_CLOCK_CONTROL_FSCALE_CMD_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*, i32)* @etnaviv_gpu_load_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_gpu_load_clock(%struct.etnaviv_gpu* %0, i32 %1) #0 {
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %6 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @VIVS_HI_CLOCK_CONTROL_FSCALE_CMD_LOAD, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @gpu_write(%struct.etnaviv_gpu* %5, i32 %6, i32 %9)
  %11 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %12 = load i32, i32* @VIVS_HI_CLOCK_CONTROL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @gpu_write(%struct.etnaviv_gpu* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @gpu_write(%struct.etnaviv_gpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
