; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_update_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_update_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stts751_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STTS751_REG_TEMP_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"I2C read failed (temp H). ret: %x\0A\00", align 1
@STTS751_REG_TEMP_L = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"I2C read failed (temp L). ret: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"I2C 2nd read failed (temp H). ret: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"I2C 2nd read failed (temp L). ret: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stts751_priv*)* @stts751_update_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stts751_update_temp(%struct.stts751_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stts751_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stts751_priv* %0, %struct.stts751_priv** %3, align 8
  %7 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %8 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @STTS751_REG_TEMP_H, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %16 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %83

22:                                               ; preds = %1
  %23 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %24 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* @STTS751_REG_TEMP_L, align 4
  %27 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %32 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %83

38:                                               ; preds = %22
  %39 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %40 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* @STTS751_REG_TEMP_H, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %48 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %83

54:                                               ; preds = %38
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %60 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* @STTS751_REG_TEMP_L, align 4
  %63 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %68 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %83

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32, i32* %4, align 4
  %77 = shl i32 %76, 8
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @stts751_to_deg(i32 %79)
  %81 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %82 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %75, %66, %46, %30, %14
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @stts751_to_deg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
