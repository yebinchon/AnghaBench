; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_3db_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_3db_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SCA3000_REG_MODE_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_MODE_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sca3000_state*, i32*)* @sca3000_read_3db_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_read_3db_freq(%struct.sca3000_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sca3000_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.sca3000_state* %0, %struct.sca3000_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %8 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %9 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %7, i32 %8, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load i32, i32* @SCA3000_REG_MODE_MODE_MASK, align 4
  %16 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %17 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %15
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %23 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %54 [
    i32 130, label %27
    i32 131, label %35
    i32 129, label %38
    i32 128, label %46
  ]

27:                                               ; preds = %14
  %28 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %29 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %14
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %57

38:                                               ; preds = %14
  %39 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %40 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %14
  %47 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %48 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %14
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %46, %38, %35, %27, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
