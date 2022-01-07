; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_calibrate_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_calibrate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cyapa = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cyapa_calibrate_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_calibrate_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cyapa*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.cyapa* @dev_get_drvdata(%struct.device* %12)
  store %struct.cyapa* %13, %struct.cyapa** %10, align 8
  %14 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %15 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock_interruptible(i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %4
  %22 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %23 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %28 = call i32 @cyapa_enable_irq_for_cmd(%struct.cyapa* %27)
  %29 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %30 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.device*, %struct.device_attribute*, i8*, i64)*, i32 (%struct.device*, %struct.device_attribute*, i8*, i64)** %32, align 8
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 %33(%struct.device* %34, %struct.device_attribute* %35, i8* %36, i64 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %40 = call i32 @cyapa_disable_irq_for_cmd(%struct.cyapa* %39)
  br label %44

41:                                               ; preds = %21
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %26
  %45 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %46 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  br label %55

53:                                               ; preds = %44
  %54 = load i64, i64* %9, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i64 [ %52, %50 ], [ %54, %53 ]
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.cyapa* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @cyapa_enable_irq_for_cmd(%struct.cyapa*) #1

declare dso_local i32 @cyapa_disable_irq_for_cmd(%struct.cyapa*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
