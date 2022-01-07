; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cirrus_device = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_framebuffer = type { i32 }

@VGA_CRTC_V_SYNC_END = common dso_local global i32 0, align 4
@VGA_CRTC_H_TOTAL = common dso_local global i32 0, align 4
@VGA_CRTC_H_DISP = common dso_local global i32 0, align 4
@VGA_CRTC_H_SYNC_START = common dso_local global i32 0, align 4
@VGA_CRTC_H_SYNC_END = common dso_local global i32 0, align 4
@VGA_CRTC_V_TOTAL = common dso_local global i32 0, align 4
@VGA_CRTC_V_DISP_END = common dso_local global i32 0, align 4
@VGA_CRTC_MAX_SCAN = common dso_local global i32 0, align 4
@VGA_CRTC_OVERFLOW = common dso_local global i32 0, align 4
@CL_CRT1A = common dso_local global i32 0, align 4
@VGA_CRTC_MODE = common dso_local global i32 0, align 4
@VGA_CRTC_OFFSET = common dso_local global i32 0, align 4
@VGA_GFX_MODE = common dso_local global i32 0, align 4
@VGA_GFX_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cirrus_device*, %struct.drm_display_mode*, %struct.drm_framebuffer*)* @cirrus_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrus_mode_set(%struct.cirrus_device* %0, %struct.drm_display_mode* %1, %struct.drm_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cirrus_device*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cirrus_device* %0, %struct.cirrus_device** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %7, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 8
  store i32 %32, i32* %11, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %41, 2
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, 5
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %52 = load i32, i32* @VGA_CRTC_V_SYNC_END, align 4
  %53 = call i32 @wreg_crt(%struct.cirrus_device* %51, i32 %52, i32 32)
  %54 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %55 = load i32, i32* @VGA_CRTC_H_TOTAL, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @wreg_crt(%struct.cirrus_device* %54, i32 %55, i32 %56)
  %58 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %59 = load i32, i32* @VGA_CRTC_H_DISP, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @wreg_crt(%struct.cirrus_device* %58, i32 %59, i32 %60)
  %62 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %63 = load i32, i32* @VGA_CRTC_H_SYNC_START, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @wreg_crt(%struct.cirrus_device* %62, i32 %63, i32 %64)
  %66 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %67 = load i32, i32* @VGA_CRTC_H_SYNC_END, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @wreg_crt(%struct.cirrus_device* %66, i32 %67, i32 %68)
  %70 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %71 = load i32, i32* @VGA_CRTC_V_TOTAL, align 4
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @wreg_crt(%struct.cirrus_device* %70, i32 %71, i32 %73)
  %75 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %76 = load i32, i32* @VGA_CRTC_V_DISP_END, align 4
  %77 = load i32, i32* %13, align 4
  %78 = and i32 %77, 255
  %79 = call i32 @wreg_crt(%struct.cirrus_device* %75, i32 %76, i32 %78)
  store i32 64, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  %82 = and i32 %81, 512
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %3
  %85 = load i32, i32* %14, align 4
  %86 = or i32 %85, 32
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %84, %3
  %88 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %89 = load i32, i32* @VGA_CRTC_MAX_SCAN, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @wreg_crt(%struct.cirrus_device* %88, i32 %89, i32 %90)
  store i32 16, i32* %14, align 4
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 256
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* %14, align 4
  %97 = or i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %95, %87
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, 256
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* %14, align 4
  %104 = or i32 %103, 2
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  %108 = and i32 %107, 256
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, 8
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, 512
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* %14, align 4
  %119 = or i32 %118, 32
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %117, %113
  %121 = load i32, i32* %13, align 4
  %122 = and i32 %121, 512
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* %14, align 4
  %126 = or i32 %125, 64
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %124, %120
  %128 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %129 = load i32, i32* @VGA_CRTC_OVERFLOW, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @wreg_crt(%struct.cirrus_device* %128, i32 %129, i32 %130)
  store i32 0, i32* %14, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 5
  %134 = and i32 %133, 64
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* %14, align 4
  %138 = or i32 %137, 16
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %136, %127
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 5
  %142 = and i32 %141, 128
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* %14, align 4
  %146 = or i32 %145, 32
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %144, %139
  %148 = load i32, i32* %12, align 4
  %149 = and i32 %148, 256
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %14, align 4
  %153 = or i32 %152, 64
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i32, i32* %12, align 4
  %156 = and i32 %155, 512
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* %14, align 4
  %160 = or i32 %159, 128
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %163 = load i32, i32* @CL_CRT1A, align 4
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @wreg_crt(%struct.cirrus_device* %162, i32 %163, i32 %164)
  %166 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %167 = load i32, i32* @VGA_CRTC_MODE, align 4
  %168 = call i32 @wreg_crt(%struct.cirrus_device* %166, i32 %167, i32 3)
  %169 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %170 = call i32 @rreg_seq(%struct.cirrus_device* %169, i32 7)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = and i32 %171, 224
  store i32 %172, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %173 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %174 = call i32 @cirrus_cpp(%struct.drm_framebuffer* %173)
  %175 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %176 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  %177 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %178 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %179, 8
  switch i32 %180, label %193 [
    i32 8, label %181
    i32 16, label %184
    i32 24, label %187
    i32 32, label %190
  ]

181:                                              ; preds = %161
  %182 = load i32, i32* %15, align 4
  %183 = or i32 %182, 17
  store i32 %183, i32* %15, align 4
  br label %194

184:                                              ; preds = %161
  %185 = load i32, i32* %15, align 4
  %186 = or i32 %185, 23
  store i32 %186, i32* %15, align 4
  store i32 193, i32* %16, align 4
  br label %194

187:                                              ; preds = %161
  %188 = load i32, i32* %15, align 4
  %189 = or i32 %188, 21
  store i32 %189, i32* %15, align 4
  store i32 197, i32* %16, align 4
  br label %194

190:                                              ; preds = %161
  %191 = load i32, i32* %15, align 4
  %192 = or i32 %191, 25
  store i32 %192, i32* %15, align 4
  store i32 197, i32* %16, align 4
  br label %194

193:                                              ; preds = %161
  store i32 -1, i32* %4, align 4
  br label %239

194:                                              ; preds = %190, %187, %184, %181
  %195 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @wreg_seq(%struct.cirrus_device* %195, i32 7, i32 %196)
  %198 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %199 = call i32 @cirrus_pitch(%struct.drm_framebuffer* %198)
  %200 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %201 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %203 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sdiv i32 %204, 8
  store i32 %205, i32* %14, align 4
  %206 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %207 = load i32, i32* @VGA_CRTC_OFFSET, align 4
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @wreg_crt(%struct.cirrus_device* %206, i32 %207, i32 %208)
  store i32 34, i32* %14, align 4
  %210 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %211 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %212, 7
  %214 = and i32 %213, 16
  %215 = load i32, i32* %14, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %14, align 4
  %217 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %218 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = ashr i32 %219, 6
  %221 = and i32 %220, 64
  %222 = load i32, i32* %14, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %14, align 4
  %224 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %225 = load i32, i32* %14, align 4
  %226 = call i32 @wreg_crt(%struct.cirrus_device* %224, i32 27, i32 %225)
  %227 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %228 = load i32, i32* @VGA_GFX_MODE, align 4
  %229 = call i32 @wreg_gfx(%struct.cirrus_device* %227, i32 %228, i32 64)
  %230 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %231 = load i32, i32* @VGA_GFX_MISC, align 4
  %232 = call i32 @wreg_gfx(%struct.cirrus_device* %230, i32 %231, i32 1)
  %233 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %234 = load i32, i32* %16, align 4
  %235 = call i32 @wreg_hdr(%struct.cirrus_device* %233, i32 %234)
  %236 = load %struct.cirrus_device*, %struct.cirrus_device** %5, align 8
  %237 = call i32 @cirrus_set_start_address(%struct.cirrus_device* %236, i32 0)
  %238 = call i32 @outb(i32 32, i32 960)
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %194, %193
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @wreg_crt(%struct.cirrus_device*, i32, i32) #1

declare dso_local i32 @rreg_seq(%struct.cirrus_device*, i32) #1

declare dso_local i32 @cirrus_cpp(%struct.drm_framebuffer*) #1

declare dso_local i32 @wreg_seq(%struct.cirrus_device*, i32, i32) #1

declare dso_local i32 @cirrus_pitch(%struct.drm_framebuffer*) #1

declare dso_local i32 @wreg_gfx(%struct.cirrus_device*, i32, i32) #1

declare dso_local i32 @wreg_hdr(%struct.cirrus_device*, i32) #1

declare dso_local i32 @cirrus_set_start_address(%struct.cirrus_device*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
