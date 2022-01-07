; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-event.c_iio_event_getfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-event.c_iio_event_getfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.iio_event_interface* }
%struct.iio_event_interface = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IIO_BUSY_BIT_POS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"iio:event\00", align 1
@iio_event_chrdev_fileops = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_event_getfd(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.iio_event_interface*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %6, i32 0, i32 1
  %8 = load %struct.iio_event_interface*, %struct.iio_event_interface** %7, align 8
  store %struct.iio_event_interface* %8, %struct.iio_event_interface** %4, align 8
  %9 = load %struct.iio_event_interface*, %struct.iio_event_interface** %4, align 8
  %10 = icmp eq %struct.iio_event_interface* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock_interruptible(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %14
  %23 = load i32, i32* @IIO_BUSY_BIT_POS, align 4
  %24 = load %struct.iio_event_interface*, %struct.iio_event_interface** %4, align 8
  %25 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %24, i32 0, i32 1
  %26 = call i64 @test_and_set_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %53

31:                                               ; preds = %22
  %32 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %33 = call i32 @iio_device_get(%struct.iio_dev* %32)
  %34 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %35 = load i32, i32* @O_RDONLY, align 4
  %36 = load i32, i32* @O_CLOEXEC, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @anon_inode_getfd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* @iio_event_chrdev_fileops, %struct.iio_dev* %34, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i32, i32* @IIO_BUSY_BIT_POS, align 4
  %43 = load %struct.iio_event_interface*, %struct.iio_event_interface** %4, align 8
  %44 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %43, i32 0, i32 1
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  %46 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %47 = call i32 @iio_device_put(%struct.iio_dev* %46)
  br label %52

48:                                               ; preds = %31
  %49 = load %struct.iio_event_interface*, %struct.iio_event_interface** %4, align 8
  %50 = getelementptr inbounds %struct.iio_event_interface, %struct.iio_event_interface* %49, i32 0, i32 0
  %51 = call i32 @kfifo_reset_out(i32* %50)
  br label %52

52:                                               ; preds = %48, %41
  br label %53

53:                                               ; preds = %52, %28
  %54 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %20, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @iio_device_get(%struct.iio_dev*) #1

declare dso_local i32 @anon_inode_getfd(i8*, i32*, %struct.iio_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iio_device_put(%struct.iio_dev*) #1

declare dso_local i32 @kfifo_reset_out(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
