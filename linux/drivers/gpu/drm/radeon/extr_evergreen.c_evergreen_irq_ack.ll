; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32* }

@evergreen_disp_int_status = common dso_local global i64* null, align 8
@AFMT_STATUS = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@GRPH_INT_STATUS = common dso_local global i64 0, align 8
@GRPH_PFLIP_INT_OCCURRED = common dso_local global i32 0, align 4
@GRPH_PFLIP_INT_CLEAR = common dso_local global i32 0, align 4
@LB_D1_VBLANK_INTERRUPT = common dso_local global i32 0, align 4
@VBLANK_STATUS = common dso_local global i64 0, align 8
@VBLANK_ACK = common dso_local global i32 0, align 4
@LB_D1_VLINE_INTERRUPT = common dso_local global i32 0, align 4
@VLINE_STATUS = common dso_local global i64 0, align 8
@VLINE_ACK = common dso_local global i32 0, align 4
@DC_HPD1_INTERRUPT = common dso_local global i32 0, align 4
@DC_HPDx_INT_ACK = common dso_local global i32 0, align 4
@DC_HPD1_RX_INTERRUPT = common dso_local global i32 0, align 4
@DC_HPDx_RX_INT_ACK = common dso_local global i32 0, align 4
@AFMT_AZ_FORMAT_WTRIG = common dso_local global i32 0, align 4
@AFMT_AUDIO_PACKET_CONTROL = common dso_local global i64 0, align 8
@AFMT_AZ_FORMAT_WTRIG_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @evergreen_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evergreen_irq_ack(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %71, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %29, label %74

29:                                               ; preds = %26
  %30 = load i64*, i64** @evergreen_disp_int_status, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @RREG32(i64 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i64, i64* @AFMT_STATUS, align 8
  %41 = load i64*, i64** @crtc_offsets, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %40, %45
  %47 = call i32 @RREG32(i64 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %29
  %58 = load i64, i64* @GRPH_INT_STATUS, align 8
  %59 = load i64*, i64** @crtc_offsets, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  %65 = call i32 @RREG32(i64 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %57, %29
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %26

74:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %161, %74
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %164

81:                                               ; preds = %75
  %82 = load i32, i32* %3, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %108, %81
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 2
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %83
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @GRPH_PFLIP_INT_OCCURRED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load i64, i64* @GRPH_INT_STATUS, align 8
  %99 = load i64*, i64** @crtc_offsets, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %98, %103
  %105 = load i32, i32* @GRPH_PFLIP_INT_CLEAR, align 4
  %106 = call i32 @WREG32(i64 %104, i32 %105)
  br label %107

107:                                              ; preds = %97, %88
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %83

111:                                              ; preds = %83
  %112 = load i32, i32* %3, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %157, %111
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 2
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %160

118:                                              ; preds = %113
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %118
  %128 = load i64, i64* @VBLANK_STATUS, align 8
  %129 = load i64*, i64** @crtc_offsets, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %128, %133
  %135 = load i32, i32* @VBLANK_ACK, align 4
  %136 = call i32 @WREG32(i64 %134, i32 %135)
  br label %137

137:                                              ; preds = %127, %118
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %137
  %147 = load i64, i64* @VLINE_STATUS, align 8
  %148 = load i64*, i64** @crtc_offsets, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %147, %152
  %154 = load i32, i32* @VLINE_ACK, align 4
  %155 = call i32 @WREG32(i64 %153, i32 %154)
  br label %156

156:                                              ; preds = %146, %137
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %113

160:                                              ; preds = %113
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %3, align 4
  %163 = add nsw i32 %162, 2
  store i32 %163, i32* %3, align 4
  br label %75

164:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %183, %164
  %166 = load i32, i32* %3, align 4
  %167 = icmp slt i32 %166, 6
  br i1 %167, label %168, label %186

168:                                              ; preds = %165
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %168
  %178 = load i32, i32* %3, align 4
  %179 = call i64 @DC_HPDx_INT_CONTROL(i32 %178)
  %180 = load i32, i32* @DC_HPDx_INT_ACK, align 4
  %181 = call i32 @WREG32_OR(i64 %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %168
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %3, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %165

186:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %205, %186
  %188 = load i32, i32* %3, align 4
  %189 = icmp slt i32 %188, 6
  br i1 %189, label %190, label %208

190:                                              ; preds = %187
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @DC_HPD1_RX_INTERRUPT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %190
  %200 = load i32, i32* %3, align 4
  %201 = call i64 @DC_HPDx_INT_CONTROL(i32 %200)
  %202 = load i32, i32* @DC_HPDx_RX_INT_ACK, align 4
  %203 = call i32 @WREG32_OR(i64 %201, i32 %202)
  br label %204

204:                                              ; preds = %199, %190
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %3, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %3, align 4
  br label %187

208:                                              ; preds = %187
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %232, %208
  %210 = load i32, i32* %3, align 4
  %211 = icmp slt i32 %210, 6
  br i1 %211, label %212, label %235

212:                                              ; preds = %209
  %213 = load i32*, i32** %7, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %212
  %222 = load i64, i64* @AFMT_AUDIO_PACKET_CONTROL, align 8
  %223 = load i64*, i64** @crtc_offsets, align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %222, %227
  %229 = load i32, i32* @AFMT_AZ_FORMAT_WTRIG_ACK, align 4
  %230 = call i32 @WREG32_OR(i64 %228, i32 %229)
  br label %231

231:                                              ; preds = %221, %212
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %3, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %3, align 4
  br label %209

235:                                              ; preds = %209
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @WREG32_OR(i64, i32) #1

declare dso_local i64 @DC_HPDx_INT_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
