; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_dj_put_receiver_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_dj_put_receiver_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.dj_receiver_dev = type { i32, %struct.hid_device*, %struct.hid_device*, %struct.hid_device* }

@dj_hdev_list_lock = common dso_local global i32 0, align 4
@dj_release_receiver_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @dj_put_receiver_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dj_put_receiver_dev(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.dj_receiver_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = call %struct.dj_receiver_dev* @hid_get_drvdata(%struct.hid_device* %4)
  store %struct.dj_receiver_dev* %5, %struct.dj_receiver_dev** %3, align 8
  %6 = call i32 @mutex_lock(i32* @dj_hdev_list_lock)
  %7 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %8 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %7, i32 0, i32 3
  %9 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %10 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %11 = icmp eq %struct.hid_device* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %14 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %13, i32 0, i32 3
  store %struct.hid_device* null, %struct.hid_device** %14, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %17 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %16, i32 0, i32 2
  %18 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %19 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %20 = icmp eq %struct.hid_device* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %23 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %22, i32 0, i32 2
  store %struct.hid_device* null, %struct.hid_device** %23, align 8
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %26 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %25, i32 0, i32 1
  %27 = load %struct.hid_device*, %struct.hid_device** %26, align 8
  %28 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %29 = icmp eq %struct.hid_device* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %32 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %31, i32 0, i32 1
  store %struct.hid_device* null, %struct.hid_device** %32, align 8
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %3, align 8
  %35 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %34, i32 0, i32 0
  %36 = load i32, i32* @dj_release_receiver_dev, align 4
  %37 = call i32 @kref_put(i32* %35, i32 %36)
  %38 = call i32 @mutex_unlock(i32* @dj_hdev_list_lock)
  ret void
}

declare dso_local %struct.dj_receiver_dev* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
