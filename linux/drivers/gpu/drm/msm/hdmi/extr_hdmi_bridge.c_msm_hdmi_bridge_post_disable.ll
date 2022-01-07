; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_bridge_post_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_bridge_post_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.hdmi_bridge = type { %struct.hdmi* }
%struct.hdmi = type { i32, i64, i64, %struct.hdmi_phy* }
%struct.hdmi_phy = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"power down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @msm_hdmi_bridge_post_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hdmi_bridge_post_disable(%struct.drm_bridge* %0) #0 {
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
  %12 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %11, i32 0, i32 3
  %13 = load %struct.hdmi_phy*, %struct.hdmi_phy** %12, align 8
  store %struct.hdmi_phy* %13, %struct.hdmi_phy** %5, align 8
  %14 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %15 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %20 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @msm_hdmi_hdcp_off(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = call i32 @DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %26 = call i32 @msm_hdmi_set_mode(%struct.hdmi* %25, i32 0)
  %27 = load %struct.hdmi_phy*, %struct.hdmi_phy** %5, align 8
  %28 = call i32 @msm_hdmi_phy_powerdown(%struct.hdmi_phy* %27)
  %29 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %30 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %35 = call i32 @power_off(%struct.drm_bridge* %34)
  %36 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %37 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %39 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.hdmi*, %struct.hdmi** %4, align 8
  %44 = call i32 @msm_hdmi_audio_update(%struct.hdmi* %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.hdmi_phy*, %struct.hdmi_phy** %5, align 8
  %47 = call i32 @msm_hdmi_phy_resource_disable(%struct.hdmi_phy* %46)
  br label %48

48:                                               ; preds = %45, %23
  ret void
}

declare dso_local %struct.hdmi_bridge* @to_hdmi_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @msm_hdmi_hdcp_off(i64) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @msm_hdmi_set_mode(%struct.hdmi*, i32) #1

declare dso_local i32 @msm_hdmi_phy_powerdown(%struct.hdmi_phy*) #1

declare dso_local i32 @power_off(%struct.drm_bridge*) #1

declare dso_local i32 @msm_hdmi_audio_update(%struct.hdmi*) #1

declare dso_local i32 @msm_hdmi_phy_resource_disable(%struct.hdmi_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
