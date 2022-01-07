; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_send_serdes_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_send_serdes_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64 }

@mmRLC_SERDES_WR_CU_MASTER_MASK = common dso_local global i32 0, align 4
@mmRLC_SERDES_WR_NONCU_MASTER_MASK = common dso_local global i32 0, align 4
@mmRLC_SERDES_WR_CTRL = common dso_local global i32 0, align 4
@CHIP_STONEY = common dso_local global i64 0, align 8
@RLC_SERDES_WR_CTRL__WRITE_COMMAND_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__READ_COMMAND_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__P1_SELECT_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__P2_SELECT_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__RDDATA_RESET_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__POWER_DOWN_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__POWER_UP_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__SHORT_FORMAT_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__SRBM_OVERRIDE_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__BPM_DATA_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__REG_ADDR_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__RSVD_BPM_ADDR_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__BPM_DATA__SHIFT = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__REG_ADDR__SHIFT = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL__BPM_ADDR__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32)* @gfx_v8_0_send_serdes_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_send_serdes_cmd(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = call i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device* %8, i32 -1, i32 -1, i32 -1)
  %10 = load i32, i32* @mmRLC_SERDES_WR_CU_MASTER_MASK, align 4
  %11 = call i32 @WREG32(i32 %10, i32 -1)
  %12 = load i32, i32* @mmRLC_SERDES_WR_NONCU_MASTER_MASK, align 4
  %13 = call i32 @WREG32(i32 %12, i32 -1)
  %14 = load i32, i32* @mmRLC_SERDES_WR_CTRL, align 4
  %15 = call i32 @RREG32(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHIP_STONEY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %3
  %22 = load i32, i32* @RLC_SERDES_WR_CTRL__WRITE_COMMAND_MASK, align 4
  %23 = load i32, i32* @RLC_SERDES_WR_CTRL__READ_COMMAND_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RLC_SERDES_WR_CTRL__P1_SELECT_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RLC_SERDES_WR_CTRL__P2_SELECT_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RLC_SERDES_WR_CTRL__RDDATA_RESET_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RLC_SERDES_WR_CTRL__POWER_DOWN_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RLC_SERDES_WR_CTRL__POWER_UP_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RLC_SERDES_WR_CTRL__SHORT_FORMAT_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RLC_SERDES_WR_CTRL__SRBM_OVERRIDE_MASK, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %67

42:                                               ; preds = %3
  %43 = load i32, i32* @RLC_SERDES_WR_CTRL__WRITE_COMMAND_MASK, align 4
  %44 = load i32, i32* @RLC_SERDES_WR_CTRL__READ_COMMAND_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RLC_SERDES_WR_CTRL__P1_SELECT_MASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RLC_SERDES_WR_CTRL__P2_SELECT_MASK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RLC_SERDES_WR_CTRL__RDDATA_RESET_MASK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RLC_SERDES_WR_CTRL__POWER_DOWN_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RLC_SERDES_WR_CTRL__POWER_UP_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RLC_SERDES_WR_CTRL__SHORT_FORMAT_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RLC_SERDES_WR_CTRL__BPM_DATA_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RLC_SERDES_WR_CTRL__REG_ADDR_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RLC_SERDES_WR_CTRL__SRBM_OVERRIDE_MASK, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %42, %21
  %68 = load i32, i32* @RLC_SERDES_WR_CTRL__RSVD_BPM_ADDR_MASK, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @RLC_SERDES_WR_CTRL__BPM_DATA__SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %68, %71
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @RLC_SERDES_WR_CTRL__REG_ADDR__SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  %77 = load i32, i32* @RLC_SERDES_WR_CTRL__BPM_ADDR__SHIFT, align 4
  %78 = shl i32 255, %77
  %79 = or i32 %76, %78
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @mmRLC_SERDES_WR_CTRL, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @WREG32(i32 %82, i32 %83)
  ret void
}

declare dso_local i32 @gfx_v8_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
