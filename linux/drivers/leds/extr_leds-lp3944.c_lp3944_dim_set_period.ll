; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp3944.c_lp3944_dim_set_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp3944.c_lp3944_dim_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@LP3944_DIM0 = common dso_local global i64 0, align 8
@LP3944_REG_PSC0 = common dso_local global i64 0, align 8
@LP3944_DIM1 = common dso_local global i64 0, align 8
@LP3944_REG_PSC1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LP3944_PERIOD_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i64, i32)* @lp3944_dim_set_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3944_dim_set_period(%struct.i2c_client* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @LP3944_DIM0, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @LP3944_REG_PSC0, align 8
  store i64 %15, i64* %8, align 8
  br label %26

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @LP3944_DIM1, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @LP3944_REG_PSC1, align 8
  store i64 %21, i64* %8, align 8
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %44

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @LP3944_PERIOD_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %44

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %34, 255
  %36 = load i32, i32* @LP3944_PERIOD_MAX, align 4
  %37 = sdiv i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %9, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @lp3944_reg_write(%struct.i2c_client* %39, i64 %40, i64 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %33, %30, %22
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @lp3944_reg_write(%struct.i2c_client*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
