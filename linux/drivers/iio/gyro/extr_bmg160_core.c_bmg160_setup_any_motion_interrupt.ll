; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_setup_any_motion_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_setup_any_motion_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmg160_data = type { i32, i32, i32 }
%struct.device = type { i32 }

@BMG160_REG_INT_MAP_0 = common dso_local global i32 0, align 4
@BMG160_INT_MAP_0_BIT_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error updating bits reg_int_map0\0A\00", align 1
@BMG160_REG_SLOPE_THRES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error writing reg_slope_thres\0A\00", align 1
@BMG160_REG_MOTION_INTR = common dso_local global i32 0, align 4
@BMG160_INT_MOTION_X = common dso_local global i32 0, align 4
@BMG160_INT_MOTION_Y = common dso_local global i32 0, align 4
@BMG160_INT_MOTION_Z = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Error writing reg_motion_intr\0A\00", align 1
@BMG160_REG_INT_RST_LATCH = common dso_local global i32 0, align 4
@BMG160_INT_MODE_LATCH_INT = common dso_local global i32 0, align 4
@BMG160_INT_MODE_LATCH_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Error writing reg_rst_latch\0A\00", align 1
@BMG160_REG_INT_EN_0 = common dso_local global i32 0, align 4
@BMG160_DATA_ENABLE_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Error writing reg_int_en0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmg160_data*, i32)* @bmg160_setup_any_motion_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_setup_any_motion_interrupt(%struct.bmg160_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmg160_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.bmg160_data* %0, %struct.bmg160_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %9 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.device* @regmap_get_device(i32 %10)
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %13 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BMG160_REG_INT_MAP_0, align 4
  %16 = load i32, i32* @BMG160_INT_MAP_0_BIT_ANY, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @BMG160_INT_MAP_0_BIT_ANY, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %108

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %31
  %35 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %36 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BMG160_REG_SLOPE_THRES, align 4
  %39 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %40 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_write(i32 %37, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %108

49:                                               ; preds = %34
  %50 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %51 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BMG160_REG_MOTION_INTR, align 4
  %54 = load i32, i32* @BMG160_INT_MOTION_X, align 4
  %55 = load i32, i32* @BMG160_INT_MOTION_Y, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @BMG160_INT_MOTION_Z, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @regmap_write(i32 %52, i32 %53, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %108

66:                                               ; preds = %49
  %67 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %68 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %66
  %72 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %73 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BMG160_REG_INT_RST_LATCH, align 4
  %76 = load i32, i32* @BMG160_INT_MODE_LATCH_INT, align 4
  %77 = load i32, i32* @BMG160_INT_MODE_LATCH_RESET, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @regmap_write(i32 %74, i32 %75, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %108

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %66
  %88 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %89 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BMG160_REG_INT_EN_0, align 4
  %92 = load i32, i32* @BMG160_DATA_ENABLE_INT, align 4
  %93 = call i32 @regmap_write(i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %7, align 4
  br label %100

94:                                               ; preds = %31
  %95 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %96 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BMG160_REG_INT_EN_0, align 4
  %99 = call i32 @regmap_write(i32 %97, i32 %98, i32 0)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %94, %87
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %108

107:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %103, %82, %62, %45, %27
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
