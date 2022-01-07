; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_apply_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_apply_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32 }
%struct.tegra_sor_config = type { i32, i32, i64, i32, i32, i32, i32 }

@SOR_DP_LINKCTL0 = common dso_local global i32 0, align 4
@SOR_DP_LINKCTL_TU_SIZE_MASK = common dso_local global i32 0, align 4
@SOR_DP_CONFIG0 = common dso_local global i32 0, align 4
@SOR_DP_CONFIG_WATERMARK_MASK = common dso_local global i32 0, align 4
@SOR_DP_CONFIG_ACTIVE_SYM_COUNT_MASK = common dso_local global i32 0, align 4
@SOR_DP_CONFIG_ACTIVE_SYM_FRAC_MASK = common dso_local global i32 0, align 4
@SOR_DP_CONFIG_ACTIVE_SYM_POLARITY = common dso_local global i32 0, align 4
@SOR_DP_CONFIG_ACTIVE_SYM_ENABLE = common dso_local global i32 0, align 4
@SOR_DP_CONFIG_DISPARITY_NEGATIVE = common dso_local global i32 0, align 4
@SOR_DP_AUDIO_HBLANK_SYMBOLS = common dso_local global i32 0, align 4
@SOR_DP_AUDIO_HBLANK_SYMBOLS_MASK = common dso_local global i32 0, align 4
@SOR_DP_AUDIO_VBLANK_SYMBOLS = common dso_local global i32 0, align 4
@SOR_DP_AUDIO_VBLANK_SYMBOLS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_sor*, %struct.tegra_sor_config*)* @tegra_sor_apply_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sor_apply_config(%struct.tegra_sor* %0, %struct.tegra_sor_config* %1) #0 {
  %3 = alloca %struct.tegra_sor*, align 8
  %4 = alloca %struct.tegra_sor_config*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_sor* %0, %struct.tegra_sor** %3, align 8
  store %struct.tegra_sor_config* %1, %struct.tegra_sor_config** %4, align 8
  %6 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %7 = load i32, i32* @SOR_DP_LINKCTL0, align 4
  %8 = call i32 @tegra_sor_readl(%struct.tegra_sor* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @SOR_DP_LINKCTL_TU_SIZE_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.tegra_sor_config*, %struct.tegra_sor_config** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_sor_config, %struct.tegra_sor_config* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SOR_DP_LINKCTL_TU_SIZE(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SOR_DP_LINKCTL0, align 4
  %22 = call i32 @tegra_sor_writel(%struct.tegra_sor* %19, i32 %20, i32 %21)
  %23 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %24 = load i32, i32* @SOR_DP_CONFIG0, align 4
  %25 = call i32 @tegra_sor_readl(%struct.tegra_sor* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @SOR_DP_CONFIG_WATERMARK_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.tegra_sor_config*, %struct.tegra_sor_config** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_sor_config, %struct.tegra_sor_config* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @SOR_DP_CONFIG_WATERMARK(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @SOR_DP_CONFIG_ACTIVE_SYM_COUNT_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.tegra_sor_config*, %struct.tegra_sor_config** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_sor_config, %struct.tegra_sor_config* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SOR_DP_CONFIG_ACTIVE_SYM_COUNT(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @SOR_DP_CONFIG_ACTIVE_SYM_FRAC_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.tegra_sor_config*, %struct.tegra_sor_config** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_sor_config, %struct.tegra_sor_config* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @SOR_DP_CONFIG_ACTIVE_SYM_FRAC(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load %struct.tegra_sor_config*, %struct.tegra_sor_config** %4, align 8
  %57 = getelementptr inbounds %struct.tegra_sor_config, %struct.tegra_sor_config* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %2
  %61 = load i32, i32* @SOR_DP_CONFIG_ACTIVE_SYM_POLARITY, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %2
  %65 = load i32, i32* @SOR_DP_CONFIG_ACTIVE_SYM_POLARITY, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i32, i32* @SOR_DP_CONFIG_ACTIVE_SYM_ENABLE, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @SOR_DP_CONFIG_DISPARITY_NEGATIVE, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @SOR_DP_CONFIG0, align 4
  %79 = call i32 @tegra_sor_writel(%struct.tegra_sor* %76, i32 %77, i32 %78)
  %80 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %81 = load i32, i32* @SOR_DP_AUDIO_HBLANK_SYMBOLS, align 4
  %82 = call i32 @tegra_sor_readl(%struct.tegra_sor* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @SOR_DP_AUDIO_HBLANK_SYMBOLS_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.tegra_sor_config*, %struct.tegra_sor_config** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_sor_config, %struct.tegra_sor_config* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 65535
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @SOR_DP_AUDIO_HBLANK_SYMBOLS, align 4
  %96 = call i32 @tegra_sor_writel(%struct.tegra_sor* %93, i32 %94, i32 %95)
  %97 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %98 = load i32, i32* @SOR_DP_AUDIO_VBLANK_SYMBOLS, align 4
  %99 = call i32 @tegra_sor_readl(%struct.tegra_sor* %97, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @SOR_DP_AUDIO_VBLANK_SYMBOLS_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load %struct.tegra_sor_config*, %struct.tegra_sor_config** %4, align 8
  %105 = getelementptr inbounds %struct.tegra_sor_config, %struct.tegra_sor_config* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 65535
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @SOR_DP_AUDIO_VBLANK_SYMBOLS, align 4
  %113 = call i32 @tegra_sor_writel(%struct.tegra_sor* %110, i32 %111, i32 %112)
  ret void
}

declare dso_local i32 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @SOR_DP_LINKCTL_TU_SIZE(i32) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

declare dso_local i32 @SOR_DP_CONFIG_WATERMARK(i32) #1

declare dso_local i32 @SOR_DP_CONFIG_ACTIVE_SYM_COUNT(i32) #1

declare dso_local i32 @SOR_DP_CONFIG_ACTIVE_SYM_FRAC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
