; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_kv_save_regs_for_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_kv_save_regs_for_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_reset_save_regs = type { i32, i32, i8* }

@mmGMCON_RENG_EXECUTE = common dso_local global i32 0, align 4
@mmGMCON_MISC = common dso_local global i32 0, align 4
@mmGMCON_MISC3 = common dso_local global i32 0, align 4
@GMCON_RENG_EXECUTE__RENG_EXECUTE_ON_PWR_UP_MASK = common dso_local global i32 0, align 4
@GMCON_MISC__RENG_EXECUTE_ON_REG_UPDATE_MASK = common dso_local global i32 0, align 4
@GMCON_MISC__STCTRL_STUTTER_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.kv_reset_save_regs*)* @kv_save_regs_for_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_save_regs_for_reset(%struct.amdgpu_device* %0, %struct.kv_reset_save_regs* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.kv_reset_save_regs*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.kv_reset_save_regs* %1, %struct.kv_reset_save_regs** %4, align 8
  %5 = load i32, i32* @mmGMCON_RENG_EXECUTE, align 4
  %6 = call i8* @RREG32(i32 %5)
  %7 = ptrtoint i8* %6 to i32
  %8 = load %struct.kv_reset_save_regs*, %struct.kv_reset_save_regs** %4, align 8
  %9 = getelementptr inbounds %struct.kv_reset_save_regs, %struct.kv_reset_save_regs* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @mmGMCON_MISC, align 4
  %11 = call i8* @RREG32(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.kv_reset_save_regs*, %struct.kv_reset_save_regs** %4, align 8
  %14 = getelementptr inbounds %struct.kv_reset_save_regs, %struct.kv_reset_save_regs* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @mmGMCON_MISC3, align 4
  %16 = call i8* @RREG32(i32 %15)
  %17 = load %struct.kv_reset_save_regs*, %struct.kv_reset_save_regs** %4, align 8
  %18 = getelementptr inbounds %struct.kv_reset_save_regs, %struct.kv_reset_save_regs* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @mmGMCON_RENG_EXECUTE, align 4
  %20 = load %struct.kv_reset_save_regs*, %struct.kv_reset_save_regs** %4, align 8
  %21 = getelementptr inbounds %struct.kv_reset_save_regs, %struct.kv_reset_save_regs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GMCON_RENG_EXECUTE__RENG_EXECUTE_ON_PWR_UP_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @WREG32(i32 %19, i32 %25)
  %27 = load i32, i32* @mmGMCON_MISC, align 4
  %28 = load %struct.kv_reset_save_regs*, %struct.kv_reset_save_regs** %4, align 8
  %29 = getelementptr inbounds %struct.kv_reset_save_regs, %struct.kv_reset_save_regs* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GMCON_MISC__RENG_EXECUTE_ON_REG_UPDATE_MASK, align 4
  %32 = load i32, i32* @GMCON_MISC__STCTRL_STUTTER_EN_MASK, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %30, %34
  %36 = call i32 @WREG32(i32 %27, i32 %35)
  ret void
}

declare dso_local i8* @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
