; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.atmel_hlcdc_plane = type { i32 }

@ATMEL_HLCDC_LAYER_IDR = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_CHDR = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_RST = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_A2Q = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_UPDATE = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @atmel_hlcdc_plane_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_plane_atomic_disable(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.atmel_hlcdc_plane*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %7 = call %struct.atmel_hlcdc_plane* @drm_plane_to_atmel_hlcdc_plane(%struct.drm_plane* %6)
  store %struct.atmel_hlcdc_plane* %7, %struct.atmel_hlcdc_plane** %5, align 8
  %8 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %9 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %8, i32 0, i32 0
  %10 = load i32, i32* @ATMEL_HLCDC_LAYER_IDR, align 4
  %11 = call i32 @atmel_hlcdc_layer_write_reg(i32* %9, i32 %10, i32 -1)
  %12 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %13 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %12, i32 0, i32 0
  %14 = load i32, i32* @ATMEL_HLCDC_LAYER_CHDR, align 4
  %15 = load i32, i32* @ATMEL_HLCDC_LAYER_RST, align 4
  %16 = load i32, i32* @ATMEL_HLCDC_LAYER_A2Q, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ATMEL_HLCDC_LAYER_UPDATE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @atmel_hlcdc_layer_write_reg(i32* %13, i32 %14, i32 %19)
  %21 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %22 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %21, i32 0, i32 0
  %23 = load i32, i32* @ATMEL_HLCDC_LAYER_ISR, align 4
  %24 = call i32 @atmel_hlcdc_layer_read_reg(i32* %22, i32 %23)
  ret void
}

declare dso_local %struct.atmel_hlcdc_plane* @drm_plane_to_atmel_hlcdc_plane(%struct.drm_plane*) #1

declare dso_local i32 @atmel_hlcdc_layer_write_reg(i32*, i32, i32) #1

declare dso_local i32 @atmel_hlcdc_layer_read_reg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
