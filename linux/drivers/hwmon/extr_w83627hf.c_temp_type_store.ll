; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_temp_type_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_temp_type_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i64*, i32 }
%struct.TYPE_2__ = type { i32 }

@W83781D_REG_SCFG1 = common dso_local global i32 0, align 4
@BIT_SCFG1 = common dso_local global i32* null, align 8
@W83781D_REG_SCFG2 = common dso_local global i32 0, align 4
@BIT_SCFG2 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"Sensor type %d is deprecated, please use 4 instead\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid sensor type %ld; must be 1, 2, or 4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_type_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_type_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.w83627hf_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.w83627hf_data* %20, %struct.w83627hf_data** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 10, i64* %12)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %136

27:                                               ; preds = %4
  %28 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %29 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i64, i64* %12, align 8
  switch i64 %31, label %126 [
    i64 1, label %32
    i64 2, label %66
    i64 128, label %101
    i64 4, label %104
  ]

32:                                               ; preds = %27
  %33 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %34 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %35 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %37 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** @BIT_SCFG1, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %38, %43
  %45 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %36, i32 %37, i32 %44)
  %46 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %47 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %48 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %50 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** @BIT_SCFG2, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %51, %56
  %58 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %49, i32 %50, i32 %57)
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %61 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %59, i64* %65, align 8
  br label %130

66:                                               ; preds = %27
  %67 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %68 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %69 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %71 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** @BIT_SCFG1, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %72, %77
  %79 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %70, i32 %71, i32 %78)
  %80 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %81 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %82 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %84 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** @BIT_SCFG2, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %85, %91
  %93 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %83, i32 %84, i32 %92)
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %96 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 %94, i64* %100, align 8
  br label %130

101:                                              ; preds = %27
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = call i32 @dev_warn(%struct.device* %102, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 128)
  br label %104

104:                                              ; preds = %27, %101
  %105 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %106 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %107 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %105, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %109 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32*, i32** @BIT_SCFG1, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 %110, %116
  %118 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %108, i32 %109, i32 %117)
  %119 = load i64, i64* %12, align 8
  %120 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %121 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %119, i64* %125, align 8
  br label %130

126:                                              ; preds = %27
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = load i64, i64* %12, align 8
  %129 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %126, %104, %66, %32
  %131 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %132 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %131, i32 0, i32 1
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i64, i64* %9, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %130, %25
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
