; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_update_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_update_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32* }
%struct.iio_buffer = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_update_buffers(%struct.iio_dev* %0, %struct.iio_buffer* %1, %struct.iio_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_buffer*, align 8
  %7 = alloca %struct.iio_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_buffer* %1, %struct.iio_buffer** %6, align 8
  store %struct.iio_buffer* %2, %struct.iio_buffer** %7, align 8
  %9 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %10 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %11 = icmp eq %struct.iio_buffer* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

13:                                               ; preds = %3
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %21 = icmp ne %struct.iio_buffer* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %24 = call i64 @iio_buffer_is_active(%struct.iio_buffer* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.iio_buffer* null, %struct.iio_buffer** %6, align 8
  br label %27

27:                                               ; preds = %26, %22, %13
  %28 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %29 = icmp ne %struct.iio_buffer* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %32 = call i64 @iio_buffer_is_active(%struct.iio_buffer* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store %struct.iio_buffer* null, %struct.iio_buffer** %7, align 8
  br label %35

35:                                               ; preds = %34, %30, %27
  %36 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %37 = icmp ne %struct.iio_buffer* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %40 = icmp ne %struct.iio_buffer* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %55

42:                                               ; preds = %38, %35
  %43 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %55

50:                                               ; preds = %42
  %51 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %52 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %53 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %54 = call i32 @__iio_update_buffers(%struct.iio_dev* %51, %struct.iio_buffer* %52, %struct.iio_buffer* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %47, %41
  %56 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %12
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iio_buffer_is_active(%struct.iio_buffer*) #1

declare dso_local i32 @__iio_update_buffers(%struct.iio_dev*, %struct.iio_buffer*, %struct.iio_buffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
