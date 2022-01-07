; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_trigger_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_trigger_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.iio_trigger*, i32, i32 }
%struct.iio_trigger = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.mma8452_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mma8452_trigger_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @mma8452_trigger_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_trigger_setup(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.mma8452_data*, align 8
  %5 = alloca %struct.iio_trigger*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.mma8452_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.mma8452_data* %8, %struct.mma8452_data** %4, align 8
  %9 = load %struct.mma8452_data*, %struct.mma8452_data** %4, align 8
  %10 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.iio_trigger* @devm_iio_trigger_alloc(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  store %struct.iio_trigger* %19, %struct.iio_trigger** %5, align 8
  %20 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %21 = icmp ne %struct.iio_trigger* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %48

25:                                               ; preds = %1
  %26 = load %struct.mma8452_data*, %struct.mma8452_data** %4, align 8
  %27 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %31 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* %29, i32** %32, align 8
  %33 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %34 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %33, i32 0, i32 0
  store i32* @mma8452_trigger_ops, i32** %34, align 8
  %35 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %37 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %35, %struct.iio_dev* %36)
  %38 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %39 = call i32 @iio_trigger_register(%struct.iio_trigger* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %25
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %25
  %45 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 0
  store %struct.iio_trigger* %45, %struct.iio_trigger** %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %42, %22
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_trigger* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
