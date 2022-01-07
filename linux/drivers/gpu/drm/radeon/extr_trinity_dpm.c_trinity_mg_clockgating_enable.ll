; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_mg_clockgating_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_mg_clockgating_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CG_CGTT_LOCAL_0 = common dso_local global i32 0, align 4
@CG_CGTT_LOCAL_1 = common dso_local global i32 0, align 4
@CGCG_CGTT_LOCAL0_MASK = common dso_local global i32 0, align 4
@CGCG_CGTT_LOCAL1_MASK = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG_ENABLE = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @trinity_mg_clockgating_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_mg_clockgating_enable(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load i32, i32* @CG_CGTT_LOCAL_0, align 4
  %11 = call i32 @RREG32_CG(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @CG_CGTT_LOCAL_1, align 4
  %13 = call i32 @RREG32_CG(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @CG_CGTT_LOCAL_0, align 4
  %15 = load i32, i32* @CGCG_CGTT_LOCAL0_MASK, align 4
  %16 = and i32 3670016, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CGCG_CGTT_LOCAL0_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = or i32 %16, %20
  %22 = call i32 @WREG32_CG(i32 %14, i32 %21)
  %23 = load i32, i32* @CG_CGTT_LOCAL_1, align 4
  %24 = load i32, i32* @CGCG_CGTT_LOCAL1_MASK, align 4
  %25 = and i32 234881024, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @CGCG_CGTT_LOCAL1_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = or i32 %25, %29
  %31 = call i32 @WREG32_CG(i32 %23, i32 %30)
  %32 = load i32, i32* @CGTS_SM_CTRL_REG, align 4
  %33 = load i32, i32* @CGTS_SM_CTRL_REG_ENABLE, align 4
  %34 = call i32 @WREG32(i32 %32, i32 %33)
  br label %59

35:                                               ; preds = %2
  %36 = load i32, i32* @CGTS_SM_CTRL_REG, align 4
  %37 = load i32, i32* @CGTS_SM_CTRL_REG_DISABLE, align 4
  %38 = call i32 @WREG32(i32 %36, i32 %37)
  %39 = load i32, i32* @CG_CGTT_LOCAL_0, align 4
  %40 = call i32 @RREG32_CG(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @CG_CGTT_LOCAL_1, align 4
  %42 = call i32 @RREG32_CG(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @CG_CGTT_LOCAL_0, align 4
  %44 = load i32, i32* @CGCG_CGTT_LOCAL0_MASK, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CGCG_CGTT_LOCAL0_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = or i32 %44, %48
  %50 = call i32 @WREG32_CG(i32 %43, i32 %49)
  %51 = load i32, i32* @CG_CGTT_LOCAL_1, align 4
  %52 = load i32, i32* @CGCG_CGTT_LOCAL1_MASK, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @CGCG_CGTT_LOCAL1_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = or i32 %52, %56
  %58 = call i32 @WREG32_CG(i32 %51, i32 %57)
  br label %59

59:                                               ; preds = %35, %9
  ret void
}

declare dso_local i32 @RREG32_CG(i32) #1

declare dso_local i32 @WREG32_CG(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
