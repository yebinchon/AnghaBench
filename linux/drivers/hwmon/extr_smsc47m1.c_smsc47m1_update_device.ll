; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m1.c_smsc47m1_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m1.c_smsc47m1_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc47m1_data = type { i64, i32*, i32*, i32*, i32*, i32, i32, i64 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@smsc47m2 = common dso_local global i64 0, align 8
@SMSC47M1_REG_FAN = common dso_local global i32* null, align 8
@SMSC47M1_REG_FAN_PRELOAD = common dso_local global i32* null, align 8
@SMSC47M1_REG_PWM = common dso_local global i32* null, align 8
@SMSC47M1_REG_FANDIV = common dso_local global i32 0, align 4
@SMSC47M1_REG_ALARM = common dso_local global i32 0, align 4
@SMSC47M2_REG_FANDIV3 = common dso_local global i32 0, align 4
@SMSC47M2_REG_ALARM6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smsc47m1_data* (%struct.device*, i32)* @smsc47m1_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smsc47m1_data* @smsc47m1_update_device(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smsc47m1_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.smsc47m1_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.smsc47m1_data* %9, %struct.smsc47m1_data** %5, align 8
  %10 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %11 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %10, i32 0, i32 6
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %15 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i64 @time_after(i64 %13, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %151

29:                                               ; preds = %26, %2
  %30 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %31 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @smsc47m2, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 3, i32 2
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %81, %29
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %37
  %42 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %43 = load i32*, i32** @SMSC47M1_REG_FAN, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %42, i32 %47)
  %49 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %50 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %56 = load i32*, i32** @SMSC47M1_REG_FAN_PRELOAD, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %55, i32 %60)
  %62 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %63 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %69 = load i32*, i32** @SMSC47M1_REG_PWM, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %68, i32 %73)
  %75 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %76 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %41
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %37

84:                                               ; preds = %37
  %85 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %86 = load i32, i32* @SMSC47M1_REG_FANDIV, align 4
  %87 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %85, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = ashr i32 %88, 4
  %90 = and i32 %89, 3
  %91 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %92 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  %96 = ashr i32 %95, 6
  %97 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %98 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %96, i32* %100, align 4
  %101 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %102 = load i32, i32* @SMSC47M1_REG_ALARM, align 4
  %103 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %101, i32 %102)
  %104 = ashr i32 %103, 6
  %105 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %106 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %108 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %84
  %112 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %113 = load i32, i32* @SMSC47M1_REG_ALARM, align 4
  %114 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %112, i32 %113, i32 192)
  br label %115

115:                                              ; preds = %111, %84
  %116 = load i32, i32* %7, align 4
  %117 = icmp sge i32 %116, 3
  br i1 %117, label %118, label %147

118:                                              ; preds = %115
  %119 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %120 = load i32, i32* @SMSC47M2_REG_FANDIV3, align 4
  %121 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %119, i32 %120)
  %122 = ashr i32 %121, 4
  %123 = and i32 %122, 3
  %124 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %125 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 %123, i32* %127, align 4
  %128 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %129 = load i32, i32* @SMSC47M2_REG_ALARM6, align 4
  %130 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %128, i32 %129)
  %131 = and i32 %130, 64
  %132 = ashr i32 %131, 4
  %133 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %134 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %138 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %118
  %143 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %144 = load i32, i32* @SMSC47M2_REG_ALARM6, align 4
  %145 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %143, i32 %144, i32 64)
  br label %146

146:                                              ; preds = %142, %118
  br label %147

147:                                              ; preds = %146, %115
  %148 = load i64, i64* @jiffies, align 8
  %149 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %150 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %149, i32 0, i32 7
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %26
  %152 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  %153 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %152, i32 0, i32 6
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %5, align 8
  ret %struct.smsc47m1_data* %155
}

declare dso_local %struct.smsc47m1_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @smsc47m1_read_value(%struct.smsc47m1_data*, i32) #1

declare dso_local i32 @smsc47m1_write_value(%struct.smsc47m1_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
