; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_audio_config_i2s.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_audio_config_i2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.audio_info = type { i32, i32, i32 }

@SPDIF_CTRL_ADDR = common dso_local global i64 0, align 8
@SYNC_WR_TO_CH_ZERO = common dso_local global i32 0, align 4
@FIFO_CNTL = common dso_local global i64 0, align 8
@AUDIO_TYPE_LPCM = common dso_local global i32 0, align 4
@SMPL2PKT_CNFG = common dso_local global i64 0, align 8
@TRANS_SMPL_WIDTH_32 = common dso_local global i32 0, align 4
@AUDIO_SRC_CNFG = common dso_local global i64 0, align 8
@COM_CH_STTS_BITS = common dso_local global i64 0, align 8
@SMPL2PKT_EN = common dso_local global i32 0, align 4
@SMPL2PKT_CNTL = common dso_local global i64 0, align 8
@I2S_DEC_START = common dso_local global i32 0, align 4
@AUDIO_SRC_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdn_dp_device*, %struct.audio_info*)* @cdn_dp_audio_config_i2s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdn_dp_audio_config_i2s(%struct.cdn_dp_device* %0, %struct.audio_info* %1) #0 {
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca %struct.audio_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  store %struct.audio_info* %1, %struct.audio_info** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 15, i32* %6, align 4
  %9 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %10 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %15 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 2, i32* %5, align 4
  br label %21

20:                                               ; preds = %13
  store i32 4, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %19
  store i32 1, i32* %6, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %24 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 3, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %22
  br label %29

29:                                               ; preds = %28, %21
  %30 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %31 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SPDIF_CTRL_ADDR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 0, i64 %34)
  %36 = load i32, i32* @SYNC_WR_TO_CH_ZERO, align 4
  %37 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %38 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FIFO_CNTL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %44 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MAX_NUM_CH(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %48 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @NUM_OF_I2S_PORTS(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @AUDIO_TYPE_LPCM, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @CFG_SUB_PCKT_NUM(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %62 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SMPL2PKT_CNFG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %68 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 16
  br i1 %70, label %71, label %72

71:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %80

72:                                               ; preds = %29
  %73 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %74 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 24
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 512, i32* %8, align 4
  br label %79

78:                                               ; preds = %72
  store i32 1024, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %71
  %81 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %82 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @AUDIO_CH_NUM(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @I2S_DEC_PORT_EN(i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* @TRANS_SMPL_WIDTH_32, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %96 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AUDIO_SRC_CNFG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %141, %80
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %104 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  %107 = sdiv i32 %106, 2
  %108 = icmp slt i32 %102, %107
  br i1 %108, label %109, label %144

109:                                              ; preds = %101
  %110 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %111 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 16
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 2097664, i32* %8, align 4
  br label %122

115:                                              ; preds = %109
  %116 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %117 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 24
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 11537152, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %115
  br label %122

122:                                              ; preds = %121, %114
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 2, %123
  %125 = shl i32 %124, 4
  %126 = load i32, i32* %7, align 4
  %127 = mul nsw i32 2, %126
  %128 = add nsw i32 %127, 1
  %129 = shl i32 %128, 16
  %130 = or i32 %125, %129
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %135 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i64 @STTS_BIT_CH(i32 %137)
  %139 = add nsw i64 %136, %138
  %140 = call i32 @writel(i32 %133, i64 %139)
  br label %141

141:                                              ; preds = %122
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %101

144:                                              ; preds = %101
  %145 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %146 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %176 [
    i32 32000, label %148
    i32 44100, label %152
    i32 48000, label %156
    i32 88200, label %160
    i32 96000, label %164
    i32 176400, label %168
    i32 192000, label %172
  ]

148:                                              ; preds = %144
  %149 = call i32 @SAMPLING_FREQ(i32 3)
  %150 = call i32 @ORIGINAL_SAMP_FREQ(i32 12)
  %151 = or i32 %149, %150
  store i32 %151, i32* %8, align 4
  br label %176

152:                                              ; preds = %144
  %153 = call i32 @SAMPLING_FREQ(i32 0)
  %154 = call i32 @ORIGINAL_SAMP_FREQ(i32 15)
  %155 = or i32 %153, %154
  store i32 %155, i32* %8, align 4
  br label %176

156:                                              ; preds = %144
  %157 = call i32 @SAMPLING_FREQ(i32 2)
  %158 = call i32 @ORIGINAL_SAMP_FREQ(i32 13)
  %159 = or i32 %157, %158
  store i32 %159, i32* %8, align 4
  br label %176

160:                                              ; preds = %144
  %161 = call i32 @SAMPLING_FREQ(i32 8)
  %162 = call i32 @ORIGINAL_SAMP_FREQ(i32 7)
  %163 = or i32 %161, %162
  store i32 %163, i32* %8, align 4
  br label %176

164:                                              ; preds = %144
  %165 = call i32 @SAMPLING_FREQ(i32 10)
  %166 = call i32 @ORIGINAL_SAMP_FREQ(i32 5)
  %167 = or i32 %165, %166
  store i32 %167, i32* %8, align 4
  br label %176

168:                                              ; preds = %144
  %169 = call i32 @SAMPLING_FREQ(i32 12)
  %170 = call i32 @ORIGINAL_SAMP_FREQ(i32 3)
  %171 = or i32 %169, %170
  store i32 %171, i32* %8, align 4
  br label %176

172:                                              ; preds = %144
  %173 = call i32 @SAMPLING_FREQ(i32 14)
  %174 = call i32 @ORIGINAL_SAMP_FREQ(i32 1)
  %175 = or i32 %173, %174
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %144, %172, %168, %164, %160, %156, %152, %148
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, 4
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %181 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @COM_CH_STTS_BITS, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writel(i32 %179, i64 %184)
  %186 = load i32, i32* @SMPL2PKT_EN, align 4
  %187 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %188 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SMPL2PKT_CNTL, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writel(i32 %186, i64 %191)
  %193 = load i32, i32* @I2S_DEC_START, align 4
  %194 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %195 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AUDIO_SRC_CNTL, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @writel(i32 %193, i64 %198)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @MAX_NUM_CH(i32) #1

declare dso_local i32 @NUM_OF_I2S_PORTS(i32) #1

declare dso_local i32 @CFG_SUB_PCKT_NUM(i32) #1

declare dso_local i32 @AUDIO_CH_NUM(i32) #1

declare dso_local i32 @I2S_DEC_PORT_EN(i32) #1

declare dso_local i64 @STTS_BIT_CH(i32) #1

declare dso_local i32 @SAMPLING_FREQ(i32) #1

declare dso_local i32 @ORIGINAL_SAMP_FREQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
