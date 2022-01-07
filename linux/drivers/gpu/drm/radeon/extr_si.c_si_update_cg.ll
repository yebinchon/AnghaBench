; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_update_cg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_update_cg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@RADEON_CG_BLOCK_GFX = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_MC = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_SDMA = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_BIF = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_UVD = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_HDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32)* @si_update_cg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_update_cg(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RADEON_CG_BLOCK_GFX, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call i32 @si_enable_gui_idle_interrupt(%struct.radeon_device* %12, i32 0)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = call i32 @si_enable_mgcg(%struct.radeon_device* %17, i32 1)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %20 = call i32 @si_enable_cgcg(%struct.radeon_device* %19, i32 1)
  br label %26

21:                                               ; preds = %11
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = call i32 @si_enable_cgcg(%struct.radeon_device* %22, i32 0)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = call i32 @si_enable_mgcg(%struct.radeon_device* %24, i32 0)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = call i32 @si_enable_gui_idle_interrupt(%struct.radeon_device* %27, i32 1)
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @RADEON_CG_BLOCK_MC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @si_enable_mc_mgcg(%struct.radeon_device* %35, i32 %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @si_enable_mc_ls(%struct.radeon_device* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @RADEON_CG_BLOCK_SDMA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @si_enable_dma_mgcg(%struct.radeon_device* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @RADEON_CG_BLOCK_BIF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @si_enable_bif_mgls(%struct.radeon_device* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @RADEON_CG_BLOCK_UVD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @si_enable_uvd_mgcg(%struct.radeon_device* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %59
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @RADEON_CG_BLOCK_HDP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @si_enable_hdp_mgcg(%struct.radeon_device* %80, i32 %81)
  %83 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @si_enable_hdp_ls(%struct.radeon_device* %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %74
  ret void
}

declare dso_local i32 @si_enable_gui_idle_interrupt(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_cgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_mc_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_mc_ls(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_dma_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_bif_mgls(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_uvd_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_hdp_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_enable_hdp_ls(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
