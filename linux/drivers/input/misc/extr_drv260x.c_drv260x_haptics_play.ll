; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv260x.c_drv260x_haptics_play.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv260x.c_drv260x_haptics_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.drv260x_data = type { i64, i32, i32 }

@DRV260X_LRA_NO_CAL_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @drv260x_haptics_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv260x_haptics_play(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.drv260x_data*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %6, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = call %struct.drv260x_data* @input_get_drvdata(%struct.input_dev* %8)
  store %struct.drv260x_data* %9, %struct.drv260x_data** %7, align 8
  %10 = load i32, i32* @DRV260X_LRA_NO_CAL_MODE, align 4
  %11 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %12 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %14 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %21 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %26 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %46

27:                                               ; preds = %3
  %28 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %29 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %36 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %41 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %45

42:                                               ; preds = %27
  %43 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %44 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %34
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.drv260x_data*, %struct.drv260x_data** %7, align 8
  %48 = getelementptr inbounds %struct.drv260x_data, %struct.drv260x_data* %47, i32 0, i32 1
  %49 = call i32 @schedule_work(i32* %48)
  ret i32 0
}

declare dso_local %struct.drv260x_data* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
