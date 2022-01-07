; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_setup_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_setup_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hdmi = type { i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tegra_hdmi_audio_config = type { i32, i32, i64 }

@SOR_AUDIO_CNTRL0_SOURCE_SELECT_HDAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOR_AUDIO_CNTRL0_SOURCE_SELECT_SPDIF = common dso_local global i32 0, align 4
@AUDIO_CNTRL0_SOURCE_SELECT_SPDIF = common dso_local global i32 0, align 4
@SOR_AUDIO_CNTRL0_SOURCE_SELECT_AUTO = common dso_local global i32 0, align 4
@AUDIO_CNTRL0_SOURCE_SELECT_AUTO = common dso_local global i32 0, align 4
@SOR_AUDIO_CNTRL0_INJECT_NULLSMPL = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_AUDIO_CNTRL0 = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_AUDIO_CNTRL0 = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_AUDIO_SPARE0 = common dso_local global i32 0, align 4
@SOR_AUDIO_SPARE0_HBR_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"cannot set audio to %u Hz at %u Hz pixel clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"audio: pixclk=%u, n=%u, cts=%u, aval=%u\0A\00", align 1
@HDMI_NV_PDISP_HDMI_ACR_CTRL = common dso_local global i32 0, align 4
@AUDIO_N_RESETF = common dso_local global i32 0, align 4
@AUDIO_N_GENERATE_ALTERNATE = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_AUDIO_N = common dso_local global i32 0, align 4
@ACR_ENABLE = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_HIGH = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_LOW = common dso_local global i32 0, align 4
@SPARE_HW_CTS = common dso_local global i32 0, align 4
@SPARE_FORCE_SW_CTS = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_SPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_hdmi*)* @tegra_hdmi_setup_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hdmi_setup_audio(%struct.tegra_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_hdmi*, align 8
  %4 = alloca %struct.tegra_hdmi_audio_config, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_hdmi* %0, %struct.tegra_hdmi** %3, align 8
  %8 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %36 [
    i32 129, label %11
    i32 128, label %24
  ]

11:                                               ; preds = %1
  %12 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @SOR_AUDIO_CNTRL0_SOURCE_SELECT_HDAL, align 4
  store i32 %19, i32* %5, align 4
  br label %23

20:                                               ; preds = %11
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %209

23:                                               ; preds = %18
  br label %48

24:                                               ; preds = %1
  %25 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @SOR_AUDIO_CNTRL0_SOURCE_SELECT_SPDIF, align 4
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @AUDIO_CNTRL0_SOURCE_SELECT_SPDIF, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %48

36:                                               ; preds = %1
  %37 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @SOR_AUDIO_CNTRL0_SOURCE_SELECT_AUTO, align 4
  store i32 %44, i32* %5, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @AUDIO_CNTRL0_SOURCE_SELECT_AUTO, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %35, %23
  %49 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %50 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @SOR_AUDIO_CNTRL0_INJECT_NULLSMPL, align 4
  store i32 %62, i32* %6, align 4
  br label %64

63:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %61
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_CNTRL0, align 4
  %71 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %48
  %73 = call i32 @AUDIO_CNTRL0_FRAMES_PER_BLOCK(i32 192)
  %74 = call i32 @AUDIO_CNTRL0_ERROR_TOLERANCE(i32 6)
  %75 = or i32 %73, %74
  store i32 %75, i32* %6, align 4
  %76 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %77 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %72
  %87 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @HDMI_NV_PDISP_AUDIO_CNTRL0, align 4
  %90 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %87, i32 %88, i32 %89)
  %91 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %92 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %86
  %98 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %99 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_SPARE0, align 4
  %100 = call i32 @tegra_hdmi_readl(%struct.tegra_hdmi* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* @SOR_AUDIO_SPARE0_HBR_ENABLE, align 4
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_SPARE0, align 4
  %107 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %97, %86
  %109 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %110 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %114 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @tegra_hdmi_get_audio_config(i32 %112, i32 %115, %struct.tegra_hdmi_audio_config* %4)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %108
  %120 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %121 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %124 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %128 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %209

132:                                              ; preds = %108
  %133 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %134 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %137 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %4, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %4, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %4, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dev_dbg(i32 %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %138, i64 %140, i32 %142, i32 %144)
  %146 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %147 = load i32, i32* @HDMI_NV_PDISP_HDMI_ACR_CTRL, align 4
  %148 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %146, i32 0, i32 %147)
  %149 = load i32, i32* @AUDIO_N_RESETF, align 4
  %150 = load i32, i32* @AUDIO_N_GENERATE_ALTERNATE, align 4
  %151 = or i32 %149, %150
  %152 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %4, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %153, 1
  %155 = call i32 @AUDIO_N_VALUE(i64 %154)
  %156 = or i32 %151, %155
  store i32 %156, i32* %6, align 4
  %157 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @HDMI_NV_PDISP_AUDIO_N, align 4
  %160 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %157, i32 %158, i32 %159)
  %161 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %162 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %4, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @ACR_SUBPACK_N(i64 %163)
  %165 = load i32, i32* @ACR_ENABLE, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_HIGH, align 4
  %168 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %161, i32 %166, i32 %167)
  %169 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %170 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %4, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ACR_SUBPACK_CTS(i32 %171)
  %173 = load i32, i32* @HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_LOW, align 4
  %174 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %169, i32 %172, i32 %173)
  %175 = load i32, i32* @SPARE_HW_CTS, align 4
  %176 = load i32, i32* @SPARE_FORCE_SW_CTS, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @SPARE_CTS_RESET_VAL(i32 1)
  %179 = or i32 %177, %178
  store i32 %179, i32* %6, align 4
  %180 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @HDMI_NV_PDISP_HDMI_SPARE, align 4
  %183 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %180, i32 %181, i32 %182)
  %184 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %185 = load i32, i32* @HDMI_NV_PDISP_AUDIO_N, align 4
  %186 = call i32 @tegra_hdmi_readl(%struct.tegra_hdmi* %184, i32 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* @AUDIO_N_RESETF, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %6, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %6, align 4
  %191 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @HDMI_NV_PDISP_AUDIO_N, align 4
  %194 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %191, i32 %192, i32 %193)
  %195 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %196 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %195, i32 0, i32 1
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %132
  %202 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %203 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %4, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @tegra_hdmi_write_aval(%struct.tegra_hdmi* %202, i32 %204)
  br label %206

