; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_trigger_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_trigger_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.kmx61_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iio_dev = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s-%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@kmx61_trigger_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_trigger* (%struct.kmx61_data*, %struct.iio_dev*, i8*)* @kmx61_trigger_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_trigger* @kmx61_trigger_setup(%struct.kmx61_data* %0, %struct.iio_dev* %1, i8* %2) #0 {
  %4 = alloca %struct.iio_trigger*, align 8
  %5 = alloca %struct.kmx61_data*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_trigger*, align 8
  %9 = alloca i32, align 4
  store %struct.kmx61_data* %0, %struct.kmx61_data** %5, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %11 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.iio_trigger* @devm_iio_trigger_alloc(i32* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %17, i32 %20)
  store %struct.iio_trigger* %21, %struct.iio_trigger** %8, align 8
  %22 = load %struct.iio_trigger*, %struct.iio_trigger** %8, align 8
  %23 = icmp ne %struct.iio_trigger* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.iio_trigger* @ERR_PTR(i32 %26)
  store %struct.iio_trigger* %27, %struct.iio_trigger** %4, align 8
  br label %50

28:                                               ; preds = %3
  %29 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %30 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.iio_trigger*, %struct.iio_trigger** %8, align 8
  %34 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.iio_trigger*, %struct.iio_trigger** %8, align 8
  %37 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %36, i32 0, i32 0
  store i32* @kmx61_trigger_ops, i32** %37, align 8
  %38 = load %struct.iio_trigger*, %struct.iio_trigger** %8, align 8
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %38, %struct.iio_dev* %39)
  %41 = load %struct.iio_trigger*, %struct.iio_trigger** %8, align 8
  %42 = call i32 @iio_trigger_register(%struct.iio_trigger* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.iio_trigger* @ERR_PTR(i32 %46)
  store %struct.iio_trigger* %47, %struct.iio_trigger** %4, align 8
  br label %50

48:                                               ; preds = %28
  %49 = load %struct.iio_trigger*, %struct.iio_trigger** %8, align 8
  store %struct.iio_trigger* %49, %struct.iio_trigger** %4, align 8
  br label %50

50:                                               ; preds = %48, %45, %24
  %51 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  ret %struct.iio_trigger* %51
}

declare dso_local %struct.iio_trigger* @devm_iio_trigger_alloc(i32*, i8*, i32, i8*, i32) #1

declare dso_local %struct.iio_trigger* @ERR_PTR(i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
