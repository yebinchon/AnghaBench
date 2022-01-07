; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_send_psr_spd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_send_psr_spd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i64 }
%struct.dp_sdp = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ANALOGIX_DP_PKT_SEND_CTL = common dso_local global i64 0, align 8
@IF_EN = common dso_local global i32 0, align 4
@PSR_FRAME_UP_TYPE_BURST = common dso_local global i32 0, align 4
@PSR_CRC_SEL_HARDWARE = common dso_local global i32 0, align 4
@ANALOGIX_DP_PSR_FRAME_UPDATE_CTRL = common dso_local global i64 0, align 8
@ANALOGIX_DP_SPD_HB0 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SPD_HB1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SPD_HB2 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SPD_HB3 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SPD_PB0 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SPD_PB1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SPD_PB2 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SPD_PB3 = common dso_local global i64 0, align 8
@ANALOGIX_DP_VSC_SHADOW_DB0 = common dso_local global i64 0, align 8
@ANALOGIX_DP_VSC_SHADOW_DB1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_VIDEO_CTL_3 = common dso_local global i64 0, align 8
@REUSE_SPD_EN = common dso_local global i32 0, align 4
@IF_UP = common dso_local global i32 0, align 4
@analogix_dp_get_psr_status = common dso_local global i32 0, align 4
@DP_PSR_SINK_ACTIVE_RFB = common dso_local global i64 0, align 8
@DP_PSR_SINK_INACTIVE = common dso_local global i64 0, align 8
@DP_TIMEOUT_PSR_LOOP_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to apply PSR %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @analogix_dp_send_psr_spd(%struct.analogix_dp_device* %0, %struct.dp_sdp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.analogix_dp_device*, align 8
  %6 = alloca %struct.dp_sdp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %5, align 8
  store %struct.dp_sdp* %1, %struct.dp_sdp** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %12 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ANALOGIX_DP_PKT_SEND_CTL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @IF_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %23 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ANALOGIX_DP_PKT_SEND_CTL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load i32, i32* @PSR_FRAME_UP_TYPE_BURST, align 4
  %29 = load i32, i32* @PSR_CRC_SEL_HARDWARE, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %32 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ANALOGIX_DP_PSR_FRAME_UPDATE_CTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.dp_sdp*, %struct.dp_sdp** %6, align 8
  %38 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %42 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ANALOGIX_DP_SPD_HB0, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.dp_sdp*, %struct.dp_sdp** %6, align 8
  %48 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %52 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ANALOGIX_DP_SPD_HB1, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.dp_sdp*, %struct.dp_sdp** %6, align 8
  %58 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %62 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ANALOGIX_DP_SPD_HB2, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.dp_sdp*, %struct.dp_sdp** %6, align 8
  %68 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %72 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ANALOGIX_DP_SPD_HB3, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %78 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ANALOGIX_DP_SPD_PB0, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 0, i64 %81)
  %83 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %84 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ANALOGIX_DP_SPD_PB1, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 22, i64 %87)
  %89 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %90 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ANALOGIX_DP_SPD_PB2, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 206, i64 %93)
  %95 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %96 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ANALOGIX_DP_SPD_PB3, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 93, i64 %99)
  %101 = load %struct.dp_sdp*, %struct.dp_sdp** %6, align 8
  %102 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %107 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ANALOGIX_DP_VSC_SHADOW_DB0, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  %112 = load %struct.dp_sdp*, %struct.dp_sdp** %6, align 8
  %113 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %118 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ANALOGIX_DP_VSC_SHADOW_DB1, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 %116, i64 %121)
  %123 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %124 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_3, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @readl(i64 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* @REUSE_SPD_EN, align 4
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %134 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_3, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writel(i32 %132, i64 %137)
  %139 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %140 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @ANALOGIX_DP_PKT_SEND_CTL, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @readl(i64 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @IF_UP, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @IF_EN, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %147, %149
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %153 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @ANALOGIX_DP_PKT_SEND_CTL, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel(i32 %151, i64 %156)
  %158 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %159 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @ANALOGIX_DP_PKT_SEND_CTL, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @readl(i64 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* @IF_EN, align 4
  %165 = load i32, i32* %8, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %169 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ANALOGIX_DP_PKT_SEND_CTL, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writel(i32 %167, i64 %172)
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %225

177:                                              ; preds = %3
  %178 = load i32, i32* @analogix_dp_get_psr_status, align 4
  %179 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %10, align 8
  %182 = icmp sge i64 %181, 0
  br i1 %182, label %183, label %209

183:                                              ; preds = %177
  %184 = load %struct.dp_sdp*, %struct.dp_sdp** %6, align 8
  %185 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %183
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* @DP_PSR_SINK_ACTIVE_RFB, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %207, label %194

194:                                              ; preds = %190, %183
  %195 = load %struct.dp_sdp*, %struct.dp_sdp** %6, align 8
  %196 = getelementptr inbounds %struct.dp_sdp, %struct.dp_sdp* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %194
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* @DP_PSR_SINK_INACTIVE, align 8
  %204 = icmp eq i64 %202, %203
  br label %205

205:                                              ; preds = %201, %194
  %206 = phi i1 [ false, %194 ], [ %204, %201 ]
  br label %207

207:                                              ; preds = %205, %190
  %208 = phi i1 [ true, %190 ], [ %206, %205 ]
  br label %209

209:                                              ; preds = %207, %177
  %210 = phi i1 [ false, %177 ], [ %208, %207 ]
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* @DP_TIMEOUT_PSR_LOOP_MS, align 4
  %213 = mul nsw i32 %212, 1000
  %214 = call i32 @readx_poll_timeout(i32 %178, %struct.analogix_dp_device* %179, i64 %180, i32 %211, i32 1500, i32 %213)
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %209
  %218 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %219 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @dev_warn(i32 %220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %4, align 4
  br label %225

224:                                              ; preds = %209
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %224, %217, %176
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readx_poll_timeout(i32, %struct.analogix_dp_device*, i64, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
