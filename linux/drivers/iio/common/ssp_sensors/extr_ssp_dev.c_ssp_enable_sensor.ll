; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_enable_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_enable_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_data = type { i32*, i32, i32*, %struct.TYPE_2__*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ssp_instruction = type { i32, i8*, i8* }

@SSP_MSG2SSP_INST_BYPASS_SENSOR_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Enabling sensor failed\0A\00", align 1
@SSP_NO_SENSOR_STATE = common dso_local global i32 0, align 4
@SSP_MSG2SSP_INST_CHANGE_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Changing sensor delay failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_enable_sensor(%struct.ssp_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssp_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ssp_instruction, align 8
  store %struct.ssp_data* %0, %struct.ssp_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i8* @cpu_to_le32(i32 %10)
  %12 = getelementptr inbounds %struct.ssp_instruction, %struct.ssp_instruction* %9, i32 0, i32 2
  store i8* %11, i8** %12, align 8
  %13 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %14 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = getelementptr inbounds %struct.ssp_instruction, %struct.ssp_instruction* %9, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %23 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ssp_instruction, %struct.ssp_instruction* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %31 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %86 [
    i32 129, label %37
    i32 130, label %37
    i32 128, label %71
  ]

37:                                               ; preds = %3, %3
  %38 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %39 = load i32, i32* @SSP_MSG2SSP_INST_BYPASS_SENSOR_ADD, align 4
  %40 = load i32, i32* %6, align 4
  %41 = bitcast %struct.ssp_instruction* %9 to i32*
  %42 = call i32 @ssp_send_instruction(%struct.ssp_data* %38, i32 %39, i32 %40, i32* %41, i32 24)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %47 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @SSP_NO_SENSOR_STATE, align 4
  %52 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %53 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  br label %109

58:                                               ; preds = %37
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %62 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %66 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 128, i32* %70, align 4
  br label %93

71:                                               ; preds = %3
  %72 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %73 = load i32, i32* @SSP_MSG2SSP_INST_CHANGE_DELAY, align 4
  %74 = load i32, i32* %6, align 4
  %75 = bitcast %struct.ssp_instruction* %9 to i32*
  %76 = call i32 @ssp_send_instruction(%struct.ssp_data* %72, i32 %73, i32 %74, i32* %75, i32 24)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %81 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %109

85:                                               ; preds = %71
  br label %93

86:                                               ; preds = %3
  %87 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %88 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 130, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %85, %58
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %96 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %102 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %101, i32 0, i32 1
  %103 = call i32 @atomic_inc_return(i32* %102)
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %107 = call i32 @ssp_enable_wdt_timer(%struct.ssp_data* %106)
  br label %108

108:                                              ; preds = %105, %93
  store i32 0, i32* %4, align 4
  br label %111

109:                                              ; preds = %79, %45
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %108
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ssp_send_instruction(%struct.ssp_data*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @ssp_enable_wdt_timer(%struct.ssp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
