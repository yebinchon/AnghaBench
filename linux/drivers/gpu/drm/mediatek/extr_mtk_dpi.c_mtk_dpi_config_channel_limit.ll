; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_channel_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_channel_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dpi = type { i32 }
%struct.mtk_dpi_yc_limit = type { i32, i32, i32, i32 }

@DPI_Y_LIMIT = common dso_local global i32 0, align 4
@Y_LIMINT_BOT = common dso_local global i32 0, align 4
@Y_LIMINT_BOT_MASK = common dso_local global i32 0, align 4
@Y_LIMINT_TOP = common dso_local global i32 0, align 4
@Y_LIMINT_TOP_MASK = common dso_local global i32 0, align 4
@DPI_C_LIMIT = common dso_local global i32 0, align 4
@C_LIMIT_BOT = common dso_local global i32 0, align 4
@C_LIMIT_BOT_MASK = common dso_local global i32 0, align 4
@C_LIMIT_TOP = common dso_local global i32 0, align 4
@C_LIMIT_TOP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dpi*, %struct.mtk_dpi_yc_limit*)* @mtk_dpi_config_channel_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dpi_config_channel_limit(%struct.mtk_dpi* %0, %struct.mtk_dpi_yc_limit* %1) #0 {
  %3 = alloca %struct.mtk_dpi*, align 8
  %4 = alloca %struct.mtk_dpi_yc_limit*, align 8
  store %struct.mtk_dpi* %0, %struct.mtk_dpi** %3, align 8
  store %struct.mtk_dpi_yc_limit* %1, %struct.mtk_dpi_yc_limit** %4, align 8
  %5 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %6 = load i32, i32* @DPI_Y_LIMIT, align 4
  %7 = load %struct.mtk_dpi_yc_limit*, %struct.mtk_dpi_yc_limit** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_dpi_yc_limit, %struct.mtk_dpi_yc_limit* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @Y_LIMINT_BOT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @Y_LIMINT_BOT_MASK, align 4
  %13 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %5, i32 %6, i32 %11, i32 %12)
  %14 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %15 = load i32, i32* @DPI_Y_LIMIT, align 4
  %16 = load %struct.mtk_dpi_yc_limit*, %struct.mtk_dpi_yc_limit** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_dpi_yc_limit, %struct.mtk_dpi_yc_limit* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @Y_LIMINT_TOP, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @Y_LIMINT_TOP_MASK, align 4
  %22 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %14, i32 %15, i32 %20, i32 %21)
  %23 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %24 = load i32, i32* @DPI_C_LIMIT, align 4
  %25 = load %struct.mtk_dpi_yc_limit*, %struct.mtk_dpi_yc_limit** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_dpi_yc_limit, %struct.mtk_dpi_yc_limit* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @C_LIMIT_BOT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @C_LIMIT_BOT_MASK, align 4
  %31 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %23, i32 %24, i32 %29, i32 %30)
  %32 = load %struct.mtk_dpi*, %struct.mtk_dpi** %3, align 8
  %33 = load i32, i32* @DPI_C_LIMIT, align 4
  %34 = load %struct.mtk_dpi_yc_limit*, %struct.mtk_dpi_yc_limit** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_dpi_yc_limit, %struct.mtk_dpi_yc_limit* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @C_LIMIT_TOP, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* @C_LIMIT_TOP_MASK, align 4
  %40 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %32, i32 %33, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @mtk_dpi_mask(%struct.mtk_dpi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
