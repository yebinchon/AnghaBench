; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_set_powergating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_set_powergating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMD_PG_STATE_GATE = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_UVD = common dso_local global i32 0, align 4
@ixCURRENT_PG_STATUS = common dso_local global i32 0, align 4
@CURRENT_PG_STATUS__UVD_PG_STATUS_MASK = common dso_local global i32 0, align 4
@mmUVD_PGFSM_CONFIG = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVD_PGFSM_FSM_ADDR_MASK = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVD_PGFSM_POWER_DOWN_MASK = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVD_PGFSM_P1_SELECT_MASK = common dso_local global i32 0, align 4
@UVD_PGFSM_CONFIG__UVD_PGFSM_POWER_UP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @uvd_v4_2_set_powergating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v4_2_set_powergating_state(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @AMD_PG_STATE_GATE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %14 = call i32 @uvd_v4_2_stop(%struct.amdgpu_device* %13)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AMD_PG_SUPPORT_UVD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %12
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ixCURRENT_PG_STATUS, align 4
  %29 = call i32 @RREG32_SMC(i32 %28)
  %30 = load i32, i32* @CURRENT_PG_STATUS__UVD_PG_STATUS_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @mmUVD_PGFSM_CONFIG, align 4
  %35 = load i32, i32* @UVD_PGFSM_CONFIG__UVD_PGFSM_FSM_ADDR_MASK, align 4
  %36 = load i32, i32* @UVD_PGFSM_CONFIG__UVD_PGFSM_POWER_DOWN_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @UVD_PGFSM_CONFIG__UVD_PGFSM_P1_SELECT_MASK, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @WREG32(i32 %34, i32 %39)
  %41 = call i32 @mdelay(i32 20)
  br label %42

42:                                               ; preds = %33, %27
  br label %43

43:                                               ; preds = %42, %21, %12
  store i32 0, i32* %3, align 4
  br label %76

44:                                               ; preds = %2
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AMD_PG_SUPPORT_UVD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ixCURRENT_PG_STATUS, align 4
  %59 = call i32 @RREG32_SMC(i32 %58)
  %60 = load i32, i32* @CURRENT_PG_STATUS__UVD_PG_STATUS_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32, i32* @mmUVD_PGFSM_CONFIG, align 4
  %65 = load i32, i32* @UVD_PGFSM_CONFIG__UVD_PGFSM_FSM_ADDR_MASK, align 4
  %66 = load i32, i32* @UVD_PGFSM_CONFIG__UVD_PGFSM_POWER_UP_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @UVD_PGFSM_CONFIG__UVD_PGFSM_P1_SELECT_MASK, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @WREG32(i32 %64, i32 %69)
  %71 = call i32 @mdelay(i32 30)
  br label %72

72:                                               ; preds = %63, %57
  br label %73

73:                                               ; preds = %72, %51, %44
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %75 = call i32 @uvd_v4_2_start(%struct.amdgpu_device* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %43
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @uvd_v4_2_stop(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @uvd_v4_2_start(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
