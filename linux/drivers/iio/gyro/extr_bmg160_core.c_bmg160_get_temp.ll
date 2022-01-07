; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmg160_data = type { i32, i32 }
%struct.device = type { i32 }

@BMG160_REG_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error reading reg_temp\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmg160_data*, i32*)* @bmg160_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_get_temp(%struct.bmg160_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmg160_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bmg160_data* %0, %struct.bmg160_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %10 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device* @regmap_get_device(i32 %11)
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %14 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %17 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %16, i32 1)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %22 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %27 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BMG160_REG_TEMP, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %8)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %37 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %36, i32 0)
  %38 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %39 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %57

42:                                               ; preds = %25
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @sign_extend32(i32 %43, i32 7)
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %47 = call i32 @bmg160_set_power_state(%struct.bmg160_data* %46, i32 0)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %49 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %42
  %56 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %53, %33, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmg160_set_power_state(%struct.bmg160_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
