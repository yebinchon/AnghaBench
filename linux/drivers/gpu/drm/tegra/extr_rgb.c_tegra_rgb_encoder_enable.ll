; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_rgb.c_tegra_rgb_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_rgb.c_tegra_rgb_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.tegra_output = type { i64 }
%struct.tegra_rgb = type { i32 }

@rgb_enable = common dso_local global i32 0, align 4
@DE_SELECT_ACTIVE = common dso_local global i32 0, align 4
@DE_CONTROL_NORMAL = common dso_local global i32 0, align 4
@DC_DISP_DATA_ENABLE_OPTIONS = common dso_local global i32 0, align 4
@LVS_OUTPUT_POLARITY_LOW = common dso_local global i32 0, align 4
@LHS_OUTPUT_POLARITY_LOW = common dso_local global i32 0, align 4
@DISP_DATA_FORMAT_DF1P1C = common dso_local global i32 0, align 4
@DISP_ALIGNMENT_MSB = common dso_local global i32 0, align 4
@DISP_ORDER_RED_BLUE = common dso_local global i32 0, align 4
@DC_DISP_DISP_INTERFACE_CONTROL = common dso_local global i32 0, align 4
@SC0_H_QUALIFIER_NONE = common dso_local global i32 0, align 4
@SC1_H_QUALIFIER_NONE = common dso_local global i32 0, align 4
@DC_DISP_SHIFT_CLOCK_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @tegra_rgb_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_rgb_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.tegra_output*, align 8
  %4 = alloca %struct.tegra_rgb*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.tegra_output* @encoder_to_output(%struct.drm_encoder* %6)
  store %struct.tegra_output* %7, %struct.tegra_output** %3, align 8
  %8 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %9 = call %struct.tegra_rgb* @to_rgb(%struct.tegra_output* %8)
  store %struct.tegra_rgb* %9, %struct.tegra_rgb** %4, align 8
  %10 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @drm_panel_prepare(i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.tegra_rgb*, %struct.tegra_rgb** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @rgb_enable, align 4
  %24 = load i32, i32* @rgb_enable, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @tegra_dc_write_regs(i32 %22, i32 %23, i32 %25)
  %27 = load i32, i32* @DE_SELECT_ACTIVE, align 4
  %28 = load i32, i32* @DE_CONTROL_NORMAL, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.tegra_rgb*, %struct.tegra_rgb** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @DC_DISP_DATA_ENABLE_OPTIONS, align 4
  %35 = call i32 @tegra_dc_writel(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.tegra_rgb*, %struct.tegra_rgb** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DC_COM_PIN_OUTPUT_POLARITY(i32 1)
  %40 = call i32 @tegra_dc_readl(i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @LVS_OUTPUT_POLARITY_LOW, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @LHS_OUTPUT_POLARITY_LOW, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.tegra_rgb*, %struct.tegra_rgb** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @DC_COM_PIN_OUTPUT_POLARITY(i32 1)
  %54 = call i32 @tegra_dc_writel(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @DISP_DATA_FORMAT_DF1P1C, align 4
  %56 = load i32, i32* @DISP_ALIGNMENT_MSB, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @DISP_ORDER_RED_BLUE, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.tegra_rgb*, %struct.tegra_rgb** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @DC_DISP_DISP_INTERFACE_CONTROL, align 4
  %65 = call i32 @tegra_dc_writel(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @SC0_H_QUALIFIER_NONE, align 4
  %67 = load i32, i32* @SC1_H_QUALIFIER_NONE, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %5, align 4
  %69 = load %struct.tegra_rgb*, %struct.tegra_rgb** %4, align 8
  %70 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @DC_DISP_SHIFT_CLOCK_OPTIONS, align 4
  %74 = call i32 @tegra_dc_writel(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.tegra_rgb*, %struct.tegra_rgb** %4, align 8
  %76 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @tegra_dc_commit(i32 %77)
  %79 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %80 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %19
  %84 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %85 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @drm_panel_enable(i64 %86)
  br label %88

88:                                               ; preds = %83, %19
  ret void
}

declare dso_local %struct.tegra_output* @encoder_to_output(%struct.drm_encoder*) #1

declare dso_local %struct.tegra_rgb* @to_rgb(%struct.tegra_output*) #1

declare dso_local i32 @drm_panel_prepare(i64) #1

declare dso_local i32 @tegra_dc_write_regs(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @tegra_dc_writel(i32, i32, i32) #1

declare dso_local i32 @tegra_dc_readl(i32, i32) #1

declare dso_local i32 @DC_COM_PIN_OUTPUT_POLARITY(i32) #1

declare dso_local i32 @tegra_dc_commit(i32) #1

declare dso_local i32 @drm_panel_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
