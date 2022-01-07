; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_dw_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_dw_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i64 }

@ACCESS_SWAP = common dso_local global i32 0, align 4
@ACCESS_16BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_writel(%struct.dw_i2c_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dw_i2c_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %8 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ACCESS_SWAP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @swab32(i32 %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %18 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ACCESS_16BIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %26 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i32 @writew_relaxed(i32 %24, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 16
  %34 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %35 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = add nsw i64 %39, 2
  %41 = call i32 @writew_relaxed(i32 %33, i64 %40)
  br label %51

42:                                               ; preds = %16
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %45 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @writel_relaxed(i32 %43, i64 %49)
  br label %51

51:                                               ; preds = %42, %23
  ret void
}

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @writew_relaxed(i32, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
