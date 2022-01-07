; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_bridge_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_bridge_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.anx78xx = type { i32* }

@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_POWERDOWN_CTRL_REG = common dso_local global i32 0, align 4
@SP_HDCP_PD = common dso_local global i32 0, align 4
@SP_AUDIO_PD = common dso_local global i32 0, align 4
@SP_VIDEO_PD = common dso_local global i32 0, align 4
@SP_LINK_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @anx78xx_bridge_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anx78xx_bridge_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.anx78xx*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %4 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %5 = call %struct.anx78xx* @bridge_to_anx78xx(%struct.drm_bridge* %4)
  store %struct.anx78xx* %5, %struct.anx78xx** %3, align 8
  %6 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %7 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SP_POWERDOWN_CTRL_REG, align 4
  %13 = load i32, i32* @SP_HDCP_PD, align 4
  %14 = load i32, i32* @SP_AUDIO_PD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SP_VIDEO_PD, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SP_LINK_PD, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @anx78xx_set_bits(i32 %11, i32 %12, i32 %19)
  ret void
}

declare dso_local %struct.anx78xx* @bridge_to_anx78xx(%struct.drm_bridge*) #1

declare dso_local i32 @anx78xx_set_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
