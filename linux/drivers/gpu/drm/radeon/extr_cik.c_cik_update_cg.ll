; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_update_cg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_update_cg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64 }

@RADEON_CG_BLOCK_GFX = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_MC = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_SDMA = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_BIF = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_UVD = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_HDP = common dso_local global i32 0, align 4
@RADEON_CG_BLOCK_VCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_update_cg(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
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
  %13 = call i32 @cik_enable_gui_idle_interrupt(%struct.radeon_device* %12, i32 0)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = call i32 @cik_enable_mgcg(%struct.radeon_device* %17, i32 1)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %20 = call i32 @cik_enable_cgcg(%struct.radeon_device* %19, i32 1)
  br label %26

21:                                               ; preds = %11
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = call i32 @cik_enable_cgcg(%struct.radeon_device* %22, i32 0)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = call i32 @cik_enable_mgcg(%struct.radeon_device* %24, i32 0)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = call i32 @cik_enable_gui_idle_interrupt(%struct.radeon_device* %27, i32 1)
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @RADEON_CG_BLOCK_MC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RADEON_IS_IGP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @cik_enable_mc_mgcg(%struct.radeon_device* %42, i32 %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @cik_enable_mc_ls(%struct.radeon_device* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %34
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @RADEON_CG_BLOCK_SDMA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @cik_enable_sdma_mgcg(%struct.radeon_device* %55, i32 %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @cik_enable_sdma_mgls(%struct.radeon_device* %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @RADEON_CG_BLOCK_BIF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @cik_enable_bif_mgls(%struct.radeon_device* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @RADEON_CG_BLOCK_UVD, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @cik_enable_uvd_mgcg(%struct.radeon_device* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %75
  br label %85

85:                                               ; preds = %84, %70
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @RADEON_CG_BLOCK_HDP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @cik_enable_hdp_mgcg(%struct.radeon_device* %91, i32 %92)
  %94 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @cik_enable_hdp_ls(%struct.radeon_device* %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %85
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @RADEON_CG_BLOCK_VCE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @vce_v2_0_enable_mgcg(%struct.radeon_device* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %97
  ret void
}

declare dso_local i32 @cik_enable_gui_idle_interrupt(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_cgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_mc_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_mc_ls(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_sdma_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_sdma_mgls(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_bif_mgls(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_uvd_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_hdp_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_hdp_ls(%struct.radeon_device*, i32) #1

declare dso_local i32 @vce_v2_0_enable_mgcg(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
