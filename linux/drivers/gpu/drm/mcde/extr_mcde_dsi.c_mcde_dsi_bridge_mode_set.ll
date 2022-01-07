; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_bridge_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_bridge_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.mcde_dsi = type { i64, %struct.TYPE_2__*, i8*, i32, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"no DSI device attached to encoder!\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"set DSI master to %dx%d %lu Hz %s mode\0A\00", align 1
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"VIDEO\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CMD\00", align 1
@DSI_DEFAULT_LP_FREQ_HZ = common dso_local global i64 0, align 8
@DSI_DEFAULT_HS_FREQ_HZ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to set LP clock rate %lu Hz\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to set HS clock rate %lu Hz\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to enable LP clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"DSI LP clock rate %lu Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to enable HS clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"DSI HS clock rate %lu Hz\0A\00", align 1
@DSI_CMD_MODE_CTL = common dso_local global i64 0, align 8
@DSI_CMD_MODE_CTL_IF1_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @mcde_dsi_bridge_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_dsi_bridge_mode_set(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.mcde_dsi*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %13 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %14 = call %struct.mcde_dsi* @bridge_to_mcde_dsi(%struct.drm_bridge* %13)
  store %struct.mcde_dsi* %14, %struct.mcde_dsi** %7, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 1000
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %21 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %26 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %203

29:                                               ; preds = %3
  %30 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %31 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %43 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %52 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %40, i64 %41, i8* %51)
  %53 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %54 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %29
  %60 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %61 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %10, align 8
  br label %67

65:                                               ; preds = %29
  %66 = load i64, i64* @DSI_DEFAULT_LP_FREQ_HZ, align 8
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %65, %59
  %68 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %69 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %76 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %9, align 8
  br label %82

80:                                               ; preds = %67
  %81 = load i64, i64* @DSI_DEFAULT_HS_FREQ_HZ, align 8
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %74
  %83 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %84 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i8* @clk_round_rate(i32 %85, i64 %86)
  %88 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %89 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %91 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %94 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @clk_set_rate(i32 %92, i8* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %82
  %100 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %101 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %104 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %103, i32 0, i32 5
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %99, %82
  %108 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %109 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %9, align 8
  %112 = call i8* @clk_round_rate(i32 %110, i64 %111)
  %113 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %114 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %116 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %119 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @clk_set_rate(i32 %117, i8* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %107
  %125 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %126 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %129 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %124, %107
  %133 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %134 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @clk_prepare_enable(i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %141 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %152

144:                                              ; preds = %132
  %145 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %146 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %149 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %148, i32 0, i32 5
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %144, %139
  %153 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %154 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @clk_prepare_enable(i32 %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %161 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (i32, i8*, ...) @dev_err(i32 %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %172

164:                                              ; preds = %152
  %165 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %166 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %169 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %164, %159
  %173 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %174 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %173, i32 0, i32 1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %172
  %182 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %183 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %184 = call i32 @mcde_dsi_setup_video_mode(%struct.mcde_dsi* %182, %struct.drm_display_mode* %183)
  br label %203

185:                                              ; preds = %172
  %186 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %187 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @DSI_CMD_MODE_CTL, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @readl(i64 %190)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* @DSI_CMD_MODE_CTL_IF1_ID_MASK, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %11, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.mcde_dsi*, %struct.mcde_dsi** %7, align 8
  %198 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @DSI_CMD_MODE_CTL, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @writel(i32 %196, i64 %201)
  br label %203

203:                                              ; preds = %24, %185, %181
  ret void
}

declare dso_local %struct.mcde_dsi* @bridge_to_mcde_dsi(%struct.drm_bridge*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, ...) #1

declare dso_local i8* @clk_round_rate(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mcde_dsi_setup_video_mode(%struct.mcde_dsi*, %struct.drm_display_mode*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
