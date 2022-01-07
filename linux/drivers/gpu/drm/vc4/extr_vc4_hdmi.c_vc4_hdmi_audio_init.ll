; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_audio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_audio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.vc4_hdmi = type { %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.snd_soc_card, %struct.snd_soc_dai_link }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.snd_soc_card = type { i32, i8*, %struct.device*, %struct.snd_soc_dai_link* }
%struct.device = type { i32 }
%struct.snd_soc_dai_link = type { i32, i32, i32, i8*, i8*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { %struct.device }

@.str = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"'dmas' DT property is missing, no HDMI audio\0A\00", align 1
@VC4_HD_MAI_DATA = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@pcm_conf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not register PCM component: %d\0A\00", align 1
@vc4_hdmi_audio_cpu_dai_comp = common dso_local global i32 0, align 4
@vc4_hdmi_audio_cpu_dai_drv = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Could not register CPU DAI: %d\0A\00", align 1
@vc4_hdmi_audio_component_drv = common dso_local global i32 0, align 4
@vc4_hdmi_audio_codec_dai_drv = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not register component: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"MAI\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"MAI PCM\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"vc4-hdmi\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Could not register sound card: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_hdmi*)* @vc4_hdmi_audio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_hdmi_audio_init(%struct.vc4_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc4_hdmi*, align 8
  %4 = alloca %struct.snd_soc_dai_link*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.vc4_hdmi* %0, %struct.vc4_hdmi** %3, align 8
  %9 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %3, align 8
  %10 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 5
  store %struct.snd_soc_dai_link* %11, %struct.snd_soc_dai_link** %4, align 8
  %12 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %3, align 8
  %13 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  store %struct.snd_soc_card* %14, %struct.snd_soc_card** %5, align 8
  %15 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %3, align 8
  %16 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_find_property(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @of_get_address(i32 %30, i32 1, i32* null, i32* null)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @be32_to_cpup(i32* %32)
  %34 = load i32, i32* @VC4_HD_MAI_DATA, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %3, align 8
  %37 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  store i32 %35, i32* %39, align 8
  %40 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %41 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %3, align 8
  %42 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %3, align 8
  %46 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 2, i32* %48, align 8
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @devm_snd_dmaengine_pcm_register(%struct.device* %49, i32* @pcm_conf, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %27
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %151

58:                                               ; preds = %27
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @devm_snd_soc_register_component(%struct.device* %59, i32* @vc4_hdmi_audio_cpu_dai_comp, %struct.TYPE_16__* @vc4_hdmi_audio_cpu_dai_drv, i32 1)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %151

68:                                               ; preds = %58
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i32 @devm_snd_soc_register_component(%struct.device* %69, i32* @vc4_hdmi_audio_component_drv, %struct.TYPE_16__* @vc4_hdmi_audio_codec_dai_drv, i32 1)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %151

78:                                               ; preds = %68
  %79 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %3, align 8
  %80 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %82, i32 0, i32 7
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %83, align 8
  %84 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %3, align 8
  %85 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %87, i32 0, i32 6
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %88, align 8
  %89 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %3, align 8
  %90 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %93 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %92, i32 0, i32 5
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %93, align 8
  %94 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %95 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %97 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %99 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %101 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %100, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %101, align 8
  %102 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %103 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %102, i32 0, i32 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %103, align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @vc4_hdmi_audio_codec_dai_drv, i32 0, i32 0), align 4
  %105 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %106 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %105, i32 0, i32 6
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 8
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = call i8* @dev_name(%struct.device* %109)
  %111 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %112 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %111, i32 0, i32 7
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i8* %110, i8** %114, align 8
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = call i8* @dev_name(%struct.device* %115)
  %117 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %118 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %117, i32 0, i32 6
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i8* %116, i8** %120, align 8
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = call i8* @dev_name(%struct.device* %121)
  %123 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %124 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %123, i32 0, i32 5
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  %127 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %4, align 8
  %128 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %129 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %128, i32 0, i32 3
  store %struct.snd_soc_dai_link* %127, %struct.snd_soc_dai_link** %129, align 8
  %130 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %131 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %133 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %132, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %133, align 8
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %136 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %135, i32 0, i32 2
  store %struct.device* %134, %struct.device** %136, align 8
  %137 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %138 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %3, align 8
  %139 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %137, %struct.vc4_hdmi* %138)
  %140 = load %struct.device*, %struct.device** %6, align 8
  %141 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %142 = call i32 @devm_snd_soc_register_card(%struct.device* %140, %struct.snd_soc_card* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %78
  %146 = load %struct.device*, %struct.device** %6, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @dev_err(%struct.device* %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %145, %78
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %73, %63, %53, %24
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @of_find_property(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32* @of_get_address(i32, i32, i32*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @devm_snd_dmaengine_pcm_register(%struct.device*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.vc4_hdmi*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.device*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
