; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sis5595.c_sis5595_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sis5595.c_sis5595_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis5595_data = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32*, i32, i32, i64 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SIS5595_REG_TEMP = common dso_local global i32 0, align 4
@SIS5595_REG_TEMP_OVER = common dso_local global i32 0, align 4
@SIS5595_REG_TEMP_HYST = common dso_local global i32 0, align 4
@SIS5595_REG_FANDIV = common dso_local global i32 0, align 4
@SIS5595_REG_ALARM1 = common dso_local global i32 0, align 4
@SIS5595_REG_ALARM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sis5595_data* (%struct.device*)* @sis5595_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sis5595_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.sis5595_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.sis5595_data* %6, %struct.sis5595_data** %3, align 8
  %7 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %8 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %7, i32 0, i32 12
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %12 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %11, i32 0, i32 13
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @HZ, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i64 @time_after(i64 %10, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %25 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %150, label %28

28:                                               ; preds = %23, %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %66, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %32 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %29
  %36 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @SIS5595_REG_IN(i32 %37)
  %39 = call i32 @sis5595_read_value(%struct.sis5595_data* %36, i32 %38)
  %40 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %41 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @SIS5595_REG_IN_MIN(i32 %47)
  %49 = call i32 @sis5595_read_value(%struct.sis5595_data* %46, i32 %48)
  %50 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %51 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @SIS5595_REG_IN_MAX(i32 %57)
  %59 = call i32 @sis5595_read_value(%struct.sis5595_data* %56, i32 %58)
  %60 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %61 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %35
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %29

69:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %94, %69
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 2
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @SIS5595_REG_FAN(i32 %75)
  %77 = call i32 @sis5595_read_value(%struct.sis5595_data* %74, i32 %76)
  %78 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %79 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @SIS5595_REG_FAN_MIN(i32 %85)
  %87 = call i32 @sis5595_read_value(%struct.sis5595_data* %84, i32 %86)
  %88 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %89 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %73
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %70

97:                                               ; preds = %70
  %98 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %99 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  %103 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %104 = load i32, i32* @SIS5595_REG_TEMP, align 4
  %105 = call i32 @sis5595_read_value(%struct.sis5595_data* %103, i32 %104)
  %106 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %107 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 8
  %108 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %109 = load i32, i32* @SIS5595_REG_TEMP_OVER, align 4
  %110 = call i32 @sis5595_read_value(%struct.sis5595_data* %108, i32 %109)
  %111 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %112 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 4
  %113 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %114 = load i32, i32* @SIS5595_REG_TEMP_HYST, align 4
  %115 = call i32 @sis5595_read_value(%struct.sis5595_data* %113, i32 %114)
  %116 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %117 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %116, i32 0, i32 9
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %102, %97
  %119 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %120 = load i32, i32* @SIS5595_REG_FANDIV, align 4
  %121 = call i32 @sis5595_read_value(%struct.sis5595_data* %119, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = ashr i32 %122, 4
  %124 = and i32 %123, 3
  %125 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %126 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %125, i32 0, i32 10
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* %4, align 4
  %130 = ashr i32 %129, 6
  %131 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %132 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %131, i32 0, i32 10
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 %130, i32* %134, align 4
  %135 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %136 = load i32, i32* @SIS5595_REG_ALARM1, align 4
  %137 = call i32 @sis5595_read_value(%struct.sis5595_data* %135, i32 %136)
  %138 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %139 = load i32, i32* @SIS5595_REG_ALARM2, align 4
  %140 = call i32 @sis5595_read_value(%struct.sis5595_data* %138, i32 %139)
  %141 = shl i32 %140, 8
  %142 = or i32 %137, %141
  %143 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %144 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %143, i32 0, i32 11
  store i32 %142, i32* %144, align 8
  %145 = load i64, i64* @jiffies, align 8
  %146 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %147 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %146, i32 0, i32 13
  store i64 %145, i64* %147, align 8
  %148 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %149 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  br label %150

150:                                              ; preds = %118, %23
  %151 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  %152 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %151, i32 0, i32 12
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load %struct.sis5595_data*, %struct.sis5595_data** %3, align 8
  ret %struct.sis5595_data* %154
}

declare dso_local %struct.sis5595_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @sis5595_read_value(%struct.sis5595_data*, i32) #1

declare dso_local i32 @SIS5595_REG_IN(i32) #1

declare dso_local i32 @SIS5595_REG_IN_MIN(i32) #1

declare dso_local i32 @SIS5595_REG_IN_MAX(i32) #1

declare dso_local i32 @SIS5595_REG_FAN(i32) #1

declare dso_local i32 @SIS5595_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
