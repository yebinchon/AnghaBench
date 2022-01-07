; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_dw_hdmi.c_sun8i_dw_hdmi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_dw_hdmi.c_sun8i_dw_hdmi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dw_hdmi_plat_data = type { i32 }
%struct.drm_device = type { i32 }
%struct.device_node = type { i32 }
%struct.drm_encoder = type { i64 }
%struct.sun8i_dw_hdmi = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_4__*, %struct.drm_encoder, %struct.TYPE_5__*, %struct.dw_hdmi_plat_data }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not get ctrl reset control\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tmds\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't get the tmds clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hvcc\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Couldn't get regulator\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ddc-en\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Couldn't get ddc-en gpio\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed to enable regulator\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Could not deassert ctrl reset control\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Could not enable tmds clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Can't found PHY phandle\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Couldn't get the HDMI PHY\0A\00", align 1
@sun8i_dw_hdmi_encoder_helper_funcs = common dso_local global i32 0, align 4
@sun8i_dw_hdmi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @sun8i_dw_hdmi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_dw_hdmi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.dw_hdmi_plat_data*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca %struct.drm_encoder*, align 8
  %14 = alloca %struct.sun8i_dw_hdmi*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.platform_device* @to_platform_device(%struct.device* %16)
  store %struct.platform_device* %17, %struct.platform_device** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.drm_device*
  store %struct.drm_device* %19, %struct.drm_device** %11, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %277

28:                                               ; preds = %3
  %29 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.sun8i_dw_hdmi* @devm_kzalloc(%struct.TYPE_5__* %30, i32 80, i32 %31)
  store %struct.sun8i_dw_hdmi* %32, %struct.sun8i_dw_hdmi** %14, align 8
  %33 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %34 = icmp ne %struct.sun8i_dw_hdmi* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %277

38:                                               ; preds = %28
  %39 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %40 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %39, i32 0, i32 9
  store %struct.dw_hdmi_plat_data* %40, %struct.dw_hdmi_plat_data** %10, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %44 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %43, i32 0, i32 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %46 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %45, i32 0, i32 7
  store %struct.drm_encoder* %46, %struct.drm_encoder** %13, align 8
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call %struct.TYPE_4__* @of_device_get_match_data(%struct.device* %47)
  %49 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %50 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %49, i32 0, i32 6
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @sun8i_dw_hdmi_find_possible_crtcs(%struct.drm_device* %51, i32 %54)
  %56 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  %57 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  %59 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %38
  %63 = load i32, i32* @EPROBE_DEFER, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %277

