; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_envelope-detector.c_envelope_store_invert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_envelope-detector.c_envelope_store_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.envelope = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @envelope_store_invert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envelope_store_invert(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.envelope*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.envelope* @iio_priv(%struct.iio_dev* %16)
  store %struct.envelope* %17, %struct.envelope** %12, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @kstrtoul(i8* %18, i32 0, i64* %13)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %6, align 4
  br label %71

24:                                               ; preds = %5
  %25 = load i64, i64* %13, align 8
  %26 = icmp ugt i64 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %71

30:                                               ; preds = %24
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.envelope*, %struct.envelope** %12, align 8
  %35 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load %struct.envelope*, %struct.envelope** %12, align 8
  %39 = getelementptr inbounds %struct.envelope, %struct.envelope* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %36, %33 ], [ %40, %37 ]
  store i32 %42, i32* %15, align 4
  %43 = load %struct.envelope*, %struct.envelope** %12, align 8
  %44 = getelementptr inbounds %struct.envelope, %struct.envelope* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.envelope*, %struct.envelope** %12, align 8
  %48 = getelementptr inbounds %struct.envelope, %struct.envelope* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.envelope*, %struct.envelope** %12, align 8
  %53 = getelementptr inbounds %struct.envelope, %struct.envelope* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @irq_set_irq_type(i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %51, %41
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.envelope*, %struct.envelope** %12, align 8
  %63 = getelementptr inbounds %struct.envelope, %struct.envelope* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %11, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %60, %57
  %67 = load %struct.envelope*, %struct.envelope** %12, align 8
  %68 = getelementptr inbounds %struct.envelope, %struct.envelope* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %27, %22
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.envelope* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
