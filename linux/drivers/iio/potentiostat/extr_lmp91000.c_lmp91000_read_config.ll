; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiostat/extr_lmp91000.c_lmp91000_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiostat/extr_lmp91000.c_lmp91000_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmp91000_data = type { i32, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ti,tia-gain-ohm\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ti,external-tia-resistor\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"no ti,tia-gain-ohm defined and external resistor not specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@lmp91000_tia_gain = common dso_local global i32* null, align 8
@LMP91000_REG_TIACN_GAIN_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid ti,tia-gain-ohm %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ti,rload-ohm\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"no ti,rload-ohm defined, default to %d\0A\00", align 1
@lmp91000_rload = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid ti,rload-ohm %d\0A\00", align 1
@LMP91000_REG_LOCK = common dso_local global i32 0, align 4
@LMP91000_REG_TIACN = common dso_local global i32 0, align 4
@LMP91000_REG_REFCN = common dso_local global i32 0, align 4
@LMP91000_REG_REFCN_EXT_REF = common dso_local global i32 0, align 4
@LMP91000_REG_REFCN_50_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lmp91000_data*)* @lmp91000_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmp91000_read_config(%struct.lmp91000_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lmp91000_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lmp91000_data* %0, %struct.lmp91000_data** %3, align 8
  %10 = load %struct.lmp91000_data*, %struct.lmp91000_data** %3, align 8
  %11 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call i32 @of_property_read_bool(%struct.device_node* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %2, align 4
  br label %127

28:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %50, %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** @lmp91000_tia_gain, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i32*, i32** @lmp91000_tia_gain, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @LMP91000_REG_TIACN_GAIN_SHIFT, align 4
  %48 = shl i32 %46, %47
  store i32 %48, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %32

53:                                               ; preds = %45, %32
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %127

61:                                               ; preds = %53
  %62 = load %struct.device_node*, %struct.device_node** %5, align 8
  %63 = call i32 @of_property_read_u32(%struct.device_node* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  store i32 100, i32* %7, align 4
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_info(%struct.device* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %91, %70
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** @lmp91000_rload, align 8
  %76 = call i32 @ARRAY_SIZE(i32* %75)
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load i32*, i32** @lmp91000_rload, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %94

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %73

94:                                               ; preds = %86, %73
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %2, align 4
  br label %127

102:                                              ; preds = %94
  %103 = load %struct.lmp91000_data*, %struct.lmp91000_data** %3, align 8
  %104 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @LMP91000_REG_LOCK, align 4
  %107 = call i32 @regmap_write(i32 %105, i32 %106, i32 0)
  %108 = load %struct.lmp91000_data*, %struct.lmp91000_data** %3, align 8
  %109 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @LMP91000_REG_TIACN, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @regmap_write(i32 %110, i32 %111, i32 %112)
  %114 = load %struct.lmp91000_data*, %struct.lmp91000_data** %3, align 8
  %115 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @LMP91000_REG_REFCN, align 4
  %118 = load i32, i32* @LMP91000_REG_REFCN_EXT_REF, align 4
  %119 = load i32, i32* @LMP91000_REG_REFCN_50_ZERO, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @regmap_write(i32 %116, i32 %117, i32 %120)
  %122 = load %struct.lmp91000_data*, %struct.lmp91000_data** %3, align 8
  %123 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @LMP91000_REG_LOCK, align 4
  %126 = call i32 @regmap_write(i32 %124, i32 %125, i32 1)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %102, %97, %56, %24
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
