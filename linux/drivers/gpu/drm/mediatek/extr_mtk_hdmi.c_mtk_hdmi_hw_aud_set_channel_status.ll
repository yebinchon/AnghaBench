; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_channel_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_channel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }

@GRL_I2S_C_STA0 = common dso_local global i64 0, align 8
@GRL_L_STATUS_0 = common dso_local global i64 0, align 8
@GRL_R_STATUS_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, i32*)* @mtk_hdmi_hw_aud_set_channel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_aud_set_channel_status(%struct.mtk_hdmi* %0, i32* %1) #0 {
  %3 = alloca %struct.mtk_hdmi*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %46, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %49

9:                                                ; preds = %6
  %10 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %11 = load i64, i64* @GRL_I2S_C_STA0, align 8
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %10, i64 %15, i32 %20)
  %22 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %23 = load i64, i64* @GRL_L_STATUS_0, align 8
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %22, i64 %27, i32 %32)
  %34 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %35 = load i64, i64* @GRL_R_STATUS_0, align 8
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %34, i64 %39, i32 %44)
  br label %46

46:                                               ; preds = %9
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %6

49:                                               ; preds = %6
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 24
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %55 = load i64, i64* @GRL_L_STATUS_0, align 8
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %54, i64 %59, i32 0)
  %61 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %62 = load i64, i64* @GRL_R_STATUS_0, align 8
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %61, i64 %66, i32 0)
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %50

71:                                               ; preds = %50
  ret void
}

declare dso_local i32 @mtk_hdmi_write(%struct.mtk_hdmi*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
