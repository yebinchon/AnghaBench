; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3232.c_cm3232_write_als_it.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3232.c_cm3232_write_als_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.cm3232_chip = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@cm3232_als_it_scales = common dso_local global %struct.TYPE_3__* null, align 8
@CM3232_CMD_ALS_IT_SHIFT = common dso_local global i32 0, align 4
@CM3232_CMD_ALS_IT_MASK = common dso_local global i32 0, align 4
@CM3232_REG_ADDR_CMD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm3232_chip*, i32, i32)* @cm3232_write_als_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm3232_write_als_it(%struct.cm3232_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm3232_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.cm3232_chip* %0, %struct.cm3232_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.cm3232_chip*, %struct.cm3232_chip** %5, align 8
  %14 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %8, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %72, %3
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3232_als_it_scales, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3232_als_it_scales, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %22, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3232_als_it_scales, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %31, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %30
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cm3232_als_it_scales, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @CM3232_CMD_ALS_IT_SHIFT, align 4
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load %struct.cm3232_chip*, %struct.cm3232_chip** %5, align 8
  %50 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CM3232_CMD_ALS_IT_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %59 = load i32, i32* @CM3232_REG_ADDR_CMD, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %58, i32 %59, i32 %60)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %39
  %65 = load i64, i64* %12, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %78

67:                                               ; preds = %39
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.cm3232_chip*, %struct.cm3232_chip** %5, align 8
  %70 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %4, align 4
  br label %78

71:                                               ; preds = %30, %21
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %16

75:                                               ; preds = %16
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %67, %64
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
