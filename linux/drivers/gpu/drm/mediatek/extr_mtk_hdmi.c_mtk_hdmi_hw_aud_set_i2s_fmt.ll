; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_i2s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_i2s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }

@GRL_CFG0 = common dso_local global i32 0, align 4
@CFG0_W_LENGTH_MASK = common dso_local global i32 0, align 4
@CFG0_I2S_MODE_MASK = common dso_local global i32 0, align 4
@CFG0_I2S_MODE_RTJ = common dso_local global i32 0, align 4
@CFG0_W_LENGTH_24BIT = common dso_local global i32 0, align 4
@CFG0_W_LENGTH_16BIT = common dso_local global i32 0, align 4
@CFG0_I2S_MODE_LTJ = common dso_local global i32 0, align 4
@CFG0_I2S_MODE_I2S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, i32)* @mtk_hdmi_hw_aud_set_i2s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_aud_set_i2s_fmt(%struct.mtk_hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %7 = load i32, i32* @GRL_CFG0, align 4
  %8 = call i32 @mtk_hdmi_read(%struct.mtk_hdmi* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @CFG0_W_LENGTH_MASK, align 4
  %10 = load i32, i32* @CFG0_I2S_MODE_MASK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %29 [
    i32 128, label %16
    i32 129, label %22
    i32 130, label %28
    i32 131, label %35
    i32 132, label %41
    i32 133, label %47
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @CFG0_I2S_MODE_RTJ, align 4
  %18 = load i32, i32* @CFG0_W_LENGTH_24BIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load i32, i32* @CFG0_I2S_MODE_RTJ, align 4
  %24 = load i32, i32* @CFG0_W_LENGTH_16BIT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %53

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %2, %28
  %30 = load i32, i32* @CFG0_I2S_MODE_LTJ, align 4
  %31 = load i32, i32* @CFG0_W_LENGTH_24BIT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %53

35:                                               ; preds = %2
  %36 = load i32, i32* @CFG0_I2S_MODE_LTJ, align 4
  %37 = load i32, i32* @CFG0_W_LENGTH_16BIT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %53

41:                                               ; preds = %2
  %42 = load i32, i32* @CFG0_I2S_MODE_I2S, align 4
  %43 = load i32, i32* @CFG0_W_LENGTH_24BIT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %53

47:                                               ; preds = %2
  %48 = load i32, i32* @CFG0_I2S_MODE_I2S, align 4
  %49 = load i32, i32* @CFG0_W_LENGTH_16BIT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %41, %35, %29, %22, %16
  %54 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %55 = load i32, i32* @GRL_CFG0, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %54, i32 %55, i32 %56)
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
