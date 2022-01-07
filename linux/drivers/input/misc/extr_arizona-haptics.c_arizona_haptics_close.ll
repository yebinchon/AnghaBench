; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_arizona-haptics.c_arizona_haptics_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_arizona-haptics.c_arizona_haptics_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.arizona_haptics = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"HAPTICS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @arizona_haptics_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_haptics_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.arizona_haptics*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.arizona_haptics* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.arizona_haptics* %6, %struct.arizona_haptics** %3, align 8
  %7 = load %struct.arizona_haptics*, %struct.arizona_haptics** %3, align 8
  %8 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %7, i32 0, i32 1
  %9 = call i32 @cancel_work_sync(i32* %8)
  %10 = load %struct.arizona_haptics*, %struct.arizona_haptics** %3, align 8
  %11 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.arizona_haptics*, %struct.arizona_haptics** %3, align 8
  %18 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i64 %21)
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %4, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %24 = call i32 @snd_soc_component_disable_pin(%struct.snd_soc_component* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.arizona_haptics* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i64) #1

declare dso_local i32 @snd_soc_component_disable_pin(%struct.snd_soc_component*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