206:                                              ; preds = %201, %132
  %207 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %208 = call i32 @tegra_hdmi_setup_audio_fs_tables(%struct.tegra_hdmi* %207)
  store i32 0, i32* %2, align 4
  br label %209

209:                                              ; preds = %206, %119, %20
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @tegra_hdmi_writel(%struct.tegra_hdmi*, i32, i32) #1

declare dso_local i32 @AUDIO_CNTRL0_FRAMES_PER_BLOCK(i32) #1

declare dso_local i32 @AUDIO_CNTRL0_ERROR_TOLERANCE(i32) #1

declare dso_local i32 @tegra_hdmi_readl(%struct.tegra_hdmi*, i32) #1

declare dso_local i32 @tegra_hdmi_get_audio_config(i32, i32, %struct.tegra_hdmi_audio_config*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @AUDIO_N_VALUE(i64) #1

declare dso_local i32 @ACR_SUBPACK_N(i64) #1

declare dso_local i32 @ACR_SUBPACK_CTS(i32) #1

declare dso_local i32 @SPARE_CTS_RESET_VAL(i32) #1

declare dso_local i32 @tegra_hdmi_write_aval(%struct.tegra_hdmi*, i32) #1

declare dso_local i32 @tegra_hdmi_setup_audio_fs_tables(%struct.tegra_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
