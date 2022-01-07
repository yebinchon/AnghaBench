; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_get_audio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_get_audio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hdmi_audio_config = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.tegra_hdmi_audio_config*)* @tegra_hdmi_get_audio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hdmi_get_audio_config(i32 %0, i32 %1, %struct.tegra_hdmi_audio_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_hdmi_audio_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.tegra_hdmi_audio_config* %2, %struct.tegra_hdmi_audio_config** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul i32 128, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = udiv i32 %21, 1500
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = udiv i32 %23, 300
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = udiv i32 %25, 1000
  store i32 %26, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %27 = load %struct.tegra_hdmi_audio_config*, %struct.tegra_hdmi_audio_config** %6, align 8
  %28 = call i32 @memset(%struct.tegra_hdmi_audio_config* %27, i32 0, i32 12)
  %29 = load %struct.tegra_hdmi_audio_config*, %struct.tegra_hdmi_audio_config** %6, align 8
  %30 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %97, %3
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %32
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 905969664, %37
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @do_div(i32 %39, i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = and i32 %42, 65535
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %97

46:                                               ; preds = %36
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @do_div(i32 %51, i32 %52)
  %54 = load i32, i32* %14, align 4
  %55 = and i32 %54, -65536
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @BIT(i32 15)
  %58 = and i32 %56, %57
  %59 = shl i32 %58, 1
  %60 = add nsw i32 %55, %59
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub i32 %61, %62
  %64 = call i8* @abs(i32 %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %17, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i8* @abs(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %46
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78, %46
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.tegra_hdmi_audio_config*, %struct.tegra_hdmi_audio_config** %6, align 8
  %85 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %17, align 4
  %87 = ashr i32 %86, 16
  %88 = load %struct.tegra_hdmi_audio_config*, %struct.tegra_hdmi_audio_config** %6, align 8
  %89 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %15, align 4
  %91 = ashr i32 %90, 16
  %92 = load %struct.tegra_hdmi_audio_config*, %struct.tegra_hdmi_audio_config** %6, align 8
  %93 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %18, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %82, %78, %74
  br label %97

97:                                               ; preds = %96, %45
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %32

100:                                              ; preds = %32
  %101 = load %struct.tegra_hdmi_audio_config*, %struct.tegra_hdmi_audio_config** %6, align 8
  %102 = getelementptr inbounds %struct.tegra_hdmi_audio_config, %struct.tegra_hdmi_audio_config* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  br label %109

109:                                              ; preds = %106, %105
  %110 = phi i32 [ 0, %105 ], [ %108, %106 ]
  ret i32 %110
}

declare dso_local i32 @memset(%struct.tegra_hdmi_audio_config*, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
