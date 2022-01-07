; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_pulse_micbias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_pulse_micbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { %struct.arizona* }
%struct.arizona = type { i32, %struct.TYPE_2__, %struct.snd_soc_dapm_context* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to enable %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to disable %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arizona_extcon_info*)* @arizona_extcon_pulse_micbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_extcon_pulse_micbias(%struct.arizona_extcon_info* %0) #0 {
  %2 = alloca %struct.arizona_extcon_info*, align 8
  %3 = alloca %struct.arizona*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store %struct.arizona_extcon_info* %0, %struct.arizona_extcon_info** %2, align 8
  %8 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %9 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %8, i32 0, i32 0
  %10 = load %struct.arizona*, %struct.arizona** %9, align 8
  store %struct.arizona* %10, %struct.arizona** %3, align 8
  %11 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %12 = call i8* @arizona_extcon_get_micbias(%struct.arizona_extcon_info* %11)
  store i8* %12, i8** %4, align 8
  %13 = load %struct.arizona*, %struct.arizona** %3, align 8
  %14 = getelementptr inbounds %struct.arizona, %struct.arizona* %13, i32 0, i32 2
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %14, align 8
  store %struct.snd_soc_dapm_context* %15, %struct.snd_soc_dapm_context** %5, align 8
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %17 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(%struct.snd_soc_dapm_context* %16)
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %6, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @snd_soc_component_force_enable_pin(%struct.snd_soc_component* %18, i8* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.arizona*, %struct.arizona** %3, align 8
  %25 = getelementptr inbounds %struct.arizona, %struct.arizona* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %32 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %31)
  %33 = load %struct.arizona*, %struct.arizona** %3, align 8
  %34 = getelementptr inbounds %struct.arizona, %struct.arizona* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %30
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @snd_soc_component_disable_pin(%struct.snd_soc_component* %39, i8* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.arizona*, %struct.arizona** %3, align 8
  %46 = getelementptr inbounds %struct.arizona, %struct.arizona* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dev_warn(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %53 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %52)
  br label %54

54:                                               ; preds = %51, %30
  ret void
}

declare dso_local i8* @arizona_extcon_get_micbias(%struct.arizona_extcon_info*) #1

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_force_enable_pin(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_disable_pin(%struct.snd_soc_component*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
