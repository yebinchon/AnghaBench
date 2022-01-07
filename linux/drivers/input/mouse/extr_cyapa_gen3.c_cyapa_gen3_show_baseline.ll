; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_show_baseline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_gen3_show_baseline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cyapa = type { i32 }

@CYAPA_CMD_DEV_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error reading dev status. err = %d\0A\00", align 1
@CYAPA_DEV_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Trackpad device is busy. device state = 0x%x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CYAPA_CMD_SOFT_RESET = common dso_local global i32 0, align 4
@OP_REPORT_BASELINE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to send report baseline command. %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Device timed out going to Normal state.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CYAPA_CMD_MAX_BASELINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to read max baseline. err = %d\0A\00", align 1
@CYAPA_CMD_MIN_BASELINE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to read min baseline. err = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Baseline report successful. Max: %d Min: %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cyapa_gen3_show_baseline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen3_show_baseline(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cyapa*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.cyapa* @dev_get_drvdata(%struct.device* %12)
  store %struct.cyapa* %13, %struct.cyapa** %7, align 8
  %14 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %15 = load i32, i32* @CYAPA_CMD_DEV_STATUS, align 4
  %16 = call i32 @cyapa_read_byte(%struct.cyapa* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %110

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @CYAPA_DEV_NORMAL, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @CYAPA_DEV_NORMAL, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %110

35:                                               ; preds = %23
  %36 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %37 = load i32, i32* @CYAPA_CMD_SOFT_RESET, align 4
  %38 = load i32, i32* @OP_REPORT_BASELINE_MASK, align 4
  %39 = call i32 @cyapa_write_byte(%struct.cyapa* %36, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %110

46:                                               ; preds = %35
  store i32 3, i32* %10, align 4
  br label %47

47:                                               ; preds = %66, %46
  %48 = call i32 @usleep_range(i32 10000, i32 20000)
  %49 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %50 = load i32, i32* @CYAPA_CMD_DEV_STATUS, align 4
  %51 = call i32 @cyapa_read_byte(%struct.cyapa* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %110

58:                                               ; preds = %47
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @CYAPA_DEV_NORMAL, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @CYAPA_DEV_NORMAL, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %70

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %47, label %70

70:                                               ; preds = %66, %64
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @ETIMEDOUT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  br label %110

78:                                               ; preds = %70
  %79 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %80 = load i32, i32* @CYAPA_CMD_MAX_BASELINE, align 4
  %81 = call i32 @cyapa_read_byte(%struct.cyapa* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %110

88:                                               ; preds = %78
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %8, align 4
  %90 = load %struct.cyapa*, %struct.cyapa** %7, align 8
  %91 = load i32, i32* @CYAPA_CMD_MIN_BASELINE, align 4
  %92 = call i32 @cyapa_read_byte(%struct.cyapa* %90, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %110

99:                                               ; preds = %88
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %9, align 4
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @dev_dbg(%struct.device* %101, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @scnprintf(i8* %105, i32 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %107, i32 %108)
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %99, %95, %84, %73, %54, %42, %29, %19
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local %struct.cyapa* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cyapa_read_byte(%struct.cyapa*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @cyapa_write_byte(%struct.cyapa*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
