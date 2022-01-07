; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_dsi_encoder.c_mdp4_dsi_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_dsi_encoder.c_mdp4_dsi_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.mdp4_dsi_encoder = type { i32 }
%struct.mdp4_kms = type { i32 }

@REG_MDP4_DSI_ENABLE = common dso_local global i32 0, align 4
@MDP4_IRQ_PRIMARY_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @mdp4_dsi_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_dsi_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.mdp4_dsi_encoder*, align 8
  %4 = alloca %struct.mdp4_kms*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.mdp4_dsi_encoder* @to_mdp4_dsi_encoder(%struct.drm_encoder* %5)
  store %struct.mdp4_dsi_encoder* %6, %struct.mdp4_dsi_encoder** %3, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = call %struct.mdp4_kms* @get_kms(%struct.drm_encoder* %7)
  store %struct.mdp4_kms* %8, %struct.mdp4_kms** %4, align 8
  %9 = load %struct.mdp4_dsi_encoder*, %struct.mdp4_dsi_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.mdp4_dsi_encoder, %struct.mdp4_dsi_encoder* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %16 = load i32, i32* @REG_MDP4_DSI_ENABLE, align 4
  %17 = call i32 @mdp4_write(%struct.mdp4_kms* %15, i32 %16, i32 0)
  %18 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %19 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %18, i32 0, i32 0
  %20 = load i32, i32* @MDP4_IRQ_PRIMARY_VSYNC, align 4
  %21 = call i32 @mdp_irq_wait(i32* %19, i32 %20)
  %22 = load %struct.mdp4_dsi_encoder*, %struct.mdp4_dsi_encoder** %3, align 8
  %23 = getelementptr inbounds %struct.mdp4_dsi_encoder, %struct.mdp4_dsi_encoder* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.mdp4_dsi_encoder* @to_mdp4_dsi_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

declare dso_local i32 @mdp_irq_wait(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
