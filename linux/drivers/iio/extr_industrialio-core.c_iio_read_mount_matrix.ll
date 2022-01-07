; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_read_mount_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_read_mount_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.iio_mount_matrix = type { i32 }

@iio_mount_idmatrix = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_read_mount_matrix(%struct.device* %0, i8* %1, %struct.iio_mount_matrix* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_mount_matrix*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.iio_mount_matrix* %2, %struct.iio_mount_matrix** %7, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iio_mount_idmatrix, i32 0, i32 0), align 4
  %11 = call i64 @ARRAY_SIZE(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.iio_mount_matrix*, %struct.iio_mount_matrix** %7, align 8
  %15 = getelementptr inbounds %struct.iio_mount_matrix, %struct.iio_mount_matrix* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @device_property_read_string_array(%struct.device* %12, i8* %13, i32 %16, i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load %struct.iio_mount_matrix*, %struct.iio_mount_matrix** %7, align 8
  %40 = call i32 @iio_setup_mount_idmatrix(%struct.device* %38, %struct.iio_mount_matrix* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %35, %27, %23
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @device_property_read_string_array(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @iio_setup_mount_idmatrix(%struct.device*, %struct.iio_mount_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
