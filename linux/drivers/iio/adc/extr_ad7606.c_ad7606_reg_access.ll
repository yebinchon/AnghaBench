; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606.c_ad7606_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606.c_ad7606_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7606_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ad7606_state*, i32)*, i32 (%struct.ad7606_state*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32, i32*)* @ad7606_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7606_reg_access(%struct.iio_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ad7606_state*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.ad7606_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.ad7606_state* %12, %struct.ad7606_state** %9, align 8
  %13 = load %struct.ad7606_state*, %struct.ad7606_state** %9, align 8
  %14 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.ad7606_state*, %struct.ad7606_state** %9, align 8
  %20 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ad7606_state*, i32)*, i32 (%struct.ad7606_state*, i32)** %22, align 8
  %24 = load %struct.ad7606_state*, %struct.ad7606_state** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 %23(%struct.ad7606_state* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %44

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %10, align 4
  br label %43

33:                                               ; preds = %4
  %34 = load %struct.ad7606_state*, %struct.ad7606_state** %9, align 8
  %35 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (%struct.ad7606_state*, i32, i32)*, i32 (%struct.ad7606_state*, i32, i32)** %37, align 8
  %39 = load %struct.ad7606_state*, %struct.ad7606_state** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 %38(%struct.ad7606_state* %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %33, %30
  br label %44

44:                                               ; preds = %43, %29
  %45 = load %struct.ad7606_state*, %struct.ad7606_state** %9, align 8
  %46 = getelementptr inbounds %struct.ad7606_state, %struct.ad7606_state* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local %struct.ad7606_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
