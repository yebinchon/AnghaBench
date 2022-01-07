; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_i2c_davinci_calc_clk_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_i2c_davinci_calc_clk_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_i2c_dev = type { %struct.TYPE_2__*, i32, %struct.davinci_i2c_platform_data* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.davinci_i2c_platform_data = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ti,keystone-i2c\00", align 1
@DAVINCI_I2C_PSC_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_CLKH_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_CLKL_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"input_clock = %d, CLK = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_i2c_dev*)* @i2c_davinci_calc_clk_dividers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_davinci_calc_clk_dividers(%struct.davinci_i2c_dev* %0) #0 {
  %2 = alloca %struct.davinci_i2c_dev*, align 8
  %3 = alloca %struct.davinci_i2c_platform_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  store %struct.davinci_i2c_dev* %0, %struct.davinci_i2c_dev** %2, align 8
  %11 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %12 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %11, i32 0, i32 2
  %13 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %12, align 8
  store %struct.davinci_i2c_platform_data* %13, %struct.davinci_i2c_platform_data** %3, align 8
  %14 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %15 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_get_rate(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %19 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sdiv i32 %23, 12000000
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = sdiv i32 %26, %28
  %30 = icmp sgt i32 %29, 12000000
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %1
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 7, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 5, %37 ], [ %40, %38 ]
  store i32 %42, i32* %6, align 4
  %43 = load %struct.device_node*, %struct.device_node** %10, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.device_node*, %struct.device_node** %10, align 8
  %47 = call i64 @of_device_is_compatible(%struct.device_node* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 6, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %45, %41
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  %54 = sdiv i32 %51, %53
  %55 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %3, align 8
  %56 = getelementptr inbounds %struct.davinci_i2c_platform_data, %struct.davinci_i2c_platform_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 1000
  %59 = sdiv i32 %54, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  %63 = sdiv i32 %60, %62
  %64 = load i32, i32* %5, align 4
  %65 = sdiv i32 %63, %64
  %66 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %3, align 8
  %67 = getelementptr inbounds %struct.davinci_i2c_platform_data, %struct.davinci_i2c_platform_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 1000
  %70 = icmp sgt i32 %65, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %50
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %50
  %75 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %3, align 8
  %76 = getelementptr inbounds %struct.davinci_i2c_platform_data, %struct.davinci_i2c_platform_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 100
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = shl i32 %80, 1
  %82 = sdiv i32 %81, 3
  store i32 %82, i32* %8, align 4
  br label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %106

101:                                              ; preds = %86
  store i32 1, i32* %7, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = shl i32 %103, 1
  %105 = sub nsw i32 %102, %104
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %101, %92
  %107 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %108 = load i32, i32* @DAVINCI_I2C_PSC_REG, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %107, i32 %108, i32 %109)
  %111 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %112 = load i32, i32* @DAVINCI_I2C_CLKH_REG, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %111, i32 %112, i32 %113)
  %115 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %116 = load i32, i32* @DAVINCI_I2C_CLKL_REG, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %115, i32 %116, i32 %117)
  %119 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %120 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @dev_dbg(%struct.TYPE_2__* %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %123)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
