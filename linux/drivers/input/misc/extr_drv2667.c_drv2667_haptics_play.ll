; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv2667.c_drv2667_haptics_play.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv2667.c_drv2667_haptics_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ff_effect = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.drv2667_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @drv2667_haptics_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv2667_haptics_play(%struct.input_dev* %0, i8* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.drv2667_data*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %6, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = call %struct.drv2667_data* @input_get_drvdata(%struct.input_dev* %8)
  store %struct.drv2667_data* %9, %struct.drv2667_data** %7, align 8
  %10 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %11 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %18 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.drv2667_data*, %struct.drv2667_data** %7, align 8
  %23 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %43

24:                                               ; preds = %3
  %25 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %26 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %33 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.drv2667_data*, %struct.drv2667_data** %7, align 8
  %38 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %42

39:                                               ; preds = %24
  %40 = load %struct.drv2667_data*, %struct.drv2667_data** %7, align 8
  %41 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42, %16
  %44 = load %struct.drv2667_data*, %struct.drv2667_data** %7, align 8
  %45 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %44, i32 0, i32 1
  %46 = call i32 @schedule_work(i32* %45)
  ret i32 0
}

declare dso_local %struct.drv2667_data* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
