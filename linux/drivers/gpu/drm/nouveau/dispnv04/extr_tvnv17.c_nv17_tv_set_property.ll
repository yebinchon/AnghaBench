; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.TYPE_3__* }
%struct.drm_crtc = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_connector = type { i64 }
%struct.drm_property = type { i32 }
%struct.nv17_tv_encoder = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.nv17_tv_norm_params = type { i64 }

@CTV_ENC_MODE = common dso_local global i64 0, align 8
@TV_ENC_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*, %struct.drm_property*, i8*)* @nv17_tv_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_tv_set_property(%struct.drm_encoder* %0, %struct.drm_connector* %1, %struct.drm_property* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.drm_mode_config*, align 8
  %11 = alloca %struct.drm_crtc*, align 8
  %12 = alloca %struct.nv17_tv_encoder*, align 8
  %13 = alloca %struct.nv17_tv_norm_params*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %6, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.drm_mode_config* %18, %struct.drm_mode_config** %10, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %20 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %19, i32 0, i32 0
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  store %struct.drm_crtc* %21, %struct.drm_crtc** %11, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %23 = call %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder* %22)
  store %struct.nv17_tv_encoder* %23, %struct.nv17_tv_encoder** %12, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %25 = call %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder* %24)
  store %struct.nv17_tv_norm_params* %25, %struct.nv17_tv_norm_params** %13, align 8
  store i32 0, i32* %14, align 4
  %26 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %27 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %28 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %27, i32 0, i32 5
  %29 = load %struct.drm_property*, %struct.drm_property** %28, align 8
  %30 = icmp eq %struct.drm_property* %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %4
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %34 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %36 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %35, i32 0, i32 0
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %36, align 8
  %38 = icmp ne %struct.drm_crtc* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %13, align 8
  %41 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CTV_ENC_MODE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %47 = call i32 @nv17_ctv_update_rescaler(%struct.drm_encoder* %46)
  br label %51

48:                                               ; preds = %39
  %49 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %50 = call i32 @nv17_tv_update_rescaler(%struct.drm_encoder* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %31
  br label %170

53:                                               ; preds = %4
  %54 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %55 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %56 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %55, i32 0, i32 4
  %57 = load %struct.drm_property*, %struct.drm_property** %56, align 8
  %58 = icmp eq %struct.drm_property* %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %13, align 8
  %61 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TV_ENC_MODE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %196

68:                                               ; preds = %59
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %71 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %73 = call i32 @nv17_tv_update_properties(%struct.drm_encoder* %72)
  br label %169

74:                                               ; preds = %53
  %75 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %76 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %77 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %76, i32 0, i32 3
  %78 = load %struct.drm_property*, %struct.drm_property** %77, align 8
  %79 = icmp eq %struct.drm_property* %75, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %13, align 8
  %82 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TV_ENC_MODE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %196

89:                                               ; preds = %80
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %92 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %94 = call i32 @nv17_tv_update_properties(%struct.drm_encoder* %93)
  br label %168

95:                                               ; preds = %74
  %96 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %97 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %98 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %97, i32 0, i32 2
  %99 = load %struct.drm_property*, %struct.drm_property** %98, align 8
  %100 = icmp eq %struct.drm_property* %96, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %95
  %102 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %13, align 8
  %103 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TV_ENC_MODE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %196

110:                                              ; preds = %101
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %113 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %115 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %114, i32 0, i32 0
  %116 = load %struct.drm_crtc*, %struct.drm_crtc** %115, align 8
  %117 = icmp ne %struct.drm_crtc* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %120 = call i32 @nv17_tv_update_rescaler(%struct.drm_encoder* %119)
  br label %121

121:                                              ; preds = %118, %110
  br label %167

122:                                              ; preds = %95
  %123 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %124 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %125 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %124, i32 0, i32 1
  %126 = load %struct.drm_property*, %struct.drm_property** %125, align 8
  %127 = icmp eq %struct.drm_property* %123, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %130 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @DRM_MODE_DPMS_OFF, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %196

137:                                              ; preds = %128
  %138 = load i8*, i8** %9, align 8
  %139 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %140 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  store i32 1, i32* %14, align 4
  br label %166

141:                                              ; preds = %122
  %142 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %143 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %144 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %143, i32 0, i32 0
  %145 = load %struct.drm_property*, %struct.drm_property** %144, align 8
  %146 = icmp eq %struct.drm_property* %142, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %13, align 8
  %149 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @TV_ENC_MODE, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %196

156:                                              ; preds = %147
  %157 = load i8*, i8** %9, align 8
  %158 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %12, align 8
  %159 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %161 = call i32 @nv17_tv_update_properties(%struct.drm_encoder* %160)
  br label %165

162:                                              ; preds = %141
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %5, align 4
  br label %196

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165, %137
  br label %167

167:                                              ; preds = %166, %121
  br label %168

168:                                              ; preds = %167, %89
  br label %169

169:                                              ; preds = %168, %68
  br label %170

170:                                              ; preds = %169, %52
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %170
  %174 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %175 = call i32 @drm_helper_probe_single_connector_modes(%struct.drm_connector* %174, i32 0, i32 0)
  %176 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %177 = icmp ne %struct.drm_crtc* %176, null
  br i1 %177, label %178, label %194

178:                                              ; preds = %173
  %179 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %180 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %181 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %180, i32 0, i32 3
  %182 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %183 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %186 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %189 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @drm_crtc_helper_set_mode(%struct.drm_crtc* %179, i32* %181, i32 %184, i32 %187, i32 %192)
  br label %194

194:                                              ; preds = %178, %173
  br label %195

195:                                              ; preds = %194, %170
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %195, %162, %153, %134, %107, %86, %65
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder*) #1

declare dso_local %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local i32 @nv17_ctv_update_rescaler(%struct.drm_encoder*) #1

declare dso_local i32 @nv17_tv_update_rescaler(%struct.drm_encoder*) #1

declare dso_local i32 @nv17_tv_update_properties(%struct.drm_encoder*) #1

declare dso_local i32 @drm_helper_probe_single_connector_modes(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @drm_crtc_helper_set_mode(%struct.drm_crtc*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
