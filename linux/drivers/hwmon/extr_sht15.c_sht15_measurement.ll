; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { i64, i32, i32, i32, i64, i32, i32, i32, i32 }

@SHT15_READING_NOTHING = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"CRC validation failed, unable to restore device settings\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sht15_data*, i32, i32)* @sht15_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_measurement(%struct.sht15_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sht15_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @sht15_send_cmd(%struct.sht15_data* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %139

17:                                               ; preds = %3
  %18 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %19 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @gpiod_direction_input(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %139

26:                                               ; preds = %17
  %27 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %28 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %27, i32 0, i32 8
  %29 = call i32 @atomic_set(i32* %28, i32 0)
  %30 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %31 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @gpiod_to_irq(i32 %32)
  %34 = call i32 @enable_irq(i32 %33)
  %35 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %36 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @gpiod_get_value(i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %26
  %41 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %42 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @gpiod_to_irq(i32 %43)
  %45 = call i32 @disable_irq_nosync(i32 %44)
  %46 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %47 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %46, i32 0, i32 8
  %48 = call i32 @atomic_read(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %52 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %51, i32 0, i32 7
  %53 = call i32 @schedule_work(i32* %52)
  br label %54

54:                                               ; preds = %50, %40
  br label %55

55:                                               ; preds = %54, %26
  %56 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %57 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %60 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SHT15_READING_NOTHING, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @msecs_to_jiffies(i32 %65)
  %67 = call i32 @wait_event_timeout(i32 %58, i32 %64, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %69 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SHT15_READING_NOTHING, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %55
  %74 = load i64, i64* @SHT15_READING_NOTHING, align 8
  %75 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %76 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %139

79:                                               ; preds = %55
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %84 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @gpiod_to_irq(i32 %85)
  %87 = call i32 @disable_irq_nosync(i32 %86)
  %88 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %89 = call i32 @sht15_connection_reset(%struct.sht15_data* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %139

94:                                               ; preds = %82
  %95 = load i32, i32* @ETIME, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %139

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %100 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %98
  %104 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %105 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %138, label %108

108:                                              ; preds = %103
  %109 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %110 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, 7
  store i32 %112, i32* %9, align 4
  %113 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %114 = call i32 @sht15_soft_reset(%struct.sht15_data* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %4, align 4
  br label %139

119:                                              ; preds = %108
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @sht15_send_status(%struct.sht15_data* %123, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %130 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_err(i32 %131, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %139

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %119
  %136 = load i32, i32* @EAGAIN, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %139

138:                                              ; preds = %103, %98
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %135, %128, %117, %94, %92, %73, %24, %15
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @sht15_send_cmd(%struct.sht15_data*, i32) #1

declare dso_local i32 @gpiod_direction_input(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @gpiod_to_irq(i32) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sht15_connection_reset(%struct.sht15_data*) #1

declare dso_local i32 @sht15_soft_reset(%struct.sht15_data*) #1

declare dso_local i32 @sht15_send_status(%struct.sht15_data*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
