; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.zpa2326_private = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"powered on\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"powered off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.zpa2326_private*)* @zpa2326_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_power_on(%struct.iio_dev* %0, %struct.zpa2326_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.zpa2326_private*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.zpa2326_private* %1, %struct.zpa2326_private** %5, align 8
  %7 = load %struct.zpa2326_private*, %struct.zpa2326_private** %5, align 8
  %8 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @regulator_enable(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.zpa2326_private*, %struct.zpa2326_private** %5, align 8
  %17 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regulator_enable(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %46

23:                                               ; preds = %15
  %24 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %25 = call i32 @zpa2326_dbg(%struct.iio_dev* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %27 = call i32 @zpa2326_enable_device(%struct.iio_dev* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %41

31:                                               ; preds = %23
  %32 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %33 = call i32 @zpa2326_reset_device(%struct.iio_dev* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %54

38:                                               ; preds = %36
  %39 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %40 = call i32 @zpa2326_sleep(%struct.iio_dev* %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.zpa2326_private*, %struct.zpa2326_private** %5, align 8
  %43 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @regulator_disable(i32 %44)
  br label %46

46:                                               ; preds = %41, %22
  %47 = load %struct.zpa2326_private*, %struct.zpa2326_private** %5, align 8
  %48 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regulator_disable(i32 %49)
  %51 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %52 = call i32 @zpa2326_dbg(%struct.iio_dev* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %37, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @zpa2326_dbg(%struct.iio_dev*, i8*) #1

declare dso_local i32 @zpa2326_enable_device(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_reset_device(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_sleep(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
