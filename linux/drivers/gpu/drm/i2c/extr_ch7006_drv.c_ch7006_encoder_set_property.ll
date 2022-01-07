; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.TYPE_3__* }
%struct.drm_crtc = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_connector = type { i64 }
%struct.drm_property = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ch7006_priv = type { i8*, %struct.drm_property*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.ch7006_state }
%struct.ch7006_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CH7006_POWER = common dso_local global i32 0, align 4
@CH7006_POV = common dso_local global i32 0, align 4
@CH7006_HPOS = common dso_local global i32 0, align 4
@CH7006_VPOS = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CH7006_BLACK_LEVEL = common dso_local global i32 0, align 4
@CH7006_CONTRAST = common dso_local global i32 0, align 4
@CH7006_FFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*, %struct.drm_property*, i8*)* @ch7006_encoder_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch7006_encoder_set_property(%struct.drm_encoder* %0, %struct.drm_connector* %1, %struct.drm_property* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.ch7006_priv*, align 8
  %12 = alloca %struct.ch7006_state*, align 8
  %13 = alloca %struct.drm_mode_config*, align 8
  %14 = alloca %struct.drm_crtc*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %6, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %17 = call %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %19 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %18)
  store %struct.ch7006_priv* %19, %struct.ch7006_priv** %11, align 8
  %20 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %21 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %20, i32 0, i32 9
  store %struct.ch7006_state* %21, %struct.ch7006_state** %12, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.drm_mode_config* %25, %struct.drm_mode_config** %13, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %27 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %26, i32 0, i32 0
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %27, align 8
  store %struct.drm_crtc* %28, %struct.drm_crtc** %14, align 8
  store i32 0, i32* %15, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %30 = call i32 @ch7006_dbg(%struct.i2c_client* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %32 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %33 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %32, i32 0, i32 6
  %34 = load %struct.drm_property*, %struct.drm_property** %33, align 8
  %35 = icmp eq %struct.drm_property* %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %4
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %39 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %41 = call i32 @ch7006_setup_power_state(%struct.drm_encoder* %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %43 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %44 = load i32, i32* @CH7006_POWER, align 4
  %45 = call i32 @ch7006_load_reg(%struct.i2c_client* %42, %struct.ch7006_state* %43, i32 %44)
  br label %182

46:                                               ; preds = %4
  %47 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %48 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %49 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %48, i32 0, i32 5
  %50 = load %struct.drm_property*, %struct.drm_property** %49, align 8
  %51 = icmp eq %struct.drm_property* %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %55 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %57 = call i32 @ch7006_setup_properties(%struct.drm_encoder* %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %59 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %60 = load i32, i32* @CH7006_POV, align 4
  %61 = call i32 @ch7006_load_reg(%struct.i2c_client* %58, %struct.ch7006_state* %59, i32 %60)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %63 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %64 = load i32, i32* @CH7006_HPOS, align 4
  %65 = call i32 @ch7006_load_reg(%struct.i2c_client* %62, %struct.ch7006_state* %63, i32 %64)
  br label %181

66:                                               ; preds = %46
  %67 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %68 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %69 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %68, i32 0, i32 4
  %70 = load %struct.drm_property*, %struct.drm_property** %69, align 8
  %71 = icmp eq %struct.drm_property* %67, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load i8*, i8** %9, align 8
  %74 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %75 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %77 = call i32 @ch7006_setup_properties(%struct.drm_encoder* %76)
  %78 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %79 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %80 = load i32, i32* @CH7006_POV, align 4
  %81 = call i32 @ch7006_load_reg(%struct.i2c_client* %78, %struct.ch7006_state* %79, i32 %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %83 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %84 = load i32, i32* @CH7006_VPOS, align 4
  %85 = call i32 @ch7006_load_reg(%struct.i2c_client* %82, %struct.ch7006_state* %83, i32 %84)
  br label %180

86:                                               ; preds = %66
  %87 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %88 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %89 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %88, i32 0, i32 3
  %90 = load %struct.drm_property*, %struct.drm_property** %89, align 8
  %91 = icmp eq %struct.drm_property* %87, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %94 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DRM_MODE_DPMS_OFF, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %208

101:                                              ; preds = %92
  %102 = load i8*, i8** %9, align 8
  %103 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %104 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  store i32 1, i32* %15, align 4
  br label %179

105:                                              ; preds = %86
  %106 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %107 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %108 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %107, i32 0, i32 2
  %109 = load %struct.drm_property*, %struct.drm_property** %108, align 8
  %110 = icmp eq %struct.drm_property* %106, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load i8*, i8** %9, align 8
  %113 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %114 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  %115 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %116 = call i32 @ch7006_setup_levels(%struct.drm_encoder* %115)
  %117 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %118 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %119 = load i32, i32* @CH7006_BLACK_LEVEL, align 4
  %120 = call i32 @ch7006_load_reg(%struct.i2c_client* %117, %struct.ch7006_state* %118, i32 %119)
  br label %178

121:                                              ; preds = %105
  %122 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %123 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %124 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %123, i32 0, i32 1
  %125 = load %struct.drm_property*, %struct.drm_property** %124, align 8
  %126 = icmp eq %struct.drm_property* %122, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load i8*, i8** %9, align 8
  %129 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %130 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  %131 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %132 = call i32 @ch7006_setup_properties(%struct.drm_encoder* %131)
  %133 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %134 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %135 = load i32, i32* @CH7006_CONTRAST, align 4
  %136 = call i32 @ch7006_load_reg(%struct.i2c_client* %133, %struct.ch7006_state* %134, i32 %135)
  br label %177

137:                                              ; preds = %121
  %138 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %139 = load %struct.drm_mode_config*, %struct.drm_mode_config** %13, align 8
  %140 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %139, i32 0, i32 0
  %141 = load %struct.drm_property*, %struct.drm_property** %140, align 8
  %142 = icmp eq %struct.drm_property* %138, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load i8*, i8** %9, align 8
  %145 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %146 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  %147 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %148 = call i32 @ch7006_setup_properties(%struct.drm_encoder* %147)
  %149 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %150 = load %struct.ch7006_state*, %struct.ch7006_state** %12, align 8
  %151 = load i32, i32* @CH7006_FFILTER, align 4
  %152 = call i32 @ch7006_load_reg(%struct.i2c_client* %149, %struct.ch7006_state* %150, i32 %151)
  br label %176

153:                                              ; preds = %137
  %154 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %155 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %156 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %155, i32 0, i32 1
  %157 = load %struct.drm_property*, %struct.drm_property** %156, align 8
  %158 = icmp eq %struct.drm_property* %154, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %153
  %160 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %161 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DRM_MODE_DPMS_OFF, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %5, align 4
  br label %208

168:                                              ; preds = %159
  %169 = load i8*, i8** %9, align 8
  %170 = load %struct.ch7006_priv*, %struct.ch7006_priv** %11, align 8
  %171 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  store i32 1, i32* %15, align 4
  br label %175

172:                                              ; preds = %153
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  br label %208

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175, %143
  br label %177

177:                                              ; preds = %176, %127
  br label %178

178:                                              ; preds = %177, %111
  br label %179

179:                                              ; preds = %178, %101
  br label %180

180:                                              ; preds = %179, %72
  br label %181

181:                                              ; preds = %180, %52
  br label %182

182:                                              ; preds = %181, %36
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %207

185:                                              ; preds = %182
  %186 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %187 = call i32 @drm_helper_probe_single_connector_modes(%struct.drm_connector* %186, i32 0, i32 0)
  %188 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %189 = icmp ne %struct.drm_crtc* %188, null
  br i1 %189, label %190, label %206

190:                                              ; preds = %185
  %191 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %192 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %193 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %192, i32 0, i32 3
  %194 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %195 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %198 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %201 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %200, i32 0, i32 0
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @drm_crtc_helper_set_mode(%struct.drm_crtc* %191, i32* %193, i32 %196, i32 %199, i32 %204)
  br label %206

206:                                              ; preds = %190, %185
  br label %207

207:                                              ; preds = %206, %182
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %207, %172, %165, %98
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local %struct.i2c_client* @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_dbg(%struct.i2c_client*, i8*) #1

declare dso_local i32 @ch7006_setup_power_state(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_load_reg(%struct.i2c_client*, %struct.ch7006_state*, i32) #1

declare dso_local i32 @ch7006_setup_properties(%struct.drm_encoder*) #1

declare dso_local i32 @ch7006_setup_levels(%struct.drm_encoder*) #1

declare dso_local i32 @drm_helper_probe_single_connector_modes(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @drm_crtc_helper_set_mode(%struct.drm_crtc*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
