; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.adf4350_state = type { i32*, i32* }

@ADF4350_REG5 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32, i32*)* @adf4350_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4350_reg_access(%struct.iio_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.adf4350_state*, align 8
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.adf4350_state* @iio_priv(%struct.iio_dev* %12)
  store %struct.adf4350_state* %13, %struct.adf4350_state** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ADF4350_REG5, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %57

20:                                               ; preds = %4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %22 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @BIT(i32 0)
  %29 = call i32 @BIT(i32 1)
  %30 = or i32 %28, %29
  %31 = call i32 @BIT(i32 2)
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %27, %33
  %35 = load %struct.adf4350_state*, %struct.adf4350_state** %10, align 8
  %36 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.adf4350_state*, %struct.adf4350_state** %10, align 8
  %42 = call i32 @adf4350_sync_config(%struct.adf4350_state* %41)
  store i32 %42, i32* %11, align 4
  br label %52

43:                                               ; preds = %20
  %44 = load %struct.adf4350_state*, %struct.adf4350_state** %10, align 8
  %45 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %43, %26
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.adf4350_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @adf4350_sync_config(%struct.adf4350_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
