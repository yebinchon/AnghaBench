; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_set_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_set_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.kxcjk1013_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@KXCJK1013_REG_CTRL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error reading reg_ctrl1\0A\00", align 1
@KXCJK1013_REG_CTRL1_BIT_GSEL0 = common dso_local global i32 0, align 4
@KXCJK1013_REG_CTRL1_BIT_GSEL1 = common dso_local global i32 0, align 4
@KXCJK1013_scale_table = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Error writing reg_ctrl1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxcjk1013_data*, i32)* @kxcjk1013_set_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_set_range(%struct.kxcjk1013_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kxcjk1013_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kxcjk1013_data* %0, %struct.kxcjk1013_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %8 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load i32, i32* @KXCJK1013_REG_CTRL1, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_4__* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %16 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load i32, i32* @KXCJK1013_REG_CTRL1_BIT_GSEL0, align 4
  %23 = load i32, i32* @KXCJK1013_REG_CTRL1_BIT_GSEL1, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @KXCJK1013_scale_table, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 3
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @KXCJK1013_scale_table, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %47 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* @KXCJK1013_REG_CTRL1, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_4__* %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %21
  %55 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %56 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %65

61:                                               ; preds = %21
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %64 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %54, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
