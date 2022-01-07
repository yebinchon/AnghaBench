; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3532.c_lm3532_parse_als.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3532.c_lm3532_parse_als.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3532_data = type { %struct.lm3532_als_data*, %struct.TYPE_2__*, i32 }
%struct.lm3532_als_data = type { i32, i32, i64, i64, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ti,als-vmin\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ti,als-vmax\00", align 1
@LM3532_ALS_WINDOW_mV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ti,als1-imp-sel\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ti,als2-imp-sel\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ti,als-avrg-time-us\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ti,als-input-mode\00", align 1
@LM3532_BL_MODE_ALS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3532_data*)* @lm3532_parse_als to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3532_parse_als(%struct.lm3532_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3532_data*, align 8
  %4 = alloca %struct.lm3532_als_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lm3532_data* %0, %struct.lm3532_data** %3, align 8
  %8 = load %struct.lm3532_data*, %struct.lm3532_data** %3, align 8
  %9 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lm3532_als_data* @devm_kzalloc(i32 %10, i32 40, i32 %11)
  store %struct.lm3532_als_data* %12, %struct.lm3532_als_data** %4, align 8
  %13 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %14 = icmp eq %struct.lm3532_als_data* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %133

18:                                               ; preds = %1
  %19 = load %struct.lm3532_data*, %struct.lm3532_data** %3, align 8
  %20 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %24 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %23, i32 0, i32 0
  %25 = call i32 @device_property_read_u32(i32* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %30 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %18
  %32 = load %struct.lm3532_data*, %struct.lm3532_data** %3, align 8
  %33 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %37 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %36, i32 0, i32 1
  %38 = call i32 @device_property_read_u32(i32* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i64, i64* @LM3532_ALS_WINDOW_mV, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %45 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %31
  %47 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %48 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @LM3532_ALS_WINDOW_mV, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %133

57:                                               ; preds = %46
  %58 = load %struct.lm3532_data*, %struct.lm3532_data** %3, align 8
  %59 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @device_property_read_u32(i32* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %67 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %66, i32 0, i32 5
  store i8* null, i8** %67, align 8
  br label %73

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = call i8* @lm3532_get_als_imp_index(i32 %69)
  %71 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %72 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %68, %65
  %74 = load %struct.lm3532_data*, %struct.lm3532_data** %3, align 8
  %75 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @device_property_read_u32(i32* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %83 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %82, i32 0, i32 4
  store i8* null, i8** %83, align 8
  br label %89

84:                                               ; preds = %73
  %85 = load i32, i32* %6, align 4
  %86 = call i8* @lm3532_get_als_imp_index(i32 %85)
  %87 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %88 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %84, %81
  %90 = load %struct.lm3532_data*, %struct.lm3532_data** %3, align 8
  %91 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @device_property_read_u32(i32* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %99 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  br label %105

100:                                              ; preds = %89
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @lm3532_get_als_avg_index(i32 %101)
  %103 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %104 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %100, %97
  %106 = load %struct.lm3532_data*, %struct.lm3532_data** %3, align 8
  %107 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %111 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %110, i32 0, i32 2
  %112 = call i32 @device_property_read_u8(i32* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %117 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %115, %105
  %119 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %120 = getelementptr inbounds %struct.lm3532_als_data, %struct.lm3532_als_data* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @LM3532_BL_MODE_ALS, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %133

128:                                              ; preds = %118
  %129 = load %struct.lm3532_als_data*, %struct.lm3532_als_data** %4, align 8
  %130 = load %struct.lm3532_data*, %struct.lm3532_data** %3, align 8
  %131 = getelementptr inbounds %struct.lm3532_data, %struct.lm3532_data* %130, i32 0, i32 0
  store %struct.lm3532_als_data* %129, %struct.lm3532_als_data** %131, align 8
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %128, %124, %53, %15
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.lm3532_als_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local i8* @lm3532_get_als_imp_index(i32) #1

declare dso_local i64 @lm3532_get_als_avg_index(i32) #1

declare dso_local i32 @device_property_read_u8(i32*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
