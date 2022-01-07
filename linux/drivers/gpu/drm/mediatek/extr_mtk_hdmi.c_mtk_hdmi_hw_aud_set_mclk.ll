; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }

@GRL_CFG5 = common dso_local global i32 0, align 4
@CFG5_CD_RATIO_MASK = common dso_local global i32 0, align 4
@CFG5_FS128 = common dso_local global i32 0, align 4
@CFG5_FS256 = common dso_local global i32 0, align 4
@CFG5_FS384 = common dso_local global i32 0, align 4
@CFG5_FS512 = common dso_local global i32 0, align 4
@CFG5_FS768 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, i32)* @mtk_hdmi_hw_aud_set_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_aud_set_mclk(%struct.mtk_hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %7 = load i32, i32* @GRL_CFG5, align 4
  %8 = call i32 @mtk_hdmi_read(%struct.mtk_hdmi* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @CFG5_CD_RATIO_MASK, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %33 [
    i32 132, label %13
    i32 131, label %17
    i32 130, label %21
    i32 129, label %25
    i32 128, label %29
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @CFG5_FS128, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load i32, i32* @CFG5_FS256, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load i32, i32* @CFG5_FS384, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %37

25:                                               ; preds = %2
  %26 = load i32, i32* @CFG5_FS512, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load i32, i32* @CFG5_FS768, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @CFG5_FS256, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %29, %25, %21, %17, %13
  %38 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %39 = load i32, i32* @GRL_CFG5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @mtk_hdmi_read(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @mtk_hdmi_write(%struct.mtk_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
