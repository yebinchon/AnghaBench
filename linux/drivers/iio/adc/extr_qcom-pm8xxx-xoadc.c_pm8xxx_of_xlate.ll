; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.of_phandle_args = type { i32, i64*, i32 }
%struct.pm8xxx_xoadc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"wrong number of arguments for %pOFn need 2 got %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"pre scale/mux: %02x, amux: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.of_phandle_args*)* @pm8xxx_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_of_xlate(%struct.iio_dev* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.pm8xxx_xoadc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.pm8xxx_xoadc* @iio_priv(%struct.iio_dev* %10)
  store %struct.pm8xxx_xoadc* %11, %struct.pm8xxx_xoadc** %6, align 8
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 0
  %19 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %20 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %2
  %29 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %30 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %35 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %42)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %79, %28
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %47 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %44
  %51 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %52 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %50
  %64 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %65 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %85

78:                                               ; preds = %63, %50
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %44

82:                                               ; preds = %44
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %76, %16
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.pm8xxx_xoadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
