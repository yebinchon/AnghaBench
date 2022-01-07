; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_destroy_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_destroy_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca9532_data = type { %struct.TYPE_4__, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pca9532_data*, i32)* @pca9532_destroy_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9532_destroy_devices(%struct.pca9532_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pca9532_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pca9532_data* %0, %struct.pca9532_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %9 = icmp ne %struct.pca9532_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %49, %13
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %20 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %49 [
    i32 128, label %27
    i32 131, label %27
    i32 130, label %28
    i32 129, label %37
  ]

27:                                               ; preds = %18, %18
  br label %49

28:                                               ; preds = %18
  %29 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %30 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @led_classdev_unregister(i32* %35)
  br label %49

37:                                               ; preds = %18
  %38 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %39 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %44 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %43, i32 0, i32 2
  %45 = call i32 @cancel_work_sync(i32* %44)
  %46 = load %struct.pca9532_data*, %struct.pca9532_data** %4, align 8
  %47 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %42, %37
  br label %49

49:                                               ; preds = %18, %48, %28, %27
  br label %14

50:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %10
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
