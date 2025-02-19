; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sirf.c_i2c_sirfsoc_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_i2c = type { i32, i32, i64*, i64 }

@SIRFSOC_I2C_DATA_BUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirfsoc_i2c*)* @i2c_sirfsoc_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_sirfsoc_read_data(%struct.sirfsoc_i2c* %0) #0 {
  %2 = alloca %struct.sirfsoc_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sirfsoc_i2c* %0, %struct.sirfsoc_i2c** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %8 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %5
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 3
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SIRFSOC_I2C_DATA_BUF, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %15, %11
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @SIRFSOC_I2C_DATA_MASK(i32 %27)
  %29 = and i32 %26, %28
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @SIRFSOC_I2C_DATA_SHIFT(i32 %30)
  %32 = ashr i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %35 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.sirfsoc_i2c*, %struct.sirfsoc_i2c** %2, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_i2c, %struct.sirfsoc_i2c* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i64, i64* %36, i64 %41
  store i64 %33, i64* %42, align 8
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %5

46:                                               ; preds = %5
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @SIRFSOC_I2C_DATA_MASK(i32) #1

declare dso_local i32 @SIRFSOC_I2C_DATA_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
