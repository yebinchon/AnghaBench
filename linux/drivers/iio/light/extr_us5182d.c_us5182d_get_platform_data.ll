; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_get_platform_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_get_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.us5182d_data = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"upisemi,glass-coef\00", align 1
@US5182D_GA_RESOLUTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"upisemi,dark-ths\00", align 1
@us5182d_dark_ths_vals = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"upisemi,upper-dark-gain\00", align 1
@US5182D_REG_AUTO_HDARK_GAIN_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"upisemi,lower-dark-gain\00", align 1
@US5182D_REG_AUTO_LDARK_GAIN_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"upisemi,continuous\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @us5182d_get_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @us5182d_get_platform_data(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.us5182d_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %4)
  store %struct.us5182d_data* %5, %struct.us5182d_data** %3, align 8
  %6 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %7 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %11 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %10, i32 0, i32 5
  %12 = call i64 @device_property_read_u32(i32* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @US5182D_GA_RESOLUTION, align 4
  %16 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %17 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %20 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %24 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @us5182d_dark_ths_vals, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i64 @device_property_read_u16_array(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32, i32* @us5182d_dark_ths_vals, align 4
  %32 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %33 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %18
  %35 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %36 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %40 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %39, i32 0, i32 3
  %41 = call i64 @device_property_read_u8(i32* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @US5182D_REG_AUTO_HDARK_GAIN_DEFAULT, align 4
  %45 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %46 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %34
  %48 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %49 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %53 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %52, i32 0, i32 2
  %54 = call i64 @device_property_read_u8(i32* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* @US5182D_REG_AUTO_LDARK_GAIN_DEFAULT, align 4
  %58 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %59 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %62 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @device_property_read_bool(i32* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %67 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  ret void
}

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local i64 @device_property_read_u16_array(i32*, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @device_property_read_u8(i32*, i8*, i32*) #1

declare dso_local i32 @device_property_read_bool(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