65:                                               ; preds = %38
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = call i64 @devm_reset_control_get(%struct.device* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %69 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %71 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @IS_ERR(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %79 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @PTR_ERR(i64 %80)
  store i32 %81, i32* %4, align 4
  br label %277

82:                                               ; preds = %65
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = call i64 @devm_clk_get(%struct.device* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %86 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %88 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @IS_ERR(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %96 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @PTR_ERR(i64 %97)
  store i32 %98, i32* %4, align 4
  br label %277

99:                                               ; preds = %82
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = call i64 @devm_regulator_get(%struct.device* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %103 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %105 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @IS_ERR(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %99
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %112 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %113 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @PTR_ERR(i64 %114)
  store i32 %115, i32* %4, align 4
  br label %277

116:                                              ; preds = %99
  %117 = load %struct.device*, %struct.device** %5, align 8
  %118 = call i32 @sun8i_dw_hdmi_find_connector_pdev(%struct.device* %117, %struct.platform_device** %9)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %143, label %121

121:                                              ; preds = %116
  %122 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %125 = call i64 @gpiod_get_optional(%struct.TYPE_5__* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  %126 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %127 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %129 = call i32 @platform_device_put(%struct.platform_device* %128)
  %130 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %131 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @IS_ERR(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %121
  %136 = load %struct.device*, %struct.device** %5, align 8
  %137 = call i32 @dev_err(%struct.device* %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %138 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %139 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @PTR_ERR(i64 %140)
  store i32 %141, i32* %4, align 4
  br label %277

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142, %116
  %144 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %145 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @regulator_enable(i64 %146)
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = call i32 @dev_err(%struct.device* %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %265

153:                                              ; preds = %143
  %154 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %155 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @gpiod_set_value(i64 %156, i32 1)
  %158 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %159 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @reset_control_deassert(i64 %160)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %153
  %165 = load %struct.device*, %struct.device** %5, align 8
  %166 = call i32 @dev_err(%struct.device* %165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  br label %256

167:                                              ; preds = %153
  %168 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %169 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @clk_prepare_enable(i64 %170)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load %struct.device*, %struct.device** %5, align 8
  %176 = call i32 @dev_err(%struct.device* %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %251

177:                                              ; preds = %167
  %178 = load %struct.device*, %struct.device** %5, align 8
  %179 = getelementptr inbounds %struct.device, %struct.device* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.device_node* @of_parse_phandle(i32 %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 0)
  store %struct.device_node* %181, %struct.device_node** %12, align 8
  %182 = load %struct.device_node*, %struct.device_node** %12, align 8
  %183 = icmp ne %struct.device_node* %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %177
  %185 = load %struct.device*, %struct.device** %5, align 8
  %186 = call i32 @dev_err(%struct.device* %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %246

187:                                              ; preds = %177
  %188 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %189 = load %struct.device_node*, %struct.device_node** %12, align 8
  %190 = call i32 @sun8i_hdmi_phy_probe(%struct.sun8i_dw_hdmi* %188, %struct.device_node* %189)
  store i32 %190, i32* %15, align 4
  %191 = load %struct.device_node*, %struct.device_node** %12, align 8
  %192 = call i32 @of_node_put(%struct.device_node* %191)
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = load %struct.device*, %struct.device** %5, align 8
  %197 = call i32 @dev_err(%struct.device* %196, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  br label %246

198:                                              ; preds = %187
  %199 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  %200 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %199, i32* @sun8i_dw_hdmi_encoder_helper_funcs)
  %201 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %202 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  %203 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %204 = call i32 @drm_encoder_init(%struct.drm_device* %201, %struct.drm_encoder* %202, i32* @sun8i_dw_hdmi_encoder_funcs, i32 %203, i32* null)
  %205 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %206 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @sun8i_hdmi_phy_init(i32 %207)
  %209 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %210 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %209, i32 0, i32 6
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %10, align 8
  %215 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %217 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %10, align 8
  %220 = call i32 @sun8i_hdmi_phy_set_ops(i32 %218, %struct.dw_hdmi_plat_data* %219)
  %221 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %222 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %223 = call i32 @platform_set_drvdata(%struct.platform_device* %221, %struct.sun8i_dw_hdmi* %222)
  %224 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %225 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  %226 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %10, align 8
  %227 = call i64 @dw_hdmi_bind(%struct.platform_device* %224, %struct.drm_encoder* %225, %struct.dw_hdmi_plat_data* %226)
  %228 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %229 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %228, i32 0, i32 4
  store i64 %227, i64* %229, align 8
  %230 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %231 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = call i64 @IS_ERR(i64 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %198
  %236 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %237 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @PTR_ERR(i64 %238)
  store i32 %239, i32* %15, align 4
  br label %241

240:                                              ; preds = %198
  store i32 0, i32* %4, align 4
  br label %277

241:                                              ; preds = %235
  %242 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  %243 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %242)
  %244 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %245 = call i32 @sun8i_hdmi_phy_remove(%struct.sun8i_dw_hdmi* %244)
  br label %246

246:                                              ; preds = %241, %195, %184
  %247 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %248 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @clk_disable_unprepare(i64 %249)
  br label %251

251:                                              ; preds = %246, %174
  %252 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %253 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @reset_control_assert(i64 %254)
  br label %256

256:                                              ; preds = %251, %164
  %257 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %258 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @gpiod_set_value(i64 %259, i32 0)
  %261 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %262 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @regulator_disable(i64 %263)
  br label %265

265:                                              ; preds = %256, %150
  %266 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %267 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %14, align 8
  %272 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @gpiod_put(i64 %273)
  br label %275

275:                                              ; preds = %270, %265
  %276 = load i32, i32* %15, align 4
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %275, %240, %135, %109, %92, %75, %62, %35, %25
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.sun8i_dw_hdmi* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i64 @sun8i_dw_hdmi_find_possible_crtcs(%struct.drm_device*, i32) #1

declare dso_local i64 @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @sun8i_dw_hdmi_find_connector_pdev(%struct.device*, %struct.platform_device**) #1

declare dso_local i64 @gpiod_get_optional(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @reset_control_deassert(i64) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @sun8i_hdmi_phy_probe(%struct.sun8i_dw_hdmi*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @sun8i_hdmi_phy_init(i32) #1

declare dso_local i32 @sun8i_hdmi_phy_set_ops(i32, %struct.dw_hdmi_plat_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sun8i_dw_hdmi*) #1

declare dso_local i64 @dw_hdmi_bind(%struct.platform_device*, %struct.drm_encoder*, %struct.dw_hdmi_plat_data*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @sun8i_hdmi_phy_remove(%struct.sun8i_dw_hdmi*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @reset_control_assert(i64) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @gpiod_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
