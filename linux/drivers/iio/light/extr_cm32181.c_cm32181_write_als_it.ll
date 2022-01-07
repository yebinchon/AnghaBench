; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm32181.c_cm32181_write_als_it.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm32181.c_cm32181_write_als_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm32181_chip = type { i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@als_it_value = common dso_local global i32* null, align 8
@als_it_bits = common dso_local global i32* null, align 8
@CM32181_CMD_ALS_IT_SHIFT = common dso_local global i32 0, align 4
@CM32181_CMD_ALS_IT_MASK = common dso_local global i32 0, align 4
@CM32181_REG_ADDR_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm32181_chip*, i32)* @cm32181_write_als_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm32181_write_als_it(%struct.cm32181_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.cm32181_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cm32181_chip* %0, %struct.cm32181_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %11 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %10, i32 0, i32 2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load i32*, i32** @als_it_value, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** @als_it_value, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %32

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %15

32:                                               ; preds = %27, %15
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32*, i32** @als_it_bits, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @CM32181_CMD_ALS_IT_SHIFT, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %49 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i32, i32* @CM32181_CMD_ALS_IT_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %54 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @CM32181_REG_ADDR_CMD, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %52
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %62 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @CM32181_REG_ADDR_CMD, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %60
  store i32 %67, i32* %65, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %69 = load i64, i64* @CM32181_REG_ADDR_CMD, align 8
  %70 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %71 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @CM32181_REG_ADDR_CMD, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %68, i64 %69, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %78 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_word_data(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
