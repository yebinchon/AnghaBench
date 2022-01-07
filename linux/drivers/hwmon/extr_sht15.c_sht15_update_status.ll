; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { i32, i32, i32, i32, i64, i32, i64 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SHT15_READ_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"CRC validation failed, unable to restore device settings\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sht15_data*)* @sht15_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_update_status(%struct.sht15_data* %0) #0 {
  %2 = alloca %struct.sht15_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @HZ, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %11 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %10, i32 0, i32 3
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %15 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i64 @time_after(i64 %13, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %24 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %112, label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %29 = load i32, i32* @SHT15_READ_STATUS, align 4
  %30 = call i32 @sht15_send_cmd(%struct.sht15_data* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %113

34:                                               ; preds = %27
  %35 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %36 = call i32 @sht15_read_byte(%struct.sht15_data* %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %38 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %43 = call i32 @sht15_ack(%struct.sht15_data* %42)
  %44 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %45 = call i32 @sht15_read_byte(%struct.sht15_data* %44)
  %46 = call i32 @bitrev8(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @SHT15_READ_STATUS, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %53 = call i32 @sht15_crc8(%struct.sht15_data* %51, i32* %52, i32 2)
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %58 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %41, %34
  %60 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %61 = call i32 @sht15_end_transmission(%struct.sht15_data* %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %113

65:                                               ; preds = %59
  %66 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %67 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %65
  %71 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %72 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %103, label %75

75:                                               ; preds = %70
  %76 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %77 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 7
  store i32 %79, i32* %5, align 4
  %80 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %81 = call i32 @sht15_soft_reset(%struct.sht15_data* %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %113

85:                                               ; preds = %75
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @sht15_send_status(%struct.sht15_data* %89, i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %96 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %113

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %85
  %101 = load i32, i32* @EAGAIN, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %113

103:                                              ; preds = %70, %65
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %106 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %108 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load i64, i64* @jiffies, align 8
  %110 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %111 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %103, %22
  br label %113

113:                                              ; preds = %112, %100, %94, %84, %64, %33
  %114 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %115 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %114, i32 0, i32 3
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @sht15_send_cmd(%struct.sht15_data*, i32) #1

declare dso_local i32 @sht15_read_byte(%struct.sht15_data*) #1

declare dso_local i32 @sht15_ack(%struct.sht15_data*) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @sht15_crc8(%struct.sht15_data*, i32*, i32) #1

declare dso_local i32 @sht15_end_transmission(%struct.sht15_data*) #1

declare dso_local i32 @sht15_soft_reset(%struct.sht15_data*) #1

declare dso_local i32 @sht15_send_status(%struct.sht15_data*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
