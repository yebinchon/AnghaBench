; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c___iio_update_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c___iio_update_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_buffer = type { i32 }
%struct.iio_device_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_buffer*, %struct.iio_buffer*)* @__iio_update_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iio_update_buffers(%struct.iio_dev* %0, %struct.iio_buffer* %1, %struct.iio_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_buffer*, align 8
  %7 = alloca %struct.iio_buffer*, align 8
  %8 = alloca %struct.iio_device_config, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_buffer* %1, %struct.iio_buffer** %6, align 8
  store %struct.iio_buffer* %2, %struct.iio_buffer** %7, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %12 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %13 = call i32 @iio_verify_update(%struct.iio_dev* %10, %struct.iio_buffer* %11, %struct.iio_buffer* %12, %struct.iio_device_config* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %20 = icmp ne %struct.iio_buffer* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %23 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %24 = call i32 @iio_buffer_request_update(%struct.iio_dev* %22, %struct.iio_buffer* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %64

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %31 = call i32 @iio_disable_buffers(%struct.iio_dev* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %61

35:                                               ; preds = %29
  %36 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %37 = icmp ne %struct.iio_buffer* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %40 = call i32 @iio_buffer_deactivate(%struct.iio_buffer* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %43 = icmp ne %struct.iio_buffer* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %46 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %47 = call i32 @iio_buffer_activate(%struct.iio_dev* %45, %struct.iio_buffer* %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  %51 = call i64 @list_empty(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %70

54:                                               ; preds = %48
  %55 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %56 = call i32 @iio_enable_buffers(%struct.iio_dev* %55, %struct.iio_device_config* %8)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %61

60:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %70

61:                                               ; preds = %59, %34
  %62 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %63 = call i32 @iio_buffer_deactivate_all(%struct.iio_dev* %62)
  br label %64

64:                                               ; preds = %61, %27
  %65 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %66 = getelementptr inbounds %struct.iio_device_config, %struct.iio_device_config* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @iio_free_scan_mask(%struct.iio_dev* %65, i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %60, %53, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @iio_verify_update(%struct.iio_dev*, %struct.iio_buffer*, %struct.iio_buffer*, %struct.iio_device_config*) #1

declare dso_local i32 @iio_buffer_request_update(%struct.iio_dev*, %struct.iio_buffer*) #1

declare dso_local i32 @iio_disable_buffers(%struct.iio_dev*) #1

declare dso_local i32 @iio_buffer_deactivate(%struct.iio_buffer*) #1

declare dso_local i32 @iio_buffer_activate(%struct.iio_dev*, %struct.iio_buffer*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @iio_enable_buffers(%struct.iio_dev*, %struct.iio_device_config*) #1

declare dso_local i32 @iio_buffer_deactivate_all(%struct.iio_dev*) #1

declare dso_local i32 @iio_free_scan_mask(%struct.iio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
