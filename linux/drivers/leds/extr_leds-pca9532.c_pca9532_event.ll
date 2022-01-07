; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.pca9532_data = type { i32*, i32 }

@EV_SND = common dso_local global i32 0, align 4
@SND_BELL = common dso_local global i32 0, align 4
@SND_TONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @pca9532_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9532_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pca9532_data*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %12 = call %struct.pca9532_data* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.pca9532_data* %12, %struct.pca9532_data** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @EV_SND, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SND_BELL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SND_TONE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %4
  store i32 -1, i32* %5, align 4
  br label %45

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 32767
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.pca9532_data*, %struct.pca9532_data** %10, align 8
  %33 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 127, i32* %35, align 4
  br label %41

36:                                               ; preds = %28, %25
  %37 = load %struct.pca9532_data*, %struct.pca9532_data** %10, align 8
  %38 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.pca9532_data*, %struct.pca9532_data** %10, align 8
  %43 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %42, i32 0, i32 1
  %44 = call i32 @schedule_work(i32* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %24
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.pca9532_data* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
