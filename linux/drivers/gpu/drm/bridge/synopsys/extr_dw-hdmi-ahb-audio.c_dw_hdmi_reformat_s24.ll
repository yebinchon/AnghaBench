; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_dw_hdmi_reformat_s24.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_dw_hdmi_reformat_s24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dw_hdmi = type { i32*, i32*, i32, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dw_hdmi*, i64, i64)* @dw_hdmi_reformat_s24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_reformat_s24(%struct.snd_dw_hdmi* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.snd_dw_hdmi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_dw_hdmi* %0, %struct.snd_dw_hdmi** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %4, align 8
  %14 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %7, align 8
  %18 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %4, align 8
  %19 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %8, align 8
  %23 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %4, align 8
  %24 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %77, %3
  %31 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %4, align 8
  %32 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %31, i32 0, i32 4
  %33 = load i32**, i32*** %32, align 8
  %34 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %4, align 8
  %35 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32*, i32** %33, i64 %38
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %11, align 8
  %41 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %4, align 8
  %42 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 192
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %4, align 8
  %47 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %30
  %49 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %4, align 8
  %50 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %72, %48
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %7, align 8
  %55 = load i32, i32* %53, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, 16777215
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %11, align 8
  %60 = load i32, i32* %58, align 4
  %61 = shl i32 %60, 24
  %62 = load i32, i32* %12, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, 134217727
  %66 = call i32 @parity(i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %10, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %52, label %76

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76
  %78 = load i32*, i32** %7, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ult i32* %78, %79
  br i1 %80, label %30, label %81

81:                                               ; preds = %77
  ret void
}

declare dso_local i32 @parity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
