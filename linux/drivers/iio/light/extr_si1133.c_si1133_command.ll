; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si1133_data = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@SI1133_MAX_CMD_CTR = common dso_local global i32 0, align 4
@SI1133_CMD_FORCE = common dso_local global i32 0, align 4
@SI1133_REG_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to write command %#02hhx, ret=%d\0A\00", align 1
@SI1133_COMPLETION_TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SI1133_REG_RESPONSE0 = common dso_local global i32 0, align 4
@SI1133_CMD_SEQ_MASK = common dso_local global i32 0, align 4
@SI1133_CMD_ERR_MASK = common dso_local global i32 0, align 4
@SI1133_CMD_MINSLEEP_US_LOW = common dso_local global i32 0, align 4
@SI1133_CMD_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to read command %#02hhx, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si1133_data*, i32)* @si1133_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_command(%struct.si1133_data* %0, i32 %1) #0 {
  %3 = alloca %struct.si1133_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.si1133_data* %0, %struct.si1133_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %10 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %14 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %17 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @SI1133_MAX_CMD_CTR, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SI1133_CMD_FORCE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %27 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %26, i32 0, i32 3
  %28 = call i32 @reinit_completion(i32* %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %31 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SI1133_REG_COMMAND, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @regmap_write(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_warn(%struct.device* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %115

43:                                               ; preds = %29
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SI1133_CMD_FORCE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %49 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %48, i32 0, i32 3
  %50 = load i32, i32* @SI1133_COMPLETION_TIMEOUT_MS, align 4
  %51 = call i32 @msecs_to_jiffies(i32 %50)
  %52 = call i32 @wait_for_completion_timeout(i32* %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %115

57:                                               ; preds = %47
  %58 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %59 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SI1133_REG_RESPONSE0, align 4
  %62 = call i32 @regmap_read(i32 %60, i32 %61, i32* %6)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %115

66:                                               ; preds = %57
  br label %98

67:                                               ; preds = %43
  %68 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %69 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SI1133_REG_RESPONSE0, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @SI1133_CMD_SEQ_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @SI1133_CMD_ERR_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br label %83

83:                                               ; preds = %78, %67
  %84 = phi i1 [ true, %67 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* @SI1133_CMD_MINSLEEP_US_LOW, align 4
  %87 = load i32, i32* @SI1133_CMD_TIMEOUT_MS, align 4
  %88 = mul nsw i32 %87, 1000
  %89 = call i32 @regmap_read_poll_timeout(i32 %70, i32 %71, i32 %72, i32 %85, i32 %86, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dev_warn(%struct.device* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  br label %115

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %66
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @SI1133_CMD_ERR_MASK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @si1133_parse_response_err(%struct.device* %104, i32 %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %109 = call i32 @si1133_cmd_reset_counter(%struct.si1133_data* %108)
  br label %114

110:                                              ; preds = %98
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %113 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %103
  br label %115

115:                                              ; preds = %114, %92, %65, %54, %38
  %116 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %117 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @si1133_parse_response_err(%struct.device*, i32, i32) #1

declare dso_local i32 @si1133_cmd_reset_counter(%struct.si1133_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
