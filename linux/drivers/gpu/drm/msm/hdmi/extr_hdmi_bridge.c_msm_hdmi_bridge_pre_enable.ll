; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_bridge_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_bridge_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.hdmi_bridge = type { %struct.hdmi* }
%struct.hdmi = type { i32, i64, i32, i64, %struct.hdmi_phy* }
%struct.hdmi_phy = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"power up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @msm_hdmi_bridge_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hdmi_bridge_pre_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.hdmi_bridge*, align 8
  %4 = alloca %struct.hdmi*, align 8
  %5 = alloca %struct.hdmi_phy*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %6 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %7 = call %struct.hdmi_bridge* @to_hdmi_bridge(%struct.drm_bridge* %6)
  store %struct.hdmi_bridge* %7, %struct.hdmi_bridge** %3, align 8
  %8 = load %struct.hdmi_bridge*, %struct.hdmi_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.hdmi_bridge, %struct.hdmi_bridge* %8, i32 0, i32 0
  %10 = load %struct.hdmi*, %struct.hdmi** %9, align 8
  store %struct.hdmi* %10, %struct.hdmi** %4, align 8
  %11 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %12 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %11, i32 0, i32 4
  %13 = load %struct.hdmi_phy*, %struct.hdmi_phy** %12, align 8
  store %struct.hdmi_phy* %13, %struct.hdmi_phy** %5, align 8
  %14 = call i32 @DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %16 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %1
  %20 = load %struct.hdmi_phy*, %struct.hdmi_phy** %5, align 8
  %21 = call i32 @msm_hdmi_phy_resource_enable(%struct.hdmi_phy* %20)
  %22 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %23 = call i32 @msm_hdmi_power_on(%struct.drm_bridge* %22)
  %24 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %25 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %27 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %32 = call i32 @msm_hdmi_config_avi_infoframe(%struct.hdmi* %31)
  %33 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %34 = call i32 @msm_hdmi_audio_update(%struct.hdmi* %33)
  br label %35

35:                                               ; preds = %30, %19
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.hdmi_phy*, %struct.hdmi_phy** %5, align 8
  %38 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %39 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @msm_hdmi_phy_powerup(%struct.hdmi_phy* %37, i32 %40)
  %42 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %43 = call i32 @msm_hdmi_set_mode(%struct.hdmi* %42, i32 1)
  %44 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %45 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %50 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @msm_hdmi_hdcp_on(i64 %51)
  br label %53

53:                                               ; preds = %48, %36
  ret void
}

declare dso_local %struct.hdmi_bridge* @to_hdmi_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @msm_hdmi_phy_resource_enable(%struct.hdmi_phy*) #1

declare dso_local i32 @msm_hdmi_power_on(%struct.drm_bridge*) #1

declare dso_local i32 @msm_hdmi_config_avi_infoframe(%struct.hdmi*) #1

declare dso_local i32 @msm_hdmi_audio_update(%struct.hdmi*) #1

declare dso_local i32 @msm_hdmi_phy_powerup(%struct.hdmi_phy*, i32) #1

declare dso_local i32 @msm_hdmi_set_mode(%struct.hdmi*, i32) #1

declare dso_local i32 @msm_hdmi_hdcp_on(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
