; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5758_state = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ad5758_range = type opaque

@.str = private unnamed_addr constant [24 x i8] c"adi,dc-dc-ilim-microamp\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Missing \22dc-dc-ilim-microamp\22 property\0A\00", align 1
@ad5758_dc_dc_ilim = common dso_local global i32* null, align 8
@cmpfunc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"dc-dc-ilim out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"adi,dc-dc-mode\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Missing \22dc-dc-mode\22 property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AD5758_DCDC_MODE_DPC_VOLTAGE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"adi,range-microvolt\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Missing \22range-microvolt\22 property\0A\00", align 1
@ad5758_voltage_range = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"adi,range-microamp\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Missing \22range-microamp\22 property\0A\00", align 1
@ad5758_current_range = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"range invalid\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"adi,slew-time-us\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Missing \22slew-time-us\22 property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5758_state*)* @ad5758_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_parse_dt(%struct.ad5758_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad5758_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad5758_range*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ad5758_state* %0, %struct.ad5758_state** %3, align 8
  %10 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %11 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %13 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @device_property_read_u32(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %4)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %21 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %50

25:                                               ; preds = %1
  %26 = load i32*, i32** @ad5758_dc_dc_ilim, align 8
  %27 = load i32*, i32** @ad5758_dc_dc_ilim, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = load i32, i32* @cmpfunc, align 4
  %30 = call i32* @bsearch(i32* %4, i32* %26, i32 %28, i32 4, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %35 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %49

39:                                               ; preds = %25
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** @ad5758_dc_dc_ilim, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %48 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %39, %33
  br label %50

50:                                               ; preds = %49, %19
  %51 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %52 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %56 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %55, i32 0, i32 1
  %57 = call i32 @device_property_read_u32(i32* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %62 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %165

67:                                               ; preds = %50
  %68 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %69 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ad5758_is_valid_mode(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %165

76:                                               ; preds = %67
  %77 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %78 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* @AD5758_DCDC_MODE_DPC_VOLTAGE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %76
  %84 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %85 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %89 = call i32 @device_property_read_u32_array(i32* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %88, i32 2)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %94 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %93, i32 0, i32 3
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %2, align 4
  br label %165

99:                                               ; preds = %83
  %100 = load i32*, i32** @ad5758_voltage_range, align 8
  %101 = bitcast i32* %100 to %struct.ad5758_range*
  store %struct.ad5758_range* %101, %struct.ad5758_range** %7, align 8
  %102 = load i32*, i32** @ad5758_voltage_range, align 8
  %103 = call i32 @ARRAY_SIZE(i32* %102)
  store i32 %103, i32* %6, align 4
  br label %125

104:                                              ; preds = %76
  %105 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %106 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %105, i32 0, i32 3
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %110 = call i32 @device_property_read_u32_array(i32* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32* %109, i32 2)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %104
  %114 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %115 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %114, i32 0, i32 3
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %2, align 4
  br label %165

120:                                              ; preds = %104
  %121 = load i32*, i32** @ad5758_current_range, align 8
  %122 = bitcast i32* %121 to %struct.ad5758_range*
  store %struct.ad5758_range* %122, %struct.ad5758_range** %7, align 8
  %123 = load i32*, i32** @ad5758_current_range, align 8
  %124 = call i32 @ARRAY_SIZE(i32* %123)
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %120, %99
  %126 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %127 = load %struct.ad5758_range*, %struct.ad5758_range** %7, align 8
  %128 = bitcast %struct.ad5758_range* %127 to i32*
  %129 = load i32, i32* %6, align 4
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ad5758_find_out_range(%struct.ad5758_state* %126, i32* %128, i32 %129, i32 %131, i32 %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %125
  %138 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %139 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %138, i32 0, i32 3
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %2, align 4
  br label %165

144:                                              ; preds = %125
  %145 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %146 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %145, i32 0, i32 3
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = call i32 @device_property_read_u32(i32* %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32* %4)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %144
  %153 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %154 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %153, i32 0, i32 3
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = call i32 @dev_dbg(i32* %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %158 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %159 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %158, i32 0, i32 2
  store i32 0, i32* %159, align 8
  br label %164

160:                                              ; preds = %144
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %163 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %152
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %137, %113, %92, %73, %60
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32* @bsearch(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ad5758_is_valid_mode(i32) #1

declare dso_local i32 @device_property_read_u32_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ad5758_find_out_range(%struct.ad5758_state*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
