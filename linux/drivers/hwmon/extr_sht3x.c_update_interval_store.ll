; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_update_interval_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_update_interval_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sht3x_data = type { i32, i32, i32, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i64 }
%struct.i2c_client = type { i32 }

@sht3x_cmd_break = common dso_local global i8* null, align 8
@SHT3X_CMD_LENGTH = common dso_local global i32 0, align 4
@periodic_measure_commands_hpm = common dso_local global i8** null, align 8
@periodic_measure_commands_lpm = common dso_local global i8** null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @update_interval_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_interval_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sht3x_data*, align 8
  %15 = alloca %struct.i2c_client*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.sht3x_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.sht3x_data* %17, %struct.sht3x_data** %14, align 8
  %18 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %19 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %18, i32 0, i32 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %15, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtou16(i8* %21, i32 0, i32* %10)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %126

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @get_mode_from_update_interval(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %31 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %35 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %40 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %126

44:                                               ; preds = %27
  %45 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %46 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %45, i32 0, i32 2
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %49 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  %54 = load i8*, i8** @sht3x_cmd_break, align 8
  %55 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %56 = call i32 @i2c_master_send(%struct.i2c_client* %53, i8* %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %103

61:                                               ; preds = %52
  %62 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %63 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %44
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %64
  %68 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %69 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i8**, i8*** @periodic_measure_commands_hpm, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %13, align 8
  br label %87

80:                                               ; preds = %67
  %81 = load i8**, i8*** @periodic_measure_commands_lpm, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %13, align 8
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %91 = call i32 @i2c_master_send(%struct.i2c_client* %88, i8* %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %103

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %64
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %100 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %102 = call i32 @sht3x_select_command(%struct.sht3x_data* %101)
  br label %103

103:                                              ; preds = %97, %95, %60
  %104 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %105 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %104, i32 0, i32 2
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.sht3x_data*, %struct.sht3x_data** %14, align 8
  %108 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @SHT3X_CMD_LENGTH, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %103
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  br label %121

118:                                              ; preds = %113
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  br label %121

121:                                              ; preds = %118, %116
  %122 = phi i32 [ %117, %116 ], [ %120, %118 ]
  store i32 %122, i32* %5, align 4
  br label %126

123:                                              ; preds = %103
  %124 = load i64, i64* %9, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %121, %38, %25
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.sht3x_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtou16(i8*, i32, i32*) #1

declare dso_local i32 @get_mode_from_update_interval(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @sht3x_select_command(%struct.sht3x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
