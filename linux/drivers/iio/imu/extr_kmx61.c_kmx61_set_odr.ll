; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_set_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_set_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmx61_data = type { i32, i32 }

@KMX61_ACC = common dso_local global i32 0, align 4
@KMX61_MAG = common dso_local global i32 0, align 4
@KMX61_ALL_STBY = common dso_local global i32 0, align 4
@KMX61_ACC_ODR_SHIFT = common dso_local global i32 0, align 4
@KMX61_MAG_ODR_SHIFT = common dso_local global i32 0, align 4
@KMX61_REG_ODCNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmx61_data*, i32, i32, i32)* @kmx61_set_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_set_odr(%struct.kmx61_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmx61_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kmx61_data* %0, %struct.kmx61_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %15 = load i32, i32* @KMX61_ACC, align 4
  %16 = load i32, i32* @KMX61_MAG, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @kmx61_get_mode(%struct.kmx61_data* %14, i32* %11, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %100

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @kmx61_convert_freq_to_bit(i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %100

31:                                               ; preds = %23
  %32 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %33 = load i32, i32* @KMX61_ALL_STBY, align 4
  %34 = load i32, i32* @KMX61_ACC, align 4
  %35 = load i32, i32* @KMX61_MAG, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @kmx61_set_mode(%struct.kmx61_data* %32, i32 %33, i32 %36, i32 1)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %100

42:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @KMX61_ACC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @KMX61_ACC_ODR_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @KMX61_MAG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @KMX61_MAG_ODR_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %66 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @KMX61_REG_ODCNTL, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @i2c_smbus_write_byte_data(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %100

75:                                               ; preds = %64
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %78 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @KMX61_ACC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @kmx61_set_wake_up_odr(%struct.kmx61_data* %84, i32 %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %100

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %75
  %94 = load %struct.kmx61_data*, %struct.kmx61_data** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @KMX61_ACC, align 4
  %97 = load i32, i32* @KMX61_MAG, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @kmx61_set_mode(%struct.kmx61_data* %94, i32 %95, i32 %98, i32 1)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %93, %90, %73, %40, %29, %21
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @kmx61_get_mode(%struct.kmx61_data*, i32*, i32) #1

declare dso_local i32 @kmx61_convert_freq_to_bit(i32, i32) #1

declare dso_local i32 @kmx61_set_mode(%struct.kmx61_data*, i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @kmx61_set_wake_up_odr(%struct.kmx61_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
