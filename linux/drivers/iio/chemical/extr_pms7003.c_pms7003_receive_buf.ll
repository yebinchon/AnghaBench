; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.pms7003_state = type { i32, %struct.pms7003_frame }
%struct.pms7003_frame = type { i32, i32, i64 }

@PMS7003_MAGIC = common dso_local global i64 0, align 8
@PMS7003_MAX_DATA_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*, i8*, i64)* @pms7003_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pms7003_receive_buf(%struct.serdev_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serdev_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.pms7003_state*, align 8
  %10 = alloca %struct.pms7003_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.serdev_device*, %struct.serdev_device** %5, align 8
  %14 = call %struct.iio_dev* @serdev_device_get_drvdata(%struct.serdev_device* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %8, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %16 = call %struct.pms7003_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.pms7003_state* %16, %struct.pms7003_state** %9, align 8
  %17 = load %struct.pms7003_state*, %struct.pms7003_state** %9, align 8
  %18 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %17, i32 0, i32 1
  store %struct.pms7003_frame* %18, %struct.pms7003_frame** %10, align 8
  %19 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %20 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %97

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @get_unaligned_be16(i8* %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @PMS7003_MAGIC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 2, i32* %4, align 4
  br label %97

35:                                               ; preds = %27
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = call i8* @get_unaligned_be16(i8* %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @PMS7003_MAX_DATA_LENGTH, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %46 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %48 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %35
  store i32 4, i32* %4, align 4
  br label %97

50:                                               ; preds = %3
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %53 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %56 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = call i32 @min(i64 %51, i64 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %62 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %65 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %63, %67
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @memcpy(i64 %68, i8* %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %74 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %78 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %81 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %50
  %85 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %86 = call i64 @pms7003_frame_is_okay(%struct.pms7003_frame* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.pms7003_state*, %struct.pms7003_state** %9, align 8
  %90 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %89, i32 0, i32 0
  %91 = call i32 @complete(i32* %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.pms7003_frame*, %struct.pms7003_frame** %10, align 8
  %94 = getelementptr inbounds %struct.pms7003_frame, %struct.pms7003_frame* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %50
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %49, %34, %26
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.iio_dev* @serdev_device_get_drvdata(%struct.serdev_device*) #1

declare dso_local %struct.pms7003_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @get_unaligned_be16(i8*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @pms7003_frame_is_okay(%struct.pms7003_frame*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
