; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_audio_config_spdif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_audio_config_spdif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, i64 }

@SYNC_WR_TO_CH_ZERO = common dso_local global i32 0, align 4
@FIFO_CNTL = common dso_local global i64 0, align 8
@AUDIO_TYPE_LPCM = common dso_local global i32 0, align 4
@SMPL2PKT_CNFG = common dso_local global i64 0, align 8
@SMPL2PKT_EN = common dso_local global i32 0, align 4
@SMPL2PKT_CNTL = common dso_local global i64 0, align 8
@SPDIF_ENABLE = common dso_local global i32 0, align 4
@SPDIF_AVG_SEL = common dso_local global i32 0, align 4
@SPDIF_JITTER_BYPASS = common dso_local global i32 0, align 4
@SPDIF_CTRL_ADDR = common dso_local global i64 0, align 8
@CDN_DP_SPDIF_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdn_dp_device*)* @cdn_dp_audio_config_spdif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdn_dp_audio_config_spdif(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca %struct.cdn_dp_device*, align 8
  %3 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %2, align 8
  %4 = load i32, i32* @SYNC_WR_TO_CH_ZERO, align 4
  %5 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %6 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FIFO_CNTL, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 %4, i64 %9)
  %11 = call i32 @MAX_NUM_CH(i32 2)
  %12 = load i32, i32* @AUDIO_TYPE_LPCM, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @CFG_SUB_PCKT_NUM(i32 4)
  %15 = or i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %18 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SMPL2PKT_CNFG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load i32, i32* @SMPL2PKT_EN, align 4
  %24 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %25 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SMPL2PKT_CNTL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load i32, i32* @SPDIF_ENABLE, align 4
  %31 = load i32, i32* @SPDIF_AVG_SEL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SPDIF_JITTER_BYPASS, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %37 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPDIF_CTRL_ADDR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %43 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_prepare_enable(i32 %44)
  %46 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %47 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CDN_DP_SPDIF_CLK, align 4
  %50 = call i32 @clk_set_rate(i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @MAX_NUM_CH(i32) #1

declare dso_local i32 @CFG_SUB_PCKT_NUM(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
