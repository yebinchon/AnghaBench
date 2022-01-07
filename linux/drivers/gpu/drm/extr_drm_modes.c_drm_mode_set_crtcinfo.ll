; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_set_crtcinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_set_crtcinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4
@CRTC_NO_DBLSCAN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@CRTC_NO_VSCAN = common dso_local global i32 0, align 4
@CRTC_STEREO_DOUBLE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mode_set_crtcinfo(%struct.drm_display_mode* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %7 = icmp ne %struct.drm_display_mode* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %242

9:                                                ; preds = %2
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 24
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 25
  store i32 %37, i32* %39, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 8
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 12
  store i32 %47, i32* %49, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 14
  store i32 %52, i32* %54, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 17
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 16
  store i32 %57, i32* %59, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 18
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %9
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 8
  %75 = sdiv i32 %74, 2
  store i32 %75, i32* %73, align 8
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 12
  %78 = load i32, i32* %77, align 8
  %79 = sdiv i32 %78, 2
  store i32 %79, i32* %77, align 8
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %81, align 8
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 16
  %86 = load i32, i32* %85, align 8
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %71, %66
  br label %89

89:                                               ; preds = %88, %9
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @CRTC_NO_DBLSCAN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %89
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 18
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %94
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %104, 2
  store i32 %105, i32* %103, align 8
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 2
  store i32 %109, i32* %107, align 8
  %110 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %111 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %110, i32 0, i32 14
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %112, 2
  store i32 %113, i32* %111, align 8
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 16
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 2
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %101, %94
  br label %119

119:                                              ; preds = %118, %89
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @CRTC_NO_VSCAN, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %159, label %124

124:                                              ; preds = %119
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %125, i32 0, i32 19
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %158

129:                                              ; preds = %124
  %130 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %131 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %130, i32 0, i32 19
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %138 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %137, i32 0, i32 19
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %141 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %140, i32 0, i32 12
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %144, i32 0, i32 19
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %148 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %147, i32 0, i32 14
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %152 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %151, i32 0, i32 19
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %155 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %154, i32 0, i32 16
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %129, %124
  br label %159

159:                                              ; preds = %158, %119
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @CRTC_STEREO_DOUBLE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %205

164:                                              ; preds = %159
  %165 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %166 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %165, i32 0, i32 18
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %169 = and i32 %167, %168
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  switch i32 %170, label %204 [
    i32 128, label %171
  ]

171:                                              ; preds = %164
  %172 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %173 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %174, 2
  store i32 %175, i32* %173, align 8
  %176 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %177 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %176, i32 0, i32 16
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %180 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %184 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %183, i32 0, i32 16
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %187 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %191 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %190, i32 0, i32 16
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %194 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %193, i32 0, i32 14
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %198 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %197, i32 0, i32 16
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %201 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %200, i32 0, i32 16
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %164, %171
  br label %205

205:                                              ; preds = %204, %159
  %206 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %207 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %206, i32 0, i32 12
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %210 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = call i8* @min(i32 %208, i32 %211)
  %213 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %214 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %213, i32 0, i32 23
  store i8* %212, i8** %214, align 8
  %215 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %216 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %215, i32 0, i32 14
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %219 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %218, i32 0, i32 16
  %220 = load i32, i32* %219, align 8
  %221 = call i8* @max(i32 %217, i32 %220)
  %222 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %223 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %222, i32 0, i32 22
  store i8* %221, i8** %223, align 8
  %224 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %225 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %228 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i8* @min(i32 %226, i32 %229)
  %231 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %232 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %231, i32 0, i32 21
  store i8* %230, i8** %232, align 8
  %233 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %234 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %237 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 8
  %239 = call i8* @max(i32 %235, i32 %238)
  %240 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %241 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %240, i32 0, i32 20
  store i8* %239, i8** %241, align 8
  br label %242

242:                                              ; preds = %205, %8
  ret void
}

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
