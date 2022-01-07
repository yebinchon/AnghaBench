; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_check_audio_bandwidth_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_check_audio_bandwidth_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_crtc_info = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%union.audio_sample_rates = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_crtc_info*, i32, %union.audio_sample_rates*)* @check_audio_bandwidth_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_audio_bandwidth_hdmi(%struct.audio_crtc_info* %0, i32 %1, %union.audio_sample_rates* %2) #0 {
  %4 = alloca %struct.audio_crtc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.audio_sample_rates*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.audio_crtc_info* %0, %struct.audio_crtc_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.audio_sample_rates* %2, %union.audio_sample_rates** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %81

15:                                               ; preds = %3
  %16 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %17 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %18, 270000
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %22 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 576
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %27 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %32 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %37 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %80

41:                                               ; preds = %35, %30, %25, %20, %15
  %42 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %43 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sle i32 %44, 270000
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %48 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 576
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %53 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %58 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %10, align 4
  br label %79

62:                                               ; preds = %56, %51, %46, %41
  %63 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %64 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sle i32 %65, 540000
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %69 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %70, 576
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %74 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 1, i32* %12, align 4
  br label %78

78:                                               ; preds = %77, %72, %67, %62
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %40
  br label %81

81:                                               ; preds = %80, %3
  %82 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %83 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %86 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %84, %87
  store i32 %88, i32* %8, align 4
  %89 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %90 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %81
  %94 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %95 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %93, %81
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %100, 58
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %102, 16
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = mul nsw i32 %104, 10
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sdiv i32 %106, 32
  store i32 %107, i32* %7, align 4
  %108 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %109 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = mul nsw i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %114 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sdiv i32 %118, 10
  store i32 %119, i32* %7, align 4
  %120 = load %struct.audio_crtc_info*, %struct.audio_crtc_info** %4, align 8
  %121 = getelementptr inbounds %struct.audio_crtc_info, %struct.audio_crtc_info* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %132 [
    i32 128, label %123
    i32 130, label %126
    i32 129, label %129
  ]

123:                                              ; preds = %99
  %124 = load i32, i32* %7, align 4
  %125 = mul nsw i32 %124, 4
  store i32 %125, i32* %7, align 4
  br label %135

126:                                              ; preds = %99
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 %127, 5
  store i32 %128, i32* %7, align 4
  br label %135

129:                                              ; preds = %99
  %130 = load i32, i32* %7, align 4
  %131 = mul nsw i32 %130, 6
  store i32 %131, i32* %7, align 4
  br label %135

132:                                              ; preds = %99
  %133 = load i32, i32* %7, align 4
  %134 = mul nsw i32 %133, 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %132, %129, %126, %123
  %136 = load i32, i32* %7, align 4
  %137 = sdiv i32 %136, 4
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 88200
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 1, i32* %9, align 4
  br label %156

141:                                              ; preds = %135
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 96000
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 1, i32* %10, align 4
  br label %155

145:                                              ; preds = %141
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %146, 176400
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 1, i32* %11, align 4
  br label %154

149:                                              ; preds = %145
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 192000
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 1, i32* %12, align 4
  br label %153

153:                                              ; preds = %152, %149
  br label %154

154:                                              ; preds = %153, %148
  br label %155

155:                                              ; preds = %154, %144
  br label %156

156:                                              ; preds = %155, %140
  %157 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %158 = icmp ne %union.audio_sample_rates* %157, null
  br i1 %158, label %159, label %206

159:                                              ; preds = %156
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %164 = bitcast %union.audio_sample_rates* %163 to %struct.TYPE_2__*
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %159
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %171 = bitcast %union.audio_sample_rates* %170 to %struct.TYPE_2__*
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 3
  store i64 0, i64* %172, align 8
  %173 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %174 = bitcast %union.audio_sample_rates* %173 to %struct.TYPE_2__*
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %169, %166
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %181 = bitcast %union.audio_sample_rates* %180 to %struct.TYPE_2__*
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  store i64 0, i64* %182, align 8
  %183 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %184 = bitcast %union.audio_sample_rates* %183 to %struct.TYPE_2__*
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  %186 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %187 = bitcast %union.audio_sample_rates* %186 to %struct.TYPE_2__*
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %179, %176
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %189
  %193 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %194 = bitcast %union.audio_sample_rates* %193 to %struct.TYPE_2__*
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 3
  store i64 0, i64* %195, align 8
  %196 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %197 = bitcast %union.audio_sample_rates* %196 to %struct.TYPE_2__*
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  store i64 0, i64* %198, align 8
  %199 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %200 = bitcast %union.audio_sample_rates* %199 to %struct.TYPE_2__*
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  store i64 0, i64* %201, align 8
  %202 = load %union.audio_sample_rates*, %union.audio_sample_rates** %6, align 8
  %203 = bitcast %union.audio_sample_rates* %202 to %struct.TYPE_2__*
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %192, %189
  br label %206

206:                                              ; preds = %205, %156
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
