; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder_helper_funcs = type { i32 }
%struct.host1x_client = type { i32, i32 }
%struct.drm_device = type { i32 }
%struct.tegra_sor = type { i32, i32, i64, i32, i32, %struct.TYPE_10__, i64, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }

@DRM_MODE_CONNECTOR_Unknown = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_NONE = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@tegra_sor_hdmi_helpers = common dso_local global %struct.drm_encoder_helper_funcs zeroinitializer, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4
@tegra_sor_edp_helpers = common dso_local global %struct.drm_encoder_helper_funcs zeroinitializer, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i32 0, align 4
@tegra_sor_connector_funcs = common dso_local global i32 0, align 4
@tegra_sor_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@tegra_sor_encoder_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to initialize output: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to attach DP: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to acquire SOR reset: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to assert SOR reset: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to deassert SOR reset: %d\0A\00", align 1
@SOR_INT_CODEC_SCRATCH1 = common dso_local global i32 0, align 4
@SOR_INT_CODEC_SCRATCH0 = common dso_local global i32 0, align 4
@SOR_INT_ENABLE = common dso_local global i32 0, align 4
@SOR_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @tegra_sor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_init(%struct.host1x_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_encoder_helper_funcs*, align 8
  %6 = alloca %struct.tegra_sor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  %11 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %12 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_device* @dev_get_drvdata(i32 %13)
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  store %struct.drm_encoder_helper_funcs* null, %struct.drm_encoder_helper_funcs** %5, align 8
  %15 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %16 = call %struct.tegra_sor* @host1x_client_to_sor(%struct.host1x_client* %15)
  store %struct.tegra_sor* %16, %struct.tegra_sor** %6, align 8
  %17 = load i32, i32* @DRM_MODE_CONNECTOR_Unknown, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @DRM_MODE_ENCODER_NONE, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %20 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %1
  %24 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %24, i32 0, i32 7
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  store i32 %32, i32* %8, align 4
  store %struct.drm_encoder_helper_funcs* @tegra_sor_hdmi_helpers, %struct.drm_encoder_helper_funcs** %5, align 8
  br label %44

33:                                               ; preds = %23
  %34 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %35 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %34, i32 0, i32 7
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @DRM_MODE_ENCODER_LVDS, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %30
  br label %67

45:                                               ; preds = %1
  %46 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %47 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %46, i32 0, i32 7
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  store i32 %54, i32* %8, align 4
  store %struct.drm_encoder_helper_funcs* @tegra_sor_edp_helpers, %struct.drm_encoder_helper_funcs** %5, align 8
  br label %66

55:                                               ; preds = %45
  %56 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %57 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %56, i32 0, i32 7
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @DRM_MODE_CONNECTOR_DisplayPort, align 4
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %55
  br label %66

66:                                               ; preds = %65, %52
  br label %67

67:                                               ; preds = %66, %44
  %68 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %69 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %72 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %75 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %76 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @drm_connector_init(%struct.drm_device* %74, %struct.TYPE_11__* %77, i32* @tegra_sor_connector_funcs, i32 %78)
  %80 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %81 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = call i32 @drm_connector_helper_add(%struct.TYPE_11__* %82, i32* @tegra_sor_connector_helper_funcs)
  %84 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %85 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %86 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 8
  %89 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %90 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %91 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @drm_encoder_init(%struct.drm_device* %89, i32* %92, i32* @tegra_sor_encoder_funcs, i32 %93, i32* null)
  %95 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %96 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %5, align 8
  %99 = call i32 @drm_encoder_helper_add(i32* %97, %struct.drm_encoder_helper_funcs* %98)
  %100 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %101 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %104 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = call i32 @drm_connector_attach_encoder(%struct.TYPE_11__* %102, i32* %105)
  %107 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %108 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = call i32 @drm_connector_register(%struct.TYPE_11__* %109)
  %111 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %112 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %113 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %112, i32 0, i32 5
  %114 = call i32 @tegra_output_init(%struct.drm_device* %111, %struct.TYPE_10__* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %67
  %118 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %119 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %2, align 4
  br label %253

124:                                              ; preds = %67
  %125 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %126 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %125, i32 0, i32 5
  %127 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %128 = call i32 @tegra_output_find_possible_crtcs(%struct.TYPE_10__* %126, %struct.drm_device* %127)
  %129 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %130 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %124
  %134 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %135 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %138 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %137, i32 0, i32 5
  %139 = call i32 @drm_dp_aux_attach(i64 %136, %struct.TYPE_10__* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %133
  %143 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %144 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @dev_err(i32 %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %2, align 4
  br label %253

149:                                              ; preds = %133
  br label %150

150:                                              ; preds = %149, %124
  %151 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %152 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %184

155:                                              ; preds = %150
  %156 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %157 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @reset_control_acquire(i64 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %155
  %163 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %164 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @dev_err(i32 %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %2, align 4
  br label %253

169:                                              ; preds = %155
  %170 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %171 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @reset_control_assert(i64 %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %169
  %177 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %178 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @dev_err(i32 %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %2, align 4
  br label %253

183:                                              ; preds = %169
  br label %184

184:                                              ; preds = %183, %150
  %185 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %186 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @clk_prepare_enable(i32 %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %184
  %192 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %193 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @dev_err(i32 %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %10, align 4
  store i32 %197, i32* %2, align 4
  br label %253

198:                                              ; preds = %184
  %199 = call i32 @usleep_range(i32 1000, i32 3000)
  %200 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %201 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %198
  %205 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %206 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @reset_control_deassert(i64 %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %204
  %212 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %213 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @dev_err(i32 %214, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %10, align 4
  store i32 %217, i32* %2, align 4
  br label %253

218:                                              ; preds = %204
  %219 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %220 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @reset_control_release(i64 %221)
  br label %223

223:                                              ; preds = %218, %198
  %224 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %225 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @clk_prepare_enable(i32 %226)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %223
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %2, align 4
  br label %253

232:                                              ; preds = %223
  %233 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %234 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @clk_prepare_enable(i32 %235)
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %2, align 4
  br label %253

241:                                              ; preds = %232
  %242 = load i32, i32* @SOR_INT_CODEC_SCRATCH1, align 4
  %243 = load i32, i32* @SOR_INT_CODEC_SCRATCH0, align 4
  %244 = or i32 %242, %243
  store i32 %244, i32* %9, align 4
  %245 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @SOR_INT_ENABLE, align 4
  %248 = call i32 @tegra_sor_writel(%struct.tegra_sor* %245, i32 %246, i32 %247)
  %249 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* @SOR_INT_MASK, align 4
  %252 = call i32 @tegra_sor_writel(%struct.tegra_sor* %249, i32 %250, i32 %251)
  store i32 0, i32* %2, align 4
  br label %253

253:                                              ; preds = %241, %239, %230, %211, %191, %176, %162, %142, %117
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.tegra_sor* @host1x_client_to_sor(%struct.host1x_client*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(i32*, %struct.drm_encoder_helper_funcs*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @drm_connector_register(%struct.TYPE_11__*) #1

declare dso_local i32 @tegra_output_init(%struct.drm_device*, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tegra_output_find_possible_crtcs(%struct.TYPE_10__*, %struct.drm_device*) #1

declare dso_local i32 @drm_dp_aux_attach(i64, %struct.TYPE_10__*) #1

declare dso_local i32 @reset_control_acquire(i64) #1

declare dso_local i32 @reset_control_assert(i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_deassert(i64) #1

declare dso_local i32 @reset_control_release(i64) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
