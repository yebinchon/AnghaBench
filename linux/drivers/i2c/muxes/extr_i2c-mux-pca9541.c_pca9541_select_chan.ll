; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca9541.c_pca9541_select_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca9541.c_pca9541_select_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.pca9541 = type { i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ARB2_TIMEOUT = common dso_local global i64 0, align 8
@ARB_TIMEOUT = common dso_local global i64 0, align 8
@SELECT_DELAY_SHORT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @pca9541_select_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9541_select_chan(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_mux_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pca9541*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %11 = call %struct.pca9541* @i2c_mux_priv(%struct.i2c_mux_core* %10)
  store %struct.pca9541* %11, %struct.pca9541** %6, align 8
  %12 = load %struct.pca9541*, %struct.pca9541** %6, align 8
  %13 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %12, i32 0, i32 2
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @ARB2_TIMEOUT, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @ARB_TIMEOUT, align 8
  %20 = add i64 %18, %19
  %21 = load %struct.pca9541*, %struct.pca9541** %6, align 8
  %22 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %54, %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %25 = call i32 @pca9541_arbitrate(%struct.i2c_client* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  br label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  store i32 %35, i32* %3, align 4
  br label %61

36:                                               ; preds = %23
  %37 = load %struct.pca9541*, %struct.pca9541** %6, align 8
  %38 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SELECT_DELAY_SHORT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.pca9541*, %struct.pca9541** %6, align 8
  %44 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @udelay(i32 %45)
  br label %53

47:                                               ; preds = %36
  %48 = load %struct.pca9541*, %struct.pca9541** %6, align 8
  %49 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 1000
  %52 = call i32 @msleep(i32 %51)
  br label %53

53:                                               ; preds = %47, %42
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @time_is_after_eq_jiffies(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %23, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %34
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.pca9541* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @pca9541_arbitrate(%struct.i2c_client*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_is_after_eq_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
