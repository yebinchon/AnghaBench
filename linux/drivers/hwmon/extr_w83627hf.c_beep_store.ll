; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_beep_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_beep_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS1 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS2 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @beep_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beep_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83627hf_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.w83627hf_data* %16, %struct.w83627hf_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 10, i64* %13)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %138

27:                                               ; preds = %4
  %28 = load i64, i64* %13, align 8
  %29 = and i64 %28, -2
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %138

34:                                               ; preds = %27
  %35 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %36 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %44 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %55

47:                                               ; preds = %34
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %52 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %40
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %60 = load i32, i32* @W83781D_REG_BEEP_INTS1, align 4
  %61 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  br label %75

69:                                               ; preds = %58
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 1, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %77 = load i32, i32* @W83781D_REG_BEEP_INTS1, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %76, i32 %77, i32 %78)
  br label %132

80:                                               ; preds = %55
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 16
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %85 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %86 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i64, i64* %13, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %90, 8
  %92 = shl i32 1, %91
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %102

95:                                               ; preds = %83
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %96, 8
  %98 = shl i32 1, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %95, %89
  %103 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %104 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %103, i32 %104, i32 %105)
  br label %131

107:                                              ; preds = %80
  %108 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %109 = load i32, i32* @W83781D_REG_BEEP_INTS3, align 4
  %110 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %108, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i64, i64* %13, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* %11, align 4
  %115 = sub nsw i32 %114, 16
  %116 = shl i32 1, %115
  %117 = load i32, i32* %12, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %12, align 4
  br label %126

119:                                              ; preds = %107
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %120, 16
  %122 = shl i32 1, %121
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %12, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %119, %113
  %127 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %128 = load i32, i32* @W83781D_REG_BEEP_INTS3, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %102
  br label %132

132:                                              ; preds = %131, %75
  %133 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %134 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i64, i64* %9, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %132, %31, %25
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
