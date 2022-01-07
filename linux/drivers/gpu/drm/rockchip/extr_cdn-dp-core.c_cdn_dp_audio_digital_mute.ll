; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_audio_digital_mute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_audio_digital_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cdn_dp_device = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @cdn_dp_audio_digital_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_audio_digital_mute(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdn_dp_device*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.cdn_dp_device* @dev_get_drvdata(%struct.device* %9)
  store %struct.cdn_dp_device* %10, %struct.cdn_dp_device** %7, align 8
  %11 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %12 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %15 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @cdn_dp_audio_mute(%struct.cdn_dp_device* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %7, align 8
  %27 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local %struct.cdn_dp_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cdn_dp_audio_mute(%struct.cdn_dp_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
