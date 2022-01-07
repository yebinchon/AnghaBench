; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_accel_2d.c_psb_spank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_accel_2d.c_psb_spank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_PSB_CS_RESET_BIF_RESET = common dso_local global i32 0, align 4
@_PSB_CS_RESET_DPM_RESET = common dso_local global i32 0, align 4
@_PSB_CS_RESET_TA_RESET = common dso_local global i32 0, align 4
@_PSB_CS_RESET_USE_RESET = common dso_local global i32 0, align 4
@_PSB_CS_RESET_ISP_RESET = common dso_local global i32 0, align 4
@_PSB_CS_RESET_TSP_RESET = common dso_local global i32 0, align 4
@_PSB_CS_RESET_TWOD_RESET = common dso_local global i32 0, align 4
@PSB_CR_SOFT_RESET = common dso_local global i32 0, align 4
@PSB_CR_BIF_CTRL = common dso_local global i32 0, align 4
@_PSB_CB_CTRL_CLEAR_FAULT = common dso_local global i32 0, align 4
@PSB_CR_BIF_TWOD_REQ_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_spank(%struct.drm_psb_private* %0) #0 {
  %2 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %2, align 8
  %3 = load i32, i32* @_PSB_CS_RESET_BIF_RESET, align 4
  %4 = load i32, i32* @_PSB_CS_RESET_DPM_RESET, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @_PSB_CS_RESET_TA_RESET, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @_PSB_CS_RESET_USE_RESET, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @_PSB_CS_RESET_ISP_RESET, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @_PSB_CS_RESET_TSP_RESET, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @_PSB_CS_RESET_TWOD_RESET, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PSB_CR_SOFT_RESET, align 4
  %17 = call i32 @PSB_WSGX32(i32 %15, i32 %16)
  %18 = load i32, i32* @PSB_CR_SOFT_RESET, align 4
  %19 = call i32 @PSB_RSGX32(i32 %18)
  %20 = call i32 @msleep(i32 1)
  %21 = load i32, i32* @PSB_CR_SOFT_RESET, align 4
  %22 = call i32 @PSB_WSGX32(i32 0, i32 %21)
  %23 = call i32 (...) @wmb()
  %24 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %25 = call i32 @PSB_RSGX32(i32 %24)
  %26 = load i32, i32* @_PSB_CB_CTRL_CLEAR_FAULT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %29 = call i32 @PSB_WSGX32(i32 %27, i32 %28)
  %30 = call i32 (...) @wmb()
  %31 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %32 = call i32 @PSB_RSGX32(i32 %31)
  %33 = call i32 @msleep(i32 1)
  %34 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %35 = call i32 @PSB_RSGX32(i32 %34)
  %36 = load i32, i32* @_PSB_CB_CTRL_CLEAR_FAULT, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %40 = call i32 @PSB_WSGX32(i32 %38, i32 %39)
  %41 = load i32, i32* @PSB_CR_BIF_CTRL, align 4
  %42 = call i32 @PSB_RSGX32(i32 %41)
  %43 = load %struct.drm_psb_private*, %struct.drm_psb_private** %2, align 8
  %44 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PSB_CR_BIF_TWOD_REQ_BASE, align 4
  %48 = call i32 @PSB_WSGX32(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @PSB_WSGX32(i32, i32) #1

declare dso_local i32 @PSB_RSGX32(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
