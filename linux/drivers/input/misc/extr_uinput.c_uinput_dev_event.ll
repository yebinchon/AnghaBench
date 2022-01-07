; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_dev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_dev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.uinput_device = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i32, i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@UINPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @uinput_dev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_dev_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uinput_device*, align 8
  %10 = alloca %struct.timespec64, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = call %struct.uinput_device* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.uinput_device* %12, %struct.uinput_device** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %15 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %18 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %13, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %24 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %27 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %22, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %33 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %36 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %31, i32* %39, align 4
  %40 = call i32 @ktime_get_ts64(%struct.timespec64* %10)
  %41 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %10, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %44 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %47 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i32 %42, i32* %50, align 4
  %51 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NSEC_PER_USEC, align 4
  %54 = sdiv i32 %52, %53
  %55 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %56 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %59 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 %54, i32* %62, align 4
  %63 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %64 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  %67 = load i32, i32* @UINPUT_BUFFER_SIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = urem i64 %66, %68
  %70 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %71 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %73 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %72, i32 0, i32 1
  %74 = call i32 @wake_up_interruptible(i32* %73)
  ret i32 0
}

declare dso_local %struct.uinput_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
