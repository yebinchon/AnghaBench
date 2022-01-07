; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_pegasus_notetaker.c_pegasus_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_pegasus_notetaker.c_pegasus_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.pegasus = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PEN_MODE_XY = common dso_local global i32 0, align 4
@NOTETAKER_LED_MOUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @pegasus_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pegasus_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.pegasus*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.pegasus* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.pegasus* %7, %struct.pegasus** %4, align 8
  %8 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %9 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @usb_autopm_get_interface(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %18 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %21 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %24 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %28 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %27, i32 0, i32 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i64 @usb_submit_urb(%struct.TYPE_3__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %58

36:                                               ; preds = %16
  %37 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %38 = load i32, i32* @PEN_MODE_XY, align 4
  %39 = load i32, i32* @NOTETAKER_LED_MOUSE, align 4
  %40 = call i32 @pegasus_set_mode(%struct.pegasus* %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %50

44:                                               ; preds = %36
  %45 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %46 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %48 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %47, i32 0, i32 2
  %49 = call i32 @mutex_unlock(i32* %48)
  store i32 0, i32* %2, align 4
  br label %67

50:                                               ; preds = %43
  %51 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %52 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %51, i32 0, i32 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 @usb_kill_urb(%struct.TYPE_3__* %53)
  %55 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %56 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %55, i32 0, i32 3
  %57 = call i32 @cancel_work_sync(i32* %56)
  br label %58

58:                                               ; preds = %50, %33
  %59 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %60 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.pegasus*, %struct.pegasus** %4, align 8
  %63 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_autopm_put_interface(i32 %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %58, %44, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.pegasus* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pegasus_set_mode(%struct.pegasus*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
