; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_gpadc = type { i32, i32, i32, i32, i32 }

@PALMAS_GPADC_RT_CTRL_EXTEND_DELAY_SHIFT = common dso_local global i32 0, align 4
@PALMAS_GPADC_BASE = common dso_local global i32 0, align 4
@PALMAS_GPADC_RT_CTRL = common dso_local global i32 0, align 4
@PALMAS_GPADC_RT_CTRL_EXTEND_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RT_CTRL update failed: %d\0A\00", align 1
@PALMAS_GPADC_CTRL1_CURRENT_SRC_CH0_MASK = common dso_local global i32 0, align 4
@PALMAS_GPADC_CTRL1_CURRENT_SRC_CH3_MASK = common dso_local global i32 0, align 4
@PALMAS_GPADC_CTRL1_GPADC_FORCE = common dso_local global i32 0, align 4
@PALMAS_GPADC_CTRL1_CURRENT_SRC_CH0_SHIFT = common dso_local global i32 0, align 4
@PALMAS_GPADC_CTRL1_CURRENT_SRC_CH3_SHIFT = common dso_local global i32 0, align 4
@PALMAS_GPADC_CTRL1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to update current setting: %d\0A\00", align 1
@PALMAS_GPADC_SW_SELECT_SW_CONV0_SEL_MASK = common dso_local global i32 0, align 4
@PALMAS_GPADC_SW_SELECT_SW_CONV_EN = common dso_local global i32 0, align 4
@PALMAS_GPADC_SW_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"SW_SELECT update failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SW_SELECT write failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"CTRL1 update failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas_gpadc*, i32, i32)* @palmas_gpadc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_gpadc_enable(%struct.palmas_gpadc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.palmas_gpadc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.palmas_gpadc* %0, %struct.palmas_gpadc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %99

13:                                               ; preds = %3
  %14 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %15 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PALMAS_GPADC_RT_CTRL_EXTEND_DELAY_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %20 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PALMAS_GPADC_BASE, align 4
  %23 = load i32, i32* @PALMAS_GPADC_RT_CTRL, align 4
  %24 = load i32, i32* @PALMAS_GPADC_RT_CTRL_EXTEND_DELAY, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @palmas_update_bits(i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %13
  %30 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %31 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %134

36:                                               ; preds = %13
  %37 = load i32, i32* @PALMAS_GPADC_CTRL1_CURRENT_SRC_CH0_MASK, align 4
  %38 = load i32, i32* @PALMAS_GPADC_CTRL1_CURRENT_SRC_CH3_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PALMAS_GPADC_CTRL1_GPADC_FORCE, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %43 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PALMAS_GPADC_CTRL1_CURRENT_SRC_CH0_SHIFT, align 4
  %46 = shl i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %48 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PALMAS_GPADC_CTRL1_CURRENT_SRC_CH3_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @PALMAS_GPADC_CTRL1_GPADC_FORCE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %58 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PALMAS_GPADC_BASE, align 4
  %61 = load i32, i32* @PALMAS_GPADC_CTRL1, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @palmas_update_bits(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %36
  %68 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %69 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %134

74:                                               ; preds = %36
  %75 = load i32, i32* @PALMAS_GPADC_SW_SELECT_SW_CONV0_SEL_MASK, align 4
  %76 = load i32, i32* @PALMAS_GPADC_SW_SELECT_SW_CONV_EN, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PALMAS_GPADC_SW_SELECT_SW_CONV_EN, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %9, align 4
  %81 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %82 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PALMAS_GPADC_BASE, align 4
  %85 = load i32, i32* @PALMAS_GPADC_SW_SELECT, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @palmas_update_bits(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %74
  %92 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %93 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %134

98:                                               ; preds = %74
  br label %132

99:                                               ; preds = %3
  %100 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %101 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PALMAS_GPADC_BASE, align 4
  %104 = load i32, i32* @PALMAS_GPADC_SW_SELECT, align 4
  %105 = call i32 @palmas_write(i32 %102, i32 %103, i32 %104, i32 0)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %110 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %108, %99
  %115 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %116 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PALMAS_GPADC_BASE, align 4
  %119 = load i32, i32* @PALMAS_GPADC_CTRL1, align 4
  %120 = load i32, i32* @PALMAS_GPADC_CTRL1_GPADC_FORCE, align 4
  %121 = call i32 @palmas_update_bits(i32 %117, i32 %118, i32 %119, i32 %120, i32 0)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %114
  %125 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %5, align 8
  %126 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %4, align 4
  br label %134

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %131, %98
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %124, %91, %67, %29
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @palmas_update_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @palmas_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
