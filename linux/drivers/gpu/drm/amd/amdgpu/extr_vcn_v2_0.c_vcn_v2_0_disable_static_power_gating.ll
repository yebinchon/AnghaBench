; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_disable_static_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_disable_static_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_PG_SUPPORT_VCN = common dso_local global i32 0, align 4
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
@VCN = common dso_local global i32 0, align 4
@mmUVD_PGFSM_CONFIG = common dso_local global i32 0, align 4
@mmUVD_PGFSM_STATUS = common dso_local global i32 0, align 4
@UVD_PGFSM_STATUS__UVDM_UVDU_PWR_ON_2_0 = common dso_local global i32 0, align 4
@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVDM_UVDU_PWR_ON = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_PG_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vcn_v2_0_disable_static_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v2_0_disable_static_power_gating(%struct.amdgpu_device* %0) #0 {
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
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  %12 = load i32, i32* @UVD_PGFSM_CONFIG__UVDM_PWR_CONFIG__SHIFT, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* @UVD_PGFSM_CONFIG__UVDU_PWR_CONFIG__SHIFT, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @UVD_PGFSM_CONFIG__UVDF_PWR_CONFIG__SHIFT, align 4
  %18 = shl i32 2, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @UVD_PGFSM_CONFIG__UVDC_PWR_CONFIG__SHIFT, align 4
  %21 = shl i32 2, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @UVD_PGFSM_CONFIG__UVDB_PWR_CONFIG__SHIFT, align 4
  %24 = shl i32 2, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @UVD_PGFSM_CONFIG__UVDIL_PWR_CONFIG__SHIFT, align 4
  %27 = shl i32 2, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @UVD_PGFSM_CONFIG__UVDIR_PWR_CONFIG__SHIFT, align 4
  %30 = shl i32 2, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* @UVD_PGFSM_CONFIG__UVDTD_PWR_CONFIG__SHIFT, align 4
  %33 = shl i32 2, %32
  %34 = or i32 %31, %33
  %35 = load i32, i32* @UVD_PGFSM_CONFIG__UVDTE_PWR_CONFIG__SHIFT, align 4
  %36 = shl i32 2, %35
  %37 = or i32 %34, %36
  %38 = load i32, i32* @UVD_PGFSM_CONFIG__UVDE_PWR_CONFIG__SHIFT, align 4
  %39 = shl i32 2, %38
  %40 = or i32 %37, %39
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @VCN, align 4
  %42 = load i32, i32* @mmUVD_PGFSM_CONFIG, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @WREG32_SOC15(i32 %41, i32 0, i32 %42, i32 %43)
  %45 = load i32, i32* @VCN, align 4
  %46 = load i32, i32* @mmUVD_PGFSM_STATUS, align 4
  %47 = load i32, i32* @UVD_PGFSM_STATUS__UVDM_UVDU_PWR_ON_2_0, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @SOC15_WAIT_ON_RREG(i32 %45, i32 0, i32 %46, i32 %47, i32 1048575, i32 %48)
  br label %88

50:                                               ; preds = %1
  %51 = load i32, i32* @UVD_PGFSM_CONFIG__UVDM_PWR_CONFIG__SHIFT, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* @UVD_PGFSM_CONFIG__UVDU_PWR_CONFIG__SHIFT, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @UVD_PGFSM_CONFIG__UVDF_PWR_CONFIG__SHIFT, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @UVD_PGFSM_CONFIG__UVDC_PWR_CONFIG__SHIFT, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @UVD_PGFSM_CONFIG__UVDB_PWR_CONFIG__SHIFT, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* @UVD_PGFSM_CONFIG__UVDIL_PWR_CONFIG__SHIFT, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load i32, i32* @UVD_PGFSM_CONFIG__UVDIR_PWR_CONFIG__SHIFT, align 4
  %69 = shl i32 1, %68
  %70 = or i32 %67, %69
  %71 = load i32, i32* @UVD_PGFSM_CONFIG__UVDTD_PWR_CONFIG__SHIFT, align 4
  %72 = shl i32 1, %71
  %73 = or i32 %70, %72
  %74 = load i32, i32* @UVD_PGFSM_CONFIG__UVDTE_PWR_CONFIG__SHIFT, align 4
  %75 = shl i32 1, %74
  %76 = or i32 %73, %75
  %77 = load i32, i32* @UVD_PGFSM_CONFIG__UVDE_PWR_CONFIG__SHIFT, align 4
  %78 = shl i32 1, %77
  %79 = or i32 %76, %78
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* @VCN, align 4
  %81 = load i32, i32* @mmUVD_PGFSM_CONFIG, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @WREG32_SOC15(i32 %80, i32 0, i32 %81, i32 %82)
  %84 = load i32, i32* @VCN, align 4
  %85 = load i32, i32* @mmUVD_PGFSM_STATUS, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @SOC15_WAIT_ON_RREG(i32 %84, i32 0, i32 %85, i32 0, i32 1048575, i32 %86)
  br label %88

88:                                               ; preds = %50, %11
  %89 = load i32, i32* @VCN, align 4
  %90 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %91 = call i32 @RREG32_SOC15(i32 %89, i32 0, i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = and i32 %92, -260
  store i32 %93, i32* %3, align 4
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @AMD_PG_SUPPORT_VCN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %88
  %101 = load i32, i32* @UVD_PGFSM_CONFIG__UVDM_UVDU_PWR_ON, align 4
  %102 = load i32, i32* @UVD_POWER_STATUS__UVD_PG_EN_MASK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %3, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %100, %88
  %107 = load i32, i32* @VCN, align 4
  %108 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @WREG32_SOC15(i32 %107, i32 0, i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
