; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad9523_state = type { i32 }

@AD9523_R1B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32, i32*)* @ad9523_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9523_reg_access(%struct.iio_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ad9523_state*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.ad9523_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.ad9523_state* %12, %struct.ad9523_state** %9, align 8
  %13 = load %struct.ad9523_state*, %struct.ad9523_state** %9, align 8
  %14 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @AD9523_R1B, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ad9523_write(%struct.iio_dev* %19, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %26 = call i32 @ad9523_io_update(%struct.iio_dev* %25)
  br label %39

27:                                               ; preds = %4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @AD9523_R1B, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ad9523_read(%struct.iio_dev* %28, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %18
  br label %40

40:                                               ; preds = %39, %35
  %41 = load %struct.ad9523_state*, %struct.ad9523_state** %9, align 8
  %42 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %10, align 4
  ret i32 %44
}

declare dso_local %struct.ad9523_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad9523_write(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @ad9523_io_update(%struct.iio_dev*) #1

declare dso_local i32 @ad9523_read(%struct.iio_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
