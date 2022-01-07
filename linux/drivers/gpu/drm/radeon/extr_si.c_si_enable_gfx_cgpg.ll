; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_enable_gfx_cgpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_enable_gfx_cgpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_PG_SUPPORT_GFX_PG = common dso_local global i32 0, align 4
@RLC_TTOP_D = common dso_local global i32 0, align 4
@RLC_PG_CNTL = common dso_local global i32 0, align 4
@GFX_PG_ENABLE = common dso_local global i32 0, align 4
@RLC_AUTO_PG_CTRL = common dso_local global i32 0, align 4
@AUTO_PG_EN = common dso_local global i32 0, align 4
@DB_RENDER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @si_enable_gfx_cgpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_enable_gfx_cgpg(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %2
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RADEON_PG_SUPPORT_GFX_PG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %8
  %16 = call i32 @RLC_PUD(i32 16)
  %17 = call i32 @RLC_PDD(i32 16)
  %18 = or i32 %16, %17
  %19 = call i32 @RLC_TTPD(i32 16)
  %20 = or i32 %18, %19
  %21 = call i32 @RLC_MSD(i32 16)
  %22 = or i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @RLC_TTOP_D, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @WREG32(i32 %23, i32 %24)
  %26 = load i32, i32* @RLC_PG_CNTL, align 4
  %27 = call i32 @RREG32(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @GFX_PG_ENABLE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @RLC_PG_CNTL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @WREG32(i32 %31, i32 %32)
  %34 = load i32, i32* @RLC_AUTO_PG_CTRL, align 4
  %35 = call i32 @RREG32(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @AUTO_PG_EN, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @RLC_AUTO_PG_CTRL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @WREG32(i32 %39, i32 %40)
  br label %54

42:                                               ; preds = %8, %2
  %43 = load i32, i32* @RLC_AUTO_PG_CTRL, align 4
  %44 = call i32 @RREG32(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @AUTO_PG_EN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @RLC_AUTO_PG_CTRL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  %52 = load i32, i32* @DB_RENDER_CONTROL, align 4
  %53 = call i32 @RREG32(i32 %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %42, %15
  ret void
}

declare dso_local i32 @RLC_PUD(i32) #1

declare dso_local i32 @RLC_PDD(i32) #1

declare dso_local i32 @RLC_TTPD(i32) #1

declare dso_local i32 @RLC_MSD(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
