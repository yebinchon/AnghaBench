; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_set_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.bmg160_data = type { i32 }
%struct.device = type { i32 }

@bmg160_samp_freq_table = common dso_local global %struct.TYPE_3__* null, align 8
@BMG160_REG_PMU_BW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error writing reg_pmu_bw\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmg160_data*, i32)* @bmg160_set_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_set_filter(%struct.bmg160_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmg160_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bmg160_data* %0, %struct.bmg160_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %10 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device* @regmap_get_device(i32 %11)
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmg160_samp_freq_table, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmg160_samp_freq_table, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %13

32:                                               ; preds = %27, %13
  %33 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %34 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BMG160_REG_PMU_BW, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmg160_samp_freq_table, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regmap_write(i32 %35, i32 %36, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
