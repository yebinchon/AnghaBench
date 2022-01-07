; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_linehandle_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib.c_linehandle_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.linehandle_state* }
%struct.linehandle_state = type { i32, %struct.linehandle_state*, i32*, %struct.gpio_device* }
%struct.gpio_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @linehandle_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linehandle_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.linehandle_state*, align 8
  %6 = alloca %struct.gpio_device*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.linehandle_state*, %struct.linehandle_state** %9, align 8
  store %struct.linehandle_state* %10, %struct.linehandle_state** %5, align 8
  %11 = load %struct.linehandle_state*, %struct.linehandle_state** %5, align 8
  %12 = getelementptr inbounds %struct.linehandle_state, %struct.linehandle_state* %11, i32 0, i32 3
  %13 = load %struct.gpio_device*, %struct.gpio_device** %12, align 8
  store %struct.gpio_device* %13, %struct.gpio_device** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %29, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.linehandle_state*, %struct.linehandle_state** %5, align 8
  %17 = getelementptr inbounds %struct.linehandle_state, %struct.linehandle_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.linehandle_state*, %struct.linehandle_state** %5, align 8
  %22 = getelementptr inbounds %struct.linehandle_state, %struct.linehandle_state* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpiod_free(i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %14

32:                                               ; preds = %14
  %33 = load %struct.linehandle_state*, %struct.linehandle_state** %5, align 8
  %34 = getelementptr inbounds %struct.linehandle_state, %struct.linehandle_state* %33, i32 0, i32 1
  %35 = load %struct.linehandle_state*, %struct.linehandle_state** %34, align 8
  %36 = call i32 @kfree(%struct.linehandle_state* %35)
  %37 = load %struct.linehandle_state*, %struct.linehandle_state** %5, align 8
  %38 = call i32 @kfree(%struct.linehandle_state* %37)
  %39 = load %struct.gpio_device*, %struct.gpio_device** %6, align 8
  %40 = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %39, i32 0, i32 0
  %41 = call i32 @put_device(i32* %40)
  ret i32 0
}

declare dso_local i32 @gpiod_free(i32) #1

declare dso_local i32 @kfree(%struct.linehandle_state*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
