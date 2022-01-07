; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_dw_hdmi_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-ahb-audio.c_dw_hdmi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_7__, %struct.snd_dw_hdmi*, %struct.snd_pcm_runtime* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.snd_dw_hdmi = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@HDMI_AHB_DMA_CONF0_BURST_MODE = common dso_local global i32 0, align 4
@HDMI_AHB_DMA_CONF0_INCR4 = common dso_local global i32 0, align 4
@HDMI_AHB_DMA_CONF0_INCR8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HDMI_AHB_DMA_CONF0_EN_HLOCK = common dso_local global i32 0, align 4
@default_hdmi_channel_config = common dso_local global %struct.TYPE_8__* null, align 8
@HDMI_AHB_DMA_THRSLD = common dso_local global i64 0, align 8
@HDMI_AHB_DMA_CONF0 = common dso_local global i64 0, align 8
@HDMI_AHB_DMA_CONF1 = common dso_local global i64 0, align 8
@dw_hdmi_reformat_iec958 = common dso_local global i32 0, align 4
@dw_hdmi_reformat_s24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @dw_hdmi_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_dw_hdmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 2
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %14, align 8
  store %struct.snd_dw_hdmi* %15, %struct.snd_dw_hdmi** %5, align 8
  %16 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %17 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %34 [
    i32 10, label %19
    i32 26, label %30
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @HDMI_AHB_DMA_CONF0_BURST_MODE, align 4
  %21 = load i32, i32* @HDMI_AHB_DMA_CONF0_INCR4, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 126, i32* %6, align 4
  br label %29

28:                                               ; preds = %19
  store i32 124, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %37

30:                                               ; preds = %1
  %31 = load i32, i32* @HDMI_AHB_DMA_CONF0_BURST_MODE, align 4
  %32 = load i32, i32* @HDMI_AHB_DMA_CONF0_INCR8, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %7, align 4
  store i32 128, i32* %6, align 4
  br label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %157

37:                                               ; preds = %30, %29
  %38 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %39 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dw_hdmi_set_sample_rate(i32 %41, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 32
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @HDMI_AHB_DMA_CONF0_EN_HLOCK, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hdmi_channel_config, align 8
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @default_hdmi_channel_config, align 8
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %74 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HDMI_AHB_DMA_THRSLD, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writeb_relaxed(i32 %72, i64 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %82 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HDMI_AHB_DMA_CONF0, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writeb_relaxed(i32 %80, i64 %86)
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %90 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %89, i32 0, i32 9
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HDMI_AHB_DMA_CONF1, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writeb_relaxed(i32 %88, i64 %94)
  %96 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %97 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %96, i32 0, i32 9
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dw_hdmi_set_channel_count(i32 %99, i32 %102)
  %104 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %105 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @dw_hdmi_set_channel_allocation(i32 %107, i32 %108)
  %110 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %124 [
    i32 129, label %113
    i32 128, label %117
  ]

113:                                              ; preds = %37
  %114 = load i32, i32* @dw_hdmi_reformat_iec958, align 4
  %115 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %116 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 8
  br label %124

117:                                              ; preds = %37
  %118 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %119 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %120 = call i32 @dw_hdmi_create_cs(%struct.snd_dw_hdmi* %118, %struct.snd_pcm_runtime* %119)
  %121 = load i32, i32* @dw_hdmi_reformat_s24, align 4
  %122 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %123 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %37, %117, %113
  %125 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %126 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %125, i32 0, i32 7
  store i64 0, i64* %126, align 8
  %127 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %128 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %131 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %133 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %136 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %138 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %142 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %144 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %148 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %150 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %149)
  %151 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %152 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %154 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %153)
  %155 = load %struct.snd_dw_hdmi*, %struct.snd_dw_hdmi** %5, align 8
  %156 = getelementptr inbounds %struct.snd_dw_hdmi, %struct.snd_dw_hdmi* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %124, %34
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @dw_hdmi_set_sample_rate(i32, i32) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @dw_hdmi_set_channel_count(i32, i32) #1

declare dso_local i32 @dw_hdmi_set_channel_allocation(i32, i32) #1

declare dso_local i32 @dw_hdmi_create_cs(%struct.snd_dw_hdmi*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
