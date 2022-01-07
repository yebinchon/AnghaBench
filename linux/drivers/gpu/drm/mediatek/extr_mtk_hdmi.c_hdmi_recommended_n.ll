; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_hdmi_recommended_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_hdmi_recommended_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_acr_n = type { i32, i32* }

@hdmi_rec_n_table = common dso_local global %struct.hdmi_acr_n* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @hdmi_recommended_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_recommended_n(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_acr_n*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.hdmi_acr_n*, %struct.hdmi_acr_n** @hdmi_rec_n_table, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.hdmi_acr_n* %10)
  %12 = sub nsw i32 %11, 1
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.hdmi_acr_n*, %struct.hdmi_acr_n** @hdmi_rec_n_table, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hdmi_acr_n, %struct.hdmi_acr_n* %16, i64 %18
  %20 = getelementptr inbounds %struct.hdmi_acr_n, %struct.hdmi_acr_n* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %28

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %8

28:                                               ; preds = %23, %8
  %29 = load %struct.hdmi_acr_n*, %struct.hdmi_acr_n** @hdmi_rec_n_table, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hdmi_acr_n, %struct.hdmi_acr_n* %29, i64 %31
  store %struct.hdmi_acr_n* %32, %struct.hdmi_acr_n** %6, align 8
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %80 [
    i32 32000, label %34
    i32 44100, label %40
    i32 48000, label %46
    i32 88200, label %52
    i32 96000, label %59
    i32 176400, label %66
    i32 192000, label %73
  ]

34:                                               ; preds = %28
  %35 = load %struct.hdmi_acr_n*, %struct.hdmi_acr_n** %6, align 8
  %36 = getelementptr inbounds %struct.hdmi_acr_n, %struct.hdmi_acr_n* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %84

40:                                               ; preds = %28
  %41 = load %struct.hdmi_acr_n*, %struct.hdmi_acr_n** %6, align 8
  %42 = getelementptr inbounds %struct.hdmi_acr_n, %struct.hdmi_acr_n* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %84

46:                                               ; preds = %28
  %47 = load %struct.hdmi_acr_n*, %struct.hdmi_acr_n** %6, align 8
  %48 = getelementptr inbounds %struct.hdmi_acr_n, %struct.hdmi_acr_n* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %84

52:                                               ; preds = %28
  %53 = load %struct.hdmi_acr_n*, %struct.hdmi_acr_n** %6, align 8
  %54 = getelementptr inbounds %struct.hdmi_acr_n, %struct.hdmi_acr_n* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = mul i32 %57, 2
  store i32 %58, i32* %3, align 4
  br label %84

59:                                               ; preds = %28
  %60 = load %struct.hdmi_acr_n*, %struct.hdmi_acr_n** %6, align 8
  %61 = getelementptr inbounds %struct.hdmi_acr_n, %struct.hdmi_acr_n* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = mul i32 %64, 2
  store i32 %65, i32* %3, align 4
  br label %84

66:                                               ; preds = %28
  %67 = load %struct.hdmi_acr_n*, %struct.hdmi_acr_n** %6, align 8
  %68 = getelementptr inbounds %struct.hdmi_acr_n, %struct.hdmi_acr_n* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = mul i32 %71, 4
  store i32 %72, i32* %3, align 4
  br label %84

73:                                               ; preds = %28
  %74 = load %struct.hdmi_acr_n*, %struct.hdmi_acr_n** %6, align 8
  %75 = getelementptr inbounds %struct.hdmi_acr_n, %struct.hdmi_acr_n* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = mul i32 %78, 4
  store i32 %79, i32* %3, align 4
  br label %84

80:                                               ; preds = %28
  %81 = load i32, i32* %4, align 4
  %82 = mul i32 128, %81
  %83 = udiv i32 %82, 1000
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %73, %66, %59, %52, %46, %40, %34
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @ARRAY_SIZE(%struct.hdmi_acr_n*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
