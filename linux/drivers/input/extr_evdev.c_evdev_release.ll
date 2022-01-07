; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_evdev.c_evdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.evdev_client* }
%struct.evdev_client = type { i32*, %struct.evdev* }
%struct.evdev = type { i32 }

@EV_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @evdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.evdev_client*, align 8
  %6 = alloca %struct.evdev*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.evdev_client*, %struct.evdev_client** %9, align 8
  store %struct.evdev_client* %10, %struct.evdev_client** %5, align 8
  %11 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %12 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %11, i32 0, i32 1
  %13 = load %struct.evdev*, %struct.evdev** %12, align 8
  store %struct.evdev* %13, %struct.evdev** %6, align 8
  %14 = load %struct.evdev*, %struct.evdev** %6, align 8
  %15 = getelementptr inbounds %struct.evdev, %struct.evdev* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.evdev*, %struct.evdev** %6, align 8
  %18 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %19 = call i32 @evdev_ungrab(%struct.evdev* %17, %struct.evdev_client* %18)
  %20 = load %struct.evdev*, %struct.evdev** %6, align 8
  %21 = getelementptr inbounds %struct.evdev, %struct.evdev* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.evdev*, %struct.evdev** %6, align 8
  %24 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %25 = call i32 @evdev_detach_client(%struct.evdev* %23, %struct.evdev_client* %24)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %39, %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @EV_CNT, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %32 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bitmap_free(i32 %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %44 = call i32 @kvfree(%struct.evdev_client* %43)
  %45 = load %struct.evdev*, %struct.evdev** %6, align 8
  %46 = call i32 @evdev_close_device(%struct.evdev* %45)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @evdev_ungrab(%struct.evdev*, %struct.evdev_client*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @evdev_detach_client(%struct.evdev*, %struct.evdev_client*) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @kvfree(%struct.evdev_client*) #1

declare dso_local i32 @evdev_close_device(%struct.evdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
