; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lcdc_encoder.c_mdp4_lcdc_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lcdc_encoder.c_mdp4_lcdc_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mdp4_lcdc_encoder = type { i64, i32, i32, i32, i32* }
%struct.mdp4_kms = type { i32 }
%struct.drm_panel = type { i32 }

@BPC6 = common dso_local global i32 0, align 4
@MDP4_DMA_CONFIG_DEFLKR_EN = common dso_local global i32 0, align 4
@MDP4_DMA_CONFIG_DITHER_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"qcom,lcdc-align-lsb\00", align 1
@MDP4_DMA_CONFIG_PACK_ALIGN_MSB = common dso_local global i32 0, align 4
@INTF_LCDC_DTV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"setting lcdc_clk=%lu\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to configure lcdc_clk: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to enable lcdc_clk: %d\0A\00", align 1
@REG_MDP4_LCDC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @mdp4_lcdc_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_lcdc_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mdp4_lcdc_encoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mdp4_kms*, align 8
  %7 = alloca %struct.drm_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %15 = call %struct.mdp4_lcdc_encoder* @to_mdp4_lcdc_encoder(%struct.drm_encoder* %14)
  store %struct.mdp4_lcdc_encoder* %15, %struct.mdp4_lcdc_encoder** %4, align 8
  %16 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %20 = call %struct.mdp4_kms* @get_kms(%struct.drm_encoder* %19)
  store %struct.mdp4_kms* %20, %struct.mdp4_kms** %6, align 8
  %21 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %144

27:                                               ; preds = %1
  %28 = load i32, i32* @BPC6, align 4
  %29 = call i32 @MDP4_DMA_CONFIG_R_BPC(i32 %28)
  %30 = load i32, i32* @BPC6, align 4
  %31 = call i32 @MDP4_DMA_CONFIG_G_BPC(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @BPC6, align 4
  %34 = call i32 @MDP4_DMA_CONFIG_B_BPC(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i32 @MDP4_DMA_CONFIG_PACK(i32 33)
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MDP4_DMA_CONFIG_DEFLKR_EN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MDP4_DMA_CONFIG_DITHER_EN, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @of_property_read_bool(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %27
  %50 = load i32, i32* @MDP4_DMA_CONFIG_PACK_ALIGN_MSB, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %27
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %55 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @mdp4_crtc_set_config(i32 %56, i32 %57)
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %60 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @INTF_LCDC_DTV, align 4
  %63 = call i32 @mdp4_crtc_set_intf(i32 %61, i32 %62, i32 0)
  %64 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %65 = call i32 @bs_set(%struct.mdp4_lcdc_encoder* %64, i32 1)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %91, %53
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %69 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ARRAY_SIZE(i32* %70)
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %75 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @regulator_enable(i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %86 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @DRM_DEV_ERROR(%struct.TYPE_2__* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %73
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %66

94:                                               ; preds = %66
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  %97 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %98 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @clk_set_rate(i32 %99, i64 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %94
  %105 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %106 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @DRM_DEV_ERROR(%struct.TYPE_2__* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %104, %94
  %111 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %112 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @clk_prepare_enable(i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %119 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @DRM_DEV_ERROR(%struct.TYPE_2__* %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %117, %110
  %124 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %125 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call %struct.drm_panel* @of_drm_find_panel(i32 %126)
  store %struct.drm_panel* %127, %struct.drm_panel** %7, align 8
  %128 = load %struct.drm_panel*, %struct.drm_panel** %7, align 8
  %129 = call i32 @IS_ERR(%struct.drm_panel* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %123
  %132 = load %struct.drm_panel*, %struct.drm_panel** %7, align 8
  %133 = call i32 @drm_panel_prepare(%struct.drm_panel* %132)
  %134 = load %struct.drm_panel*, %struct.drm_panel** %7, align 8
  %135 = call i32 @drm_panel_enable(%struct.drm_panel* %134)
  br label %136

136:                                              ; preds = %131, %123
  %137 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %138 = call i32 @setup_phy(%struct.drm_encoder* %137)
  %139 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %140 = load i32, i32* @REG_MDP4_LCDC_ENABLE, align 4
  %141 = call i32 @mdp4_write(%struct.mdp4_kms* %139, i32 %140, i32 1)
  %142 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %143 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %142, i32 0, i32 1
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %136, %26
  ret void
}

declare dso_local %struct.mdp4_lcdc_encoder* @to_mdp4_lcdc_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @MDP4_DMA_CONFIG_R_BPC(i32) #1

declare dso_local i32 @MDP4_DMA_CONFIG_G_BPC(i32) #1

declare dso_local i32 @MDP4_DMA_CONFIG_B_BPC(i32) #1

declare dso_local i32 @MDP4_DMA_CONFIG_PACK(i32) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @mdp4_crtc_set_config(i32, i32) #1

declare dso_local i32 @mdp4_crtc_set_intf(i32, i32, i32) #1

declare dso_local i32 @bs_set(%struct.mdp4_lcdc_encoder*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @DBG(i8*, i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local %struct.drm_panel* @of_drm_find_panel(i32) #1

declare dso_local i32 @IS_ERR(%struct.drm_panel*) #1

declare dso_local i32 @drm_panel_prepare(%struct.drm_panel*) #1

declare dso_local i32 @drm_panel_enable(%struct.drm_panel*) #1

declare dso_local i32 @setup_phy(%struct.drm_encoder*) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
