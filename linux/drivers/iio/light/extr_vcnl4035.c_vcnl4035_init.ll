; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcnl4035_data = type { i32, i32, i8*, %struct.TYPE_2__*, i32, i8* }
%struct.TYPE_2__ = type { i32 }

@VCNL4035_DEV_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read DEV_ID register\0A\00", align 1
@VCNL4035_DEV_ID_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Wrong id, got %x, expected %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VCNL4035_MODE_ALS_ENABLE = common dso_local global i32 0, align 4
@VCNL4035_ALS_CONF = common dso_local global i32 0, align 4
@VCNL4035_MODE_ALS_WHITE_CHAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"set white channel enable %d\0A\00", align 1
@VCNL4035_ALS_IT_MASK = common dso_local global i32 0, align 4
@VCNL4035_ALS_IT_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"set default ALS IT returned %d\0A\00", align 1
@VCNL4035_ALS_PERS_MASK = common dso_local global i32 0, align 4
@VCNL4035_ALS_PERS_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"set default PERS returned %d\0A\00", align 1
@VCNL4035_ALS_THDH = common dso_local global i32 0, align 4
@VCNL4035_ALS_THDH_DEFAULT = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"set default THDH returned %d\0A\00", align 1
@VCNL4035_ALS_THDL = common dso_local global i32 0, align 4
@VCNL4035_ALS_THDL_DEFAULT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"set default THDL returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcnl4035_data*)* @vcnl4035_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4035_init(%struct.vcnl4035_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcnl4035_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vcnl4035_data* %0, %struct.vcnl4035_data** %3, align 8
  %6 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %7 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @VCNL4035_DEV_ID, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %15 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %142

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @VCNL4035_DEV_ID_VAL, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %26 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @VCNL4035_DEV_ID_VAL, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %142

34:                                               ; preds = %20
  %35 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %36 = load i32, i32* @VCNL4035_MODE_ALS_ENABLE, align 4
  %37 = call i32 @vcnl4035_set_als_power_state(%struct.vcnl4035_data* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %142

42:                                               ; preds = %34
  %43 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %44 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @VCNL4035_ALS_CONF, align 4
  %47 = load i32, i32* @VCNL4035_MODE_ALS_WHITE_CHAN, align 4
  %48 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 1)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %53 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %142

59:                                               ; preds = %42
  %60 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %61 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @VCNL4035_ALS_CONF, align 4
  %64 = load i32, i32* @VCNL4035_ALS_IT_MASK, align 4
  %65 = load i32, i32* @VCNL4035_ALS_IT_DEFAULT, align 4
  %66 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %71 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %142

77:                                               ; preds = %59
  %78 = load i32, i32* @VCNL4035_ALS_IT_DEFAULT, align 4
  %79 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %80 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %82 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @VCNL4035_ALS_CONF, align 4
  %85 = load i32, i32* @VCNL4035_ALS_PERS_MASK, align 4
  %86 = load i32, i32* @VCNL4035_ALS_PERS_DEFAULT, align 4
  %87 = call i32 @regmap_update_bits(i32 %83, i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %77
  %91 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %92 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i32*, i8*, ...) @dev_err(i32* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %142

98:                                               ; preds = %77
  %99 = load i32, i32* @VCNL4035_ALS_PERS_DEFAULT, align 4
  %100 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %101 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %103 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @VCNL4035_ALS_THDH, align 4
  %106 = load i8*, i8** @VCNL4035_ALS_THDH_DEFAULT, align 8
  %107 = call i32 @regmap_write(i32 %104, i32 %105, i8* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %98
  %111 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %112 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %4, align 4
  %116 = call i32 (i32*, i8*, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %142

118:                                              ; preds = %98
  %119 = load i8*, i8** @VCNL4035_ALS_THDH_DEFAULT, align 8
  %120 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %121 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %123 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @VCNL4035_ALS_THDL, align 4
  %126 = load i8*, i8** @VCNL4035_ALS_THDL_DEFAULT, align 8
  %127 = call i32 @regmap_write(i32 %124, i32 %125, i8* %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %118
  %131 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %132 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %131, i32 0, i32 3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %4, align 4
  %136 = call i32 (i32*, i8*, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %4, align 4
  store i32 %137, i32* %2, align 4
  br label %142

138:                                              ; preds = %118
  %139 = load i8*, i8** @VCNL4035_ALS_THDL_DEFAULT, align 8
  %140 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %3, align 8
  %141 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %130, %110, %90, %69, %51, %40, %24, %13
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @vcnl4035_set_als_power_state(%struct.vcnl4035_data*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
