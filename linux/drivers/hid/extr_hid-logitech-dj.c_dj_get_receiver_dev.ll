; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_dj_get_receiver_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_dj_get_receiver_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dj_receiver_dev = type { i32, %struct.hid_device*, %struct.hid_device*, %struct.hid_device*, i32, i32, i32, i32, i32, i32 }
%struct.hid_device = type { i32 }

@dj_hdev_list_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@delayedwork_callback = common dso_local global i32 0, align 4
@DJ_MAX_NUMBER_NOTIFS = common dso_local global i32 0, align 4
@dj_hdev_list = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HID_GD_KEYBOARD = common dso_local global i32 0, align 4
@HID_GD_MOUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dj_receiver_dev* (%struct.hid_device*, i32, i32, i32)* @dj_get_receiver_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dj_receiver_dev* @dj_get_receiver_dev(%struct.hid_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dj_receiver_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @mutex_lock(i32* @dj_hdev_list_lock)
  %11 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.dj_receiver_dev* @dj_find_receiver_dev(%struct.hid_device* %11, i32 %12)
  store %struct.dj_receiver_dev* %13, %struct.dj_receiver_dev** %9, align 8
  %14 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %15 = icmp ne %struct.dj_receiver_dev* %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.dj_receiver_dev* @kzalloc(i32 56, i32 %17)
  store %struct.dj_receiver_dev* %18, %struct.dj_receiver_dev** %9, align 8
  %19 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %20 = icmp ne %struct.dj_receiver_dev* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %82

22:                                               ; preds = %16
  %23 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %24 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %23, i32 0, i32 9
  %25 = load i32, i32* @delayedwork_callback, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %28 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %27, i32 0, i32 8
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %31 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %30, i32 0, i32 7
  %32 = load i32, i32* @DJ_MAX_NUMBER_NOTIFS, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i64 @kfifo_alloc(i32* %31, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %41 = call i32 @kfree(%struct.dj_receiver_dev* %40)
  store %struct.dj_receiver_dev* null, %struct.dj_receiver_dev** %9, align 8
  br label %82

42:                                               ; preds = %22
  %43 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %44 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %43, i32 0, i32 6
  %45 = call i32 @kref_init(i32* %44)
  %46 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %47 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %46, i32 0, i32 5
  %48 = call i32 @list_add_tail(i32* %47, i32* @dj_hdev_list)
  %49 = load i32, i32* @jiffies, align 4
  %50 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %51 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %54 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %42, %4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @HID_GD_KEYBOARD, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %61 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %62 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %61, i32 0, i32 3
  store %struct.hid_device* %60, %struct.hid_device** %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @HID_GD_MOUSE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %69 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %70 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %69, i32 0, i32 2
  store %struct.hid_device* %68, %struct.hid_device** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %76 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %77 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %76, i32 0, i32 1
  store %struct.hid_device* %75, %struct.hid_device** %77, align 8
  br label %78

78:                                               ; preds = %74, %71
  %79 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %80 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  %81 = call i32 @hid_set_drvdata(%struct.hid_device* %79, %struct.dj_receiver_dev* %80)
  br label %82

82:                                               ; preds = %78, %39, %21
  %83 = call i32 @mutex_unlock(i32* @dj_hdev_list_lock)
  %84 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %9, align 8
  ret %struct.dj_receiver_dev* %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dj_receiver_dev* @dj_find_receiver_dev(%struct.hid_device*, i32) #1

declare dso_local %struct.dj_receiver_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.dj_receiver_dev*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.dj_receiver_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
