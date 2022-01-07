; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_meson_hdmi_phy_setup_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_meson_hdmi_phy_setup_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_dw_hdmi = type { %struct.meson_drm* }
%struct.meson_drm = type { i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"amlogic,meson-gxl-dw-hdmi\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"amlogic,meson-gxm-dw-hdmi\00", align 1
@HHI_HDMI_PHY_CNTL0 = common dso_local global i32 0, align 4
@HHI_HDMI_PHY_CNTL3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"amlogic,meson-gxbb-dw-hdmi\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"amlogic,meson-g12a-dw-hdmi\00", align 1
@HHI_HDMI_PHY_CNTL5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_dw_hdmi*, %struct.drm_display_mode*)* @meson_hdmi_phy_setup_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_hdmi_phy_setup_mode(%struct.meson_dw_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.meson_dw_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.meson_drm*, align 8
  %6 = alloca i32, align 4
  store %struct.meson_dw_hdmi* %0, %struct.meson_dw_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %7, i32 0, i32 0
  %9 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  store %struct.meson_drm* %9, %struct.meson_drm** %5, align 8
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %14 = call i64 @dw_hdmi_is_compatible(%struct.meson_dw_hdmi* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %18 = call i64 @dw_hdmi_is_compatible(%struct.meson_dw_hdmi* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp uge i32 %21, 371250
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %25 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %28 = call i32 @regmap_write(i32 %26, i32 %27, i32 859648642)
  %29 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %30 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HHI_HDMI_PHY_CNTL3, align 4
  %33 = call i32 @regmap_write(i32 %31, i32 %32, i32 557199707)
  br label %75

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = icmp uge i32 %35, 297000
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %39 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %42 = call i32 @regmap_write(i32 %40, i32 %41, i32 858796930)
  %43 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %44 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HHI_HDMI_PHY_CNTL3, align 4
  %47 = call i32 @regmap_write(i32 %45, i32 %46, i32 540422491)
  br label %74

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  %50 = icmp uge i32 %49, 148500
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %53 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %56 = call i32 @regmap_write(i32 %54, i32 %55, i32 858796898)
  %57 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %58 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HHI_HDMI_PHY_CNTL3, align 4
  %61 = call i32 @regmap_write(i32 %59, i32 %60, i32 538325339)
  br label %73

62:                                               ; preds = %48
  %63 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %64 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %67 = call i32 @regmap_write(i32 %65, i32 %66, i32 861946178)
  %68 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %69 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HHI_HDMI_PHY_CNTL3, align 4
  %72 = call i32 @regmap_write(i32 %70, i32 %71, i32 1454427)
  br label %73

73:                                               ; preds = %62, %51
  br label %74

74:                                               ; preds = %73, %37
  br label %75

75:                                               ; preds = %74, %23
  br label %183

76:                                               ; preds = %16
  %77 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %78 = call i64 @dw_hdmi_is_compatible(%struct.meson_dw_hdmi* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %121

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = icmp uge i32 %81, 371250
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %85 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %88 = call i32 @regmap_write(i32 %86, i32 %87, i32 859124293)
  %89 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %90 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HHI_HDMI_PHY_CNTL3, align 4
  %93 = call i32 @regmap_write(i32 %91, i32 %92, i32 553652571)
  br label %120

94:                                               ; preds = %80
  %95 = load i32, i32* %6, align 4
  %96 = icmp uge i32 %95, 297000
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %99 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %102 = call i32 @regmap_write(i32 %100, i32 %101, i32 862143107)
  %103 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %104 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @HHI_HDMI_PHY_CNTL3, align 4
  %107 = call i32 @regmap_write(i32 %105, i32 %106, i32 -1342172837)
  br label %119

108:                                              ; preds = %94
  %109 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %110 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %113 = call i32 @regmap_write(i32 %111, i32 %112, i32 862134562)
  %114 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %115 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @HHI_HDMI_PHY_CNTL3, align 4
  %118 = call i32 @regmap_write(i32 %116, i32 %117, i32 536875355)
  br label %119

119:                                              ; preds = %108, %97
  br label %120

120:                                              ; preds = %119, %83
  br label %182

121:                                              ; preds = %76
  %122 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %123 = call i64 @dw_hdmi_is_compatible(%struct.meson_dw_hdmi* %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %181

125:                                              ; preds = %121
  %126 = load i32, i32* %6, align 4
  %127 = icmp uge i32 %126, 371250
  br i1 %127, label %128, label %144

128:                                              ; preds = %125
  %129 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %130 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %133 = call i32 @regmap_write(i32 %131, i32 %132, i32 938173892)
  %134 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %135 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @HHI_HDMI_PHY_CNTL3, align 4
  %138 = call i32 @regmap_write(i32 %136, i32 %137, i32 716242747)
  %139 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %140 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @HHI_HDMI_PHY_CNTL5, align 4
  %143 = call i32 @regmap_write(i32 %141, i32 %142, i32 2059)
  br label %180

144:                                              ; preds = %125
  %145 = load i32, i32* %6, align 4
  %146 = icmp uge i32 %145, 297000
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %149 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %152 = call i32 @regmap_write(i32 %150, i32 %151, i32 871064162)
  %153 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %154 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @HHI_HDMI_PHY_CNTL3, align 4
  %157 = call i32 @regmap_write(i32 %155, i32 %156, i32 716242747)
  %158 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %159 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @HHI_HDMI_PHY_CNTL5, align 4
  %162 = call i32 @regmap_write(i32 %160, i32 %161, i32 3)
  br label %179

163:                                              ; preds = %144
  %164 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %165 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %168 = call i32 @regmap_write(i32 %166, i32 %167, i32 871055938)
  %169 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %170 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @HHI_HDMI_PHY_CNTL3, align 4
  %173 = call i32 @regmap_write(i32 %171, i32 %172, i32 716242747)
  %174 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %175 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @HHI_HDMI_PHY_CNTL5, align 4
  %178 = call i32 @regmap_write(i32 %176, i32 %177, i32 3)
  br label %179

179:                                              ; preds = %163, %147
  br label %180

180:                                              ; preds = %179, %128
  br label %181

181:                                              ; preds = %180, %121
  br label %182

182:                                              ; preds = %181, %120
  br label %183

183:                                              ; preds = %182, %75
  ret void
}

declare dso_local i64 @dw_hdmi_is_compatible(%struct.meson_dw_hdmi*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
