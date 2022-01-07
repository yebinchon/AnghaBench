; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_enable_static_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_enable_static_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_PG_SUPPORT_VCN = common dso_local global i32 0, align 4
@VCN = common dso_local global i32 0, align 4
@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_POWER_STATUS_MASK = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDM_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDU_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDF_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDC_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDB_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDIL_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDIR_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDTD_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDTE_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDE_PWR_CONFIG__SHIFT = common dso_local global i32 0, align 4
@mmUVD_PGFSM_CONFIG = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDM_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDU_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDF_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDC_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDB_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDIL_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDIR_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDTD_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDTE_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDE_PWR_STATUS__SHIFT = common dso_local global i32 0, align 4
@mmUVD_PGFSM_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vcn_v2_0_enable_static_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v2_0_enable_static_power_gating(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AMD_PG_SUPPORT_VCN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %93

11:                                               ; preds = %1
  %12 = load i32, i32* @VCN, align 4
  %13 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %14 = call i32 @RREG32_SOC15(i32 %12, i32 0, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @VCN, align 4
  %23 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @WREG32_SOC15(i32 %22, i32 0, i32 %23, i32 %24)
  %26 = load i32, i32* @UVD_PGFSM_CONFIG__UVDM_PWR_CONFIG__SHIFT, align 4
  %27 = shl i32 2, %26
  %28 = load i32, i32* @UVD_PGFSM_CONFIG__UVDU_PWR_CONFIG__SHIFT, align 4
  %29 = shl i32 2, %28
  %30 = or i32 %27, %29
  %31 = load i32, i32* @UVD_PGFSM_CONFIG__UVDF_PWR_CONFIG__SHIFT, align 4
  %32 = shl i32 2, %31
  %33 = or i32 %30, %32
  %34 = load i32, i32* @UVD_PGFSM_CONFIG__UVDC_PWR_CONFIG__SHIFT, align 4
  %35 = shl i32 2, %34
  %36 = or i32 %33, %35
  %37 = load i32, i32* @UVD_PGFSM_CONFIG__UVDB_PWR_CONFIG__SHIFT, align 4
  %38 = shl i32 2, %37
  %39 = or i32 %36, %38
  %40 = load i32, i32* @UVD_PGFSM_CONFIG__UVDIL_PWR_CONFIG__SHIFT, align 4
  %41 = shl i32 2, %40
  %42 = or i32 %39, %41
  %43 = load i32, i32* @UVD_PGFSM_CONFIG__UVDIR_PWR_CONFIG__SHIFT, align 4
  %44 = shl i32 2, %43
  %45 = or i32 %42, %44
  %46 = load i32, i32* @UVD_PGFSM_CONFIG__UVDTD_PWR_CONFIG__SHIFT, align 4
  %47 = shl i32 2, %46
  %48 = or i32 %45, %47
  %49 = load i32, i32* @UVD_PGFSM_CONFIG__UVDTE_PWR_CONFIG__SHIFT, align 4
  %50 = shl i32 2, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @UVD_PGFSM_CONFIG__UVDE_PWR_CONFIG__SHIFT, align 4
  %53 = shl i32 2, %52
  %54 = or i32 %51, %53
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @VCN, align 4
  %56 = load i32, i32* @mmUVD_PGFSM_CONFIG, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @WREG32_SOC15(i32 %55, i32 0, i32 %56, i32 %57)
  %59 = load i32, i32* @UVD_PGFSM_STATUS__UVDM_PWR_STATUS__SHIFT, align 4
  %60 = shl i32 2, %59
  %61 = load i32, i32* @UVD_PGFSM_STATUS__UVDU_PWR_STATUS__SHIFT, align 4
  %62 = shl i32 2, %61
  %63 = or i32 %60, %62
  %64 = load i32, i32* @UVD_PGFSM_STATUS__UVDF_PWR_STATUS__SHIFT, align 4
  %65 = shl i32 2, %64
  %66 = or i32 %63, %65
  %67 = load i32, i32* @UVD_PGFSM_STATUS__UVDC_PWR_STATUS__SHIFT, align 4
  %68 = shl i32 2, %67
  %69 = or i32 %66, %68
  %70 = load i32, i32* @UVD_PGFSM_STATUS__UVDB_PWR_STATUS__SHIFT, align 4
  %71 = shl i32 2, %70
  %72 = or i32 %69, %71
  %73 = load i32, i32* @UVD_PGFSM_STATUS__UVDIL_PWR_STATUS__SHIFT, align 4
  %74 = shl i32 2, %73
  %75 = or i32 %72, %74
  %76 = load i32, i32* @UVD_PGFSM_STATUS__UVDIR_PWR_STATUS__SHIFT, align 4
  %77 = shl i32 2, %76
  %78 = or i32 %75, %77
  %79 = load i32, i32* @UVD_PGFSM_STATUS__UVDTD_PWR_STATUS__SHIFT, align 4
  %80 = shl i32 2, %79
  %81 = or i32 %78, %80
  %82 = load i32, i32* @UVD_PGFSM_STATUS__UVDTE_PWR_STATUS__SHIFT, align 4
  %83 = shl i32 2, %82
  %84 = or i32 %81, %83
  %85 = load i32, i32* @UVD_PGFSM_STATUS__UVDE_PWR_STATUS__SHIFT, align 4
  %86 = shl i32 2, %85
  %87 = or i32 %84, %86
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* @VCN, align 4
  %89 = load i32, i32* @mmUVD_PGFSM_STATUS, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @SOC15_WAIT_ON_RREG(i32 %88, i32 0, i32 %89, i32 %90, i32 1048575, i32 %91)
  br label %93

93:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
