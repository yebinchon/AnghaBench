; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_dw_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_dw_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i64 }

@ACCESS_16BIT = common dso_local global i32 0, align 4
@ACCESS_SWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dw_readl(%struct.dw_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_i2c_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %8 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ACCESS_16BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %15 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i32 @readw_relaxed(i64 %19)
  %21 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %22 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = add nsw i64 %26, 2
  %28 = call i32 @readw_relaxed(i64 %27)
  %29 = shl i32 %28, 16
  %30 = or i32 %20, %29
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %33 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @readl_relaxed(i64 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %31, %13
  %40 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %41 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ACCESS_SWAP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @swab32(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
