; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_read_proximity_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_read_proximity_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29018_chip = type { i32 }
%struct.device = type { i32 }

@ISL29018_REG_ADD_COMMAND2 = common dso_local global i32 0, align 4
@ISL29018_CMD2_SCHEME_MASK = common dso_local global i32 0, align 4
@ISL29018_CMD2_SCHEME_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error in setting operating mode\0A\00", align 1
@ISL29018_CMD1_OPMODE_PROX_ONCE = common dso_local global i32 0, align 4
@ISL29018_CMD1_OPMODE_IR_ONCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29018_chip*, i32, i32*)* @isl29018_read_proximity_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29018_read_proximity_ir(%struct.isl29018_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isl29018_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.isl29018_chip* %0, %struct.isl29018_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %12 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %13 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device* @regmap_get_device(i32 %14)
  store %struct.device* %15, %struct.device** %11, align 8
  %16 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %17 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ISL29018_REG_ADD_COMMAND2, align 4
  %20 = load i32, i32* @ISL29018_CMD2_SCHEME_MASK, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ISL29018_CMD2_SCHEME_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.device*, %struct.device** %11, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %65

31:                                               ; preds = %3
  %32 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %33 = load i32, i32* @ISL29018_CMD1_OPMODE_PROX_ONCE, align 4
  %34 = call i32 @isl29018_read_sensor_input(%struct.isl29018_chip* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %65

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %65

45:                                               ; preds = %39
  %46 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %47 = load i32, i32* @ISL29018_CMD1_OPMODE_IR_ONCE, align 4
  %48 = call i32 @isl29018_read_sensor_input(%struct.isl29018_chip* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %65

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32*, i32** %7, align 8
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %57
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %51, %42, %37, %27
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @isl29018_read_sensor_input(%struct.isl29018_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
