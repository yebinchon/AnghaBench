; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.serio_driver = type { i32 }
%struct.taos_data = type { i64, i32, i32, i32, %struct.i2c_adapter }
%struct.i2c_adapter = type { i32, %struct.TYPE_2__, %struct.serio*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TAOS_STATE_INIT = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@taos_algorithm = common dso_local global i32 0, align 4
@TAOS_CMD_RESET = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4
@TAOS_STATE_IDLE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"TAOS EVM reset failed (state=%d, pos=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"TAOS EVM identification failed\0A\00", align 1
@TAOS_STATE_EOFF = common dso_local global i64 0, align 8
@TAOS_CMD_ECHO_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"TAOS EVM echo off failed (state=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Connected to TAOS EVM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @taos_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taos_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.taos_data*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.taos_data* @kzalloc(i32 64, i32 %10)
  store %struct.taos_data* %11, %struct.taos_data** %6, align 8
  %12 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %13 = icmp ne %struct.taos_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %143

17:                                               ; preds = %2
  %18 = load i64, i64* @TAOS_STATE_INIT, align 8
  %19 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %20 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.serio*, %struct.serio** %4, align 8
  %22 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %23 = call i32 @serio_set_drvdata(%struct.serio* %21, %struct.taos_data* %22)
  %24 = load %struct.serio*, %struct.serio** %4, align 8
  %25 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %26 = call i32 @serio_open(%struct.serio* %24, %struct.serio_driver* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %140

30:                                               ; preds = %17
  %31 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %32 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %31, i32 0, i32 4
  store %struct.i2c_adapter* %32, %struct.i2c_adapter** %7, align 8
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 3
  store i32* @taos_algorithm, i32** %37, align 8
  %38 = load %struct.serio*, %struct.serio** %4, align 8
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 2
  store %struct.serio* %38, %struct.serio** %40, align 8
  %41 = load %struct.serio*, %struct.serio** %4, align 8
  %42 = getelementptr inbounds %struct.serio, %struct.serio* %41, i32 0, i32 0
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %struct.serio*, %struct.serio** %4, align 8
  %47 = load i32, i32* @TAOS_CMD_RESET, align 4
  %48 = call i32 @serio_write(%struct.serio* %46, i32 %47)
  %49 = load i32, i32* @wq, align 4
  %50 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %51 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TAOS_STATE_IDLE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @msecs_to_jiffies(i32 2000)
  %57 = call i32 @wait_event_interruptible_timeout(i32 %49, i32 %55, i32 %56)
  %58 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %59 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TAOS_STATE_IDLE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %30
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.serio*, %struct.serio** %4, align 8
  %67 = getelementptr inbounds %struct.serio, %struct.serio* %66, i32 0, i32 0
  %68 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %69 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %72 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %70, i32 %73)
  br label %137

75:                                               ; preds = %30
  %76 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %77 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @taos_adapter_name(i32 %78)
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  %85 = load %struct.serio*, %struct.serio** %4, align 8
  %86 = getelementptr inbounds %struct.serio, %struct.serio* %85, i32 0, i32 0
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %137

88:                                               ; preds = %75
  %89 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %90 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @strlcpy(i32 %91, i8* %92, i32 4)
  %94 = load i64, i64* @TAOS_STATE_EOFF, align 8
  %95 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %96 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.serio*, %struct.serio** %4, align 8
  %98 = load i32, i32* @TAOS_CMD_ECHO_OFF, align 4
  %99 = call i32 @serio_write(%struct.serio* %97, i32 %98)
  %100 = load i32, i32* @wq, align 4
  %101 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %102 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TAOS_STATE_IDLE, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @msecs_to_jiffies(i32 250)
  %108 = call i32 @wait_event_interruptible_timeout(i32 %100, i32 %106, i32 %107)
  %109 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %110 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TAOS_STATE_IDLE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %88
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %9, align 4
  %117 = load %struct.serio*, %struct.serio** %4, align 8
  %118 = getelementptr inbounds %struct.serio, %struct.serio* %117, i32 0, i32 0
  %119 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %120 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %121)
  br label %137

123:                                              ; preds = %88
  %124 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %125 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %137

129:                                              ; preds = %123
  %130 = load %struct.serio*, %struct.serio** %4, align 8
  %131 = getelementptr inbounds %struct.serio, %struct.serio* %130, i32 0, i32 0
  %132 = call i32 @dev_info(i32* %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %133 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %134 = call i32 @taos_instantiate_device(%struct.i2c_adapter* %133)
  %135 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %136 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %3, align 4
  br label %145

137:                                              ; preds = %128, %114, %82, %63
  %138 = load %struct.serio*, %struct.serio** %4, align 8
  %139 = call i32 @serio_close(%struct.serio* %138)
  br label %140

140:                                              ; preds = %137, %29
  %141 = load %struct.taos_data*, %struct.taos_data** %6, align 8
  %142 = call i32 @kfree(%struct.taos_data* %141)
  br label %143

143:                                              ; preds = %140, %14
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %129
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.taos_data* @kzalloc(i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.taos_data*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @serio_write(%struct.serio*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @taos_adapter_name(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @taos_instantiate_device(%struct.i2c_adapter*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @kfree(%struct.taos_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
