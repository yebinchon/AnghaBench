; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_write_eld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_write_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hdmi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR = common dso_local global i32 0, align 4
@HDMI_ELD_BUFFER_SIZE = common dso_local global i64 0, align 8
@SOR_AUDIO_HDA_PRESENSE_VALID = common dso_local global i64 0, align 8
@SOR_AUDIO_HDA_PRESENSE_PRESENT = common dso_local global i64 0, align 8
@HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_hdmi*)* @tegra_hdmi_write_eld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_hdmi_write_eld(%struct.tegra_hdmi* %0) #0 {
  %2 = alloca %struct.tegra_hdmi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.tegra_hdmi* %0, %struct.tegra_hdmi** %2, align 8
  %6 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = call i64 @drm_eld_size(i64* %10)
  store i64 %11, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %2, align 8
  %18 = load i64, i64* %4, align 8
  %19 = shl i64 %18, 8
  %20 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %2, align 8
  %21 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %19, %27
  %29 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR, align 4
  %30 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %17, i64 %28, i32 %29)
  br label %31

31:                                               ; preds = %16
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load i64, i64* %3, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %46, %34
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @HDMI_ELD_BUFFER_SIZE, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %2, align 8
  %42 = load i64, i64* %4, align 8
  %43 = shl i64 %42, 8
  %44 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR, align 4
  %45 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %41, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %36

49:                                               ; preds = %36
  %50 = load i64, i64* @SOR_AUDIO_HDA_PRESENSE_VALID, align 8
  %51 = load i64, i64* @SOR_AUDIO_HDA_PRESENSE_PRESENT, align 8
  %52 = or i64 %50, %51
  store i64 %52, i64* %5, align 8
  %53 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %2, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE, align 4
  %56 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %53, i64 %54, i32 %55)
  ret void
}

declare dso_local i64 @drm_eld_size(i64*) #1

declare dso_local i32 @tegra_hdmi_writel(%struct.tegra_hdmi*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
