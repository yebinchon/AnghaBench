; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mixdev_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mixdev_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.mousedev = type { i32, i32, i32 }

@mousedev_mix = common dso_local global %struct.TYPE_2__* null, align 8
@mousedev_mix_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mousedev*)* @mixdev_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixdev_add_device(%struct.mousedev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mousedev*, align 8
  %4 = alloca i32, align 4
  store %struct.mousedev* %0, %struct.mousedev** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mousedev_mix, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock_interruptible(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mousedev_mix, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %19 = call i32 @mousedev_open_device(%struct.mousedev* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %33

23:                                               ; preds = %17
  %24 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %25 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %12
  %27 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %28 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %27, i32 0, i32 2
  %29 = call i32 @get_device(i32* %28)
  %30 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %31 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %30, i32 0, i32 1
  %32 = call i32 @list_add_tail(i32* %31, i32* @mousedev_mix_list)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mousedev_mix, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mousedev_open_device(%struct.mousedev*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
