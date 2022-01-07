; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_vddc3d_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_program_vddc3d_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@R600_VDDC3DOORSU_DFLT = common dso_local global i32 0, align 4
@R600_VDDC3DOORPHC_DFLT = common dso_local global i32 0, align 4
@R600_VDDC3DOORSDC_DFLT = common dso_local global i32 0, align 4
@R600_CTXCGTT3DRPHC_DFLT = common dso_local global i32 0, align 4
@R600_CTXCGTT3DRSDC_DFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv6xx_program_vddc3d_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_program_vddc3d_parameters(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @R600_VDDC3DOORSU_DFLT, align 4
  %5 = call i32 @r600_set_vddc3d_oorsu(%struct.radeon_device* %3, i32 %4)
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = load i32, i32* @R600_VDDC3DOORPHC_DFLT, align 4
  %8 = call i32 @r600_set_vddc3d_oorphc(%struct.radeon_device* %6, i32 %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = load i32, i32* @R600_VDDC3DOORSDC_DFLT, align 4
  %11 = call i32 @r600_set_vddc3d_oorsdc(%struct.radeon_device* %9, i32 %10)
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = load i32, i32* @R600_CTXCGTT3DRPHC_DFLT, align 4
  %14 = call i32 @r600_set_ctxcgtt3d_rphc(%struct.radeon_device* %12, i32 %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = load i32, i32* @R600_CTXCGTT3DRSDC_DFLT, align 4
  %17 = call i32 @r600_set_ctxcgtt3d_rsdc(%struct.radeon_device* %15, i32 %16)
  ret void
}

declare dso_local i32 @r600_set_vddc3d_oorsu(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_vddc3d_oorphc(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_vddc3d_oorsdc(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_ctxcgtt3d_rphc(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_ctxcgtt3d_rsdc(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
