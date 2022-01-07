; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_wait_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_iop3xx_data = type { i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_iop3xx_data*, i32, i32*, i32 (i32, i32)*)* @iop3xx_i2c_wait_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_i2c_wait_event(%struct.i2c_algo_iop3xx_data* %0, i32 %1, i32* %2, i32 (i32, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32 (i32, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_algo_iop3xx_data* %0, %struct.i2c_algo_iop3xx_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 (i32, i32)* %3, i32 (i32, i32)** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %43, %4
  %15 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %6, align 8
  %16 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %19 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %6, align 8
  %20 = call i32 @iop3xx_i2c_get_srstat(%struct.i2c_algo_iop3xx_data* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 %18(i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 1, %23
  %25 = call i32 @wait_event_interruptible_timeout(i32 %17, i32 %22, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @iop3xx_i2c_error(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %50

33:                                               ; preds = %14
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %50

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %14, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %36, %29
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @iop3xx_i2c_get_srstat(%struct.i2c_algo_iop3xx_data*) #1

declare dso_local i32 @iop3xx_i2c_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
