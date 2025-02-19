; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_audio_get_dai_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_audio_get_dai_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.device_node = type { i32 }
%struct.of_endpoint = type { i64 }

@SII902X_AUDIO_PORT_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.device_node*)* @sii902x_audio_get_dai_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii902x_audio_get_dai_id(%struct.snd_soc_component* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_endpoint, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %5, align 8
  %9 = call i32 @of_graph_parse_endpoint(%struct.device_node* %8, %struct.of_endpoint* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SII902X_AUDIO_PORT_INDEX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %19, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @of_graph_parse_endpoint(%struct.device_node*, %struct.of_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
