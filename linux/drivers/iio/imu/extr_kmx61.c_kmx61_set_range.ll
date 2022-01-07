; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_set_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_set_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmx61_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KMX61_REG_CTRL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error reading reg_ctrl1\0A\00", align 1
@KMX61_REG_CTRL1_GSEL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error writing reg_ctrl1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmx61_data*, i32)* @kmx61_set_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_set_range(%struct.kmx61_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmx61_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kmx61_data* %0, %struct.kmx61_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %8 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load i32, i32* @KMX61_REG_CTRL1, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %16 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %2
  %22 = load i32, i32* @KMX61_REG_CTRL1_GSEL_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @KMX61_REG_CTRL1_GSEL_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %32 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* @KMX61_REG_CTRL1, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %21
  %40 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %41 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %21
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %49 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %39, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
