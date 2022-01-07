; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_i2c = type { i32, i64 }

@ADDR_DVD0 = common dso_local global i64 0, align 8
@ADDR_DVD1 = common dso_local global i64 0, align 8
@ADDR_STA0_DVD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_i2c*, i32)* @sprd_i2c_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_i2c_set_clk(%struct.sprd_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.sprd_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sprd_i2c* %0, %struct.sprd_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %12 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 4, %15
  %17 = sdiv i32 %14, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 1
  %21 = mul nsw i32 %20, 2
  %22 = sdiv i32 %21, 5
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 1
  %25 = mul nsw i32 %24, 3
  %26 = sdiv i32 %25, 5
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @I2C_ADDR_DVD0_CALC(i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @I2C_ADDR_DVD1_CALC(i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %35 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ADDR_DVD0, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %42 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ADDR_DVD1, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 400000
  br i1 %48, label %49, label %59

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 6, %50
  %52 = sdiv i32 %51, 10000000
  %53 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %54 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ADDR_STA0_DVD, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  br label %73

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 100000
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 4, %63
  %65 = sdiv i32 %64, 1000000
  %66 = load %struct.sprd_i2c*, %struct.sprd_i2c** %3, align 8
  %67 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ADDR_STA0_DVD, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  br label %72

72:                                               ; preds = %62, %59
  br label %73

73:                                               ; preds = %72, %49
  ret void
}

declare dso_local i32 @I2C_ADDR_DVD0_CALC(i32, i32) #1

declare dso_local i32 @I2C_ADDR_DVD1_CALC(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
