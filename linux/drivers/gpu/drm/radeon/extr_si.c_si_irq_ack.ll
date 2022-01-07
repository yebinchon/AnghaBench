; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }

@si_disp_int_status = common dso_local global i64* null, align 8
@GRPH_INT_STATUS = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_irq_ack(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = call i64 @ASIC_IS_NODCE(%struct.radeon_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %194

23:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %57, %23
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 6
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  %28 = load i64*, i64** @si_disp_int_status, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @RREG32(i64 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %27
  %44 = load i64, i64* @GRPH_INT_STATUS, align 8
  %45 = load i64*, i64** @crtc_offsets, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %44, %49
  %51 = call i32 @RREG32(i64 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %43, %27
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %24

60:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %147, %60
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %150

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %94, %67
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 2
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @GRPH_PFLIP_INT_OCCURRED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %74
  %84 = load i64, i64* @GRPH_INT_STATUS, align 8
  %85 = load i64*, i64** @crtc_offsets, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %84, %89
  %91 = load i32, i32* @GRPH_PFLIP_INT_CLEAR, align 4
  %92 = call i32 @WREG32(i64 %90, i32 %91)
  br label %93

93:                                               ; preds = %83, %74
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %69

97:                                               ; preds = %69
  %98 = load i32, i32* %3, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %143, %97
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 2
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %146

104:                                              ; preds = %99
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @LB_D1_VBLANK_INTERRUPT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %104
  %114 = load i64, i64* @VBLANK_STATUS, align 8
  %115 = load i64*, i64** @crtc_offsets, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = load i32, i32* @VBLANK_ACK, align 4
  %122 = call i32 @WREG32(i64 %120, i32 %121)
  br label %123

123:                                              ; preds = %113, %104
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @LB_D1_VLINE_INTERRUPT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %123
  %133 = load i64, i64* @VLINE_STATUS, align 8
  %134 = load i64*, i64** @crtc_offsets, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %133, %138
  %140 = load i32, i32* @VLINE_ACK, align 4
  %141 = call i32 @WREG32(i64 %139, i32 %140)
  br label %142

142:                                              ; preds = %132, %123
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %99

146:                                              ; preds = %99
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 2
  store i32 %149, i32* %3, align 4
  br label %61

150:                                              ; preds = %61
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %169, %150
  %152 = load i32, i32* %3, align 4
  %153 = icmp slt i32 %152, 6
  br i1 %153, label %154, label %172

154:                                              ; preds = %151
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @DC_HPD1_INTERRUPT, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %154
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @DC_HPDx_INT_CONTROL(i32 %164)
  %166 = load i32, i32* @DC_HPDx_INT_ACK, align 4
  %167 = call i32 @WREG32_OR(i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %154
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  br label %151

172:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %191, %172
  %174 = load i32, i32* %3, align 4
  %175 = icmp slt i32 %174, 6
  br i1 %175, label %176, label %194

176:                                              ; preds = %173
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @DC_HPD1_RX_INTERRUPT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %176
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @DC_HPDx_INT_CONTROL(i32 %186)
  %188 = load i32, i32* @DC_HPDx_RX_INT_ACK, align 4
  %189 = call i32 @WREG32_OR(i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %176
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %3, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %3, align 4
  br label %173

194:                                              ; preds = %22, %173
  ret void
}

declare dso_local i64 @ASIC_IS_NODCE(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @WREG32_OR(i32, i32) #1

declare dso_local i32 @DC_HPDx_INT_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
