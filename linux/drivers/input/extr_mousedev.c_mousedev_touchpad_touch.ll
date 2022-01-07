; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_touchpad_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_touchpad_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedev = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@tap_time = common dso_local global i32 0, align 4
@mousedev_mix = common dso_local global %struct.mousedev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mousedev*, i32)* @mousedev_touchpad_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousedev_touchpad_touch(%struct.mousedev* %0, i32 %1) #0 {
  %3 = alloca %struct.mousedev*, align 8
  %4 = alloca i32, align 4
  store %struct.mousedev* %0, %struct.mousedev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %2
  %8 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %9 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %7
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %15 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @tap_time, align 4
  %18 = call i64 @msecs_to_jiffies(i32 %17)
  %19 = add nsw i64 %16, %18
  %20 = call i64 @time_before(i64 %13, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %12
  %23 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %24 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 0, i32* %25)
  %27 = load %struct.mousedev*, %struct.mousedev** @mousedev_mix, align 8
  %28 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 0, i32* %29)
  %31 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %32 = load %struct.mousedev*, %struct.mousedev** @mousedev_mix, align 8
  %33 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %32, i32 0, i32 4
  %34 = call i32 @mousedev_notify_readers(%struct.mousedev* %31, %struct.TYPE_2__* %33)
  %35 = load %struct.mousedev*, %struct.mousedev** @mousedev_mix, align 8
  %36 = load %struct.mousedev*, %struct.mousedev** @mousedev_mix, align 8
  %37 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %36, i32 0, i32 4
  %38 = call i32 @mousedev_notify_readers(%struct.mousedev* %35, %struct.TYPE_2__* %37)
  %39 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %40 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @clear_bit(i32 0, i32* %41)
  %43 = load %struct.mousedev*, %struct.mousedev** @mousedev_mix, align 8
  %44 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @clear_bit(i32 0, i32* %45)
  br label %47

47:                                               ; preds = %22, %12, %7
  %48 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %49 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %51 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %53 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %55 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  br label %66

56:                                               ; preds = %2
  %57 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %58 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* @jiffies, align 8
  %63 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %64 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %65, %47
  ret void
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mousedev_notify_readers(%struct.mousedev*, %struct.TYPE_2__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
