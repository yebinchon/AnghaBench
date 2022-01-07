; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_show_fixed_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_show_fixed_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev_attr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }

@IIO_CPU = common dso_local global i64 0, align 8
@IIO_BE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s:%c%d/%dX%d>>%u\0A\00", align 1
@iio_endian_prefix = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%s:%c%d/%d>>%u\0A\00", align 1
@IIO_LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @iio_show_fixed_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_show_fixed_type(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev_attr*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %11 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %10)
  store %struct.iio_dev_attr* %11, %struct.iio_dev_attr** %8, align 8
  %12 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %13 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @IIO_CPU, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @IIO_BE, align 8
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %21, %3
  %24 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %25 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %68

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = load i8**, i8*** @iio_endian_prefix, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %38 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %44 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %50 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %56 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %62 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i8*, i8*, i32, i32, i32, i32, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %42, i32 %48, i32 %54, i32 %60, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %99

68:                                               ; preds = %23
  %69 = load i8*, i8** %7, align 8
  %70 = load i8**, i8*** @iio_endian_prefix, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %75 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %81 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %87 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %93 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, i8*, i8*, i32, i32, i32, i32, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %73, i32 %79, i32 %85, i32 %91, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %68, %31
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
