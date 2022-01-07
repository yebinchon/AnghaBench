; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_enum_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_enum_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.iio_enum = type { i32 (%struct.iio_dev.0*, %struct.iio_chan_spec.1*)*, i32, i8** }
%struct.iio_dev.0 = type opaque
%struct.iio_chan_spec.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_enum_read(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iio_enum*, align 8
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.iio_enum*
  store %struct.iio_enum* %13, %struct.iio_enum** %10, align 8
  %14 = load %struct.iio_enum*, %struct.iio_enum** %10, align 8
  %15 = getelementptr inbounds %struct.iio_enum, %struct.iio_enum* %14, i32 0, i32 0
  %16 = load i32 (%struct.iio_dev.0*, %struct.iio_chan_spec.1*)*, i32 (%struct.iio_dev.0*, %struct.iio_chan_spec.1*)** %15, align 8
  %17 = icmp ne i32 (%struct.iio_dev.0*, %struct.iio_chan_spec.1*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %4
  %22 = load %struct.iio_enum*, %struct.iio_enum** %10, align 8
  %23 = getelementptr inbounds %struct.iio_enum, %struct.iio_enum* %22, i32 0, i32 0
  %24 = load i32 (%struct.iio_dev.0*, %struct.iio_chan_spec.1*)*, i32 (%struct.iio_dev.0*, %struct.iio_chan_spec.1*)** %23, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %26 = bitcast %struct.iio_dev* %25 to %struct.iio_dev.0*
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %28 = bitcast %struct.iio_chan_spec* %27 to %struct.iio_chan_spec.1*
  %29 = call i32 %24(%struct.iio_dev.0* %26, %struct.iio_chan_spec.1* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %55

34:                                               ; preds = %21
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.iio_enum*, %struct.iio_enum** %10, align 8
  %37 = getelementptr inbounds %struct.iio_enum, %struct.iio_enum* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %55

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load %struct.iio_enum*, %struct.iio_enum** %10, align 8
  %48 = getelementptr inbounds %struct.iio_enum, %struct.iio_enum* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %44, %40, %32, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
