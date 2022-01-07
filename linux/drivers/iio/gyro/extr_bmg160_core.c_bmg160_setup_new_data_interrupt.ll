; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_setup_new_data_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_setup_new_data_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmg160_data = type { i32 }
%struct.device = type { i32 }

@BMG160_REG_INT_MAP_1 = common dso_local global i32 0, align 4
@BMG160_INT_MAP_1_BIT_NEW_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error updating bits in reg_int_map1\0A\00", align 1
@BMG160_REG_INT_RST_LATCH = common dso_local global i32 0, align 4
@BMG160_INT_MODE_NON_LATCH_INT = common dso_local global i32 0, align 4
@BMG160_INT_MODE_LATCH_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error writing reg_rst_latch\0A\00", align 1
@BMG160_REG_INT_EN_0 = common dso_local global i32 0, align 4
@BMG160_DATA_ENABLE_INT = common dso_local global i32 0, align 4
@BMG160_INT_MODE_LATCH_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Error writing reg_int_en0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmg160_data*, i32)* @bmg160_setup_new_data_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_setup_new_data_interrupt(%struct.bmg160_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmg160_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.bmg160_data* %0, %struct.bmg160_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %9 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.device* @regmap_get_device(i32 %10)
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %13 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BMG160_REG_INT_MAP_1, align 4
  %16 = load i32, i32* @BMG160_INT_MAP_1_BIT_NEW_DATA, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @BMG160_INT_MAP_1_BIT_NEW_DATA, align 4
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
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %85

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %36 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BMG160_REG_INT_RST_LATCH, align 4
  %39 = load i32, i32* @BMG160_INT_MODE_NON_LATCH_INT, align 4
  %40 = load i32, i32* @BMG160_INT_MODE_LATCH_RESET, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @regmap_write(i32 %37, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %85

49:                                               ; preds = %34
  %50 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %51 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BMG160_REG_INT_EN_0, align 4
  %54 = load i32, i32* @BMG160_DATA_ENABLE_INT, align 4
  %55 = call i32 @regmap_write(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %77

56:                                               ; preds = %31
  %57 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %58 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BMG160_REG_INT_RST_LATCH, align 4
  %61 = load i32, i32* @BMG160_INT_MODE_LATCH_INT, align 4
  %62 = load i32, i32* @BMG160_INT_MODE_LATCH_RESET, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @regmap_write(i32 %59, i32 %60, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %85

71:                                               ; preds = %56
  %72 = load %struct.bmg160_data*, %struct.bmg160_data** %4, align 8
  %73 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BMG160_REG_INT_EN_0, align 4
  %76 = call i32 @regmap_write(i32 %74, i32 %75, i32 0)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %71, %49
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %80, %67, %45, %27
  %86 = load i32, i32* %3, align 4
  ret i32 %86
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
