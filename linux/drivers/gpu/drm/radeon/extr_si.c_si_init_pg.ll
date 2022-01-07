; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@RADEON_PG_SUPPORT_SDMA = common dso_local global i32 0, align 4
@RADEON_PG_SUPPORT_GFX_PG = common dso_local global i32 0, align 4
@RLC_SAVE_AND_RESTORE_BASE = common dso_local global i32 0, align 4
@RLC_CLEAR_STATE_RESTORE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_init_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_init_pg(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %1
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RADEON_PG_SUPPORT_SDMA, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = call i32 @si_init_dma_pg(%struct.radeon_device* %15)
  br label %17

17:                                               ; preds = %14, %7
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = call i32 @si_init_ao_cu_mask(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RADEON_PG_SUPPORT_GFX_PG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = call i32 @si_init_gfx_cgpg(%struct.radeon_device* %27)
  br label %44

29:                                               ; preds = %17
  %30 = load i32, i32* @RLC_SAVE_AND_RESTORE_BASE, align 4
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 8
  %36 = call i32 @WREG32(i32 %30, i32 %35)
  %37 = load i32, i32* @RLC_CLEAR_STATE_RESTORE_BASE, align 4
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = call i32 @WREG32(i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %29, %26
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = call i32 @si_enable_dma_pg(%struct.radeon_device* %45, i32 1)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = call i32 @si_enable_gfx_cgpg(%struct.radeon_device* %47, i32 1)
  br label %64

49:                                               ; preds = %1
  %50 = load i32, i32* @RLC_SAVE_AND_RESTORE_BASE, align 4
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 8
  %56 = call i32 @WREG32(i32 %50, i32 %55)
  %57 = load i32, i32* @RLC_CLEAR_STATE_RESTORE_BASE, align 4
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 8
  %63 = call i32 @WREG32(i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @si_init_dma_pg(%struct.radeon_device*) #1

declare dso_local i32 @si_init_ao_cu_mask(%struct.radeon_device*) #1

declare dso_local i32 @si_init_gfx_cgpg(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @si_enable_dma_pg(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_gfx_cgpg(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
