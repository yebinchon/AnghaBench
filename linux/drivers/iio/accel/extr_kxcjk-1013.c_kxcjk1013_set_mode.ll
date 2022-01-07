; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxcjk1013_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KXCJK1013_REG_CTRL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error reading reg_ctrl1\0A\00", align 1
@STANDBY = common dso_local global i32 0, align 4
@KXCJK1013_REG_CTRL1_BIT_PC1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error writing reg_ctrl1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxcjk1013_data*, i32)* @kxcjk1013_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kxcjk1013_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kxcjk1013_data* %0, %struct.kxcjk1013_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %8 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load i32, i32* @KXCJK1013_REG_CTRL1, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %16 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @STANDBY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @KXCJK1013_REG_CTRL1_BIT_PC1, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @KXCJK1013_REG_CTRL1_BIT_PC1, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %36 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* @KXCJK1013_REG_CTRL1, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %45 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %43, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
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
