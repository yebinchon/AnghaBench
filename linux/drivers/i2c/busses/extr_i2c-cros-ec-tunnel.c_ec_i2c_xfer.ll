; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cros-ec-tunnel.c_ec_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cros-ec-tunnel.c_ec_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.ec_i2c_device* }
%struct.ec_i2c_device = type { i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Error constructing message %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Error preparing response %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Error constructing EC i2c message %d\0A\00", align 1
@EC_CMD_I2C_PASSTHRU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Error transferring EC i2c message %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @ec_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ec_i2c_device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cros_ec_command*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %17, align 8
  store %struct.ec_i2c_device* %18, %struct.ec_i2c_device** %8, align 8
  %19 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %8, align 8
  %20 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %19, i32 0, i32 2
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %9, align 8
  %22 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %8, align 8
  %23 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ec_i2c_count_message(%struct.i2c_msg* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %113

35:                                               ; preds = %3
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ec_i2c_count_response(%struct.i2c_msg* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %9, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %113

46:                                               ; preds = %35
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @max(i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 24, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.cros_ec_command* @kmalloc(i32 %53, i32 %54)
  store %struct.cros_ec_command* %55, %struct.cros_ec_command** %15, align 8
  %56 = load %struct.cros_ec_command*, %struct.cros_ec_command** %15, align 8
  %57 = icmp ne %struct.cros_ec_command* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %113

61:                                               ; preds = %46
  %62 = load %struct.cros_ec_command*, %struct.cros_ec_command** %15, align 8
  %63 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @ec_i2c_construct_message(i32 %64, %struct.i2c_msg* %65, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.device*, %struct.device** %9, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %109

75:                                               ; preds = %61
  %76 = load %struct.cros_ec_command*, %struct.cros_ec_command** %15, align 8
  %77 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @EC_CMD_I2C_PASSTHRU, align 4
  %79 = load %struct.cros_ec_command*, %struct.cros_ec_command** %15, align 8
  %80 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.cros_ec_command*, %struct.cros_ec_command** %15, align 8
  %83 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.cros_ec_command*, %struct.cros_ec_command** %15, align 8
  %86 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %8, align 8
  %88 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cros_ec_command*, %struct.cros_ec_command** %15, align 8
  %91 = call i32 @cros_ec_cmd_xfer_status(i32 %89, %struct.cros_ec_command* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %75
  %95 = load %struct.device*, %struct.device** %9, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %109

98:                                               ; preds = %75
  %99 = load %struct.cros_ec_command*, %struct.cros_ec_command** %15, align 8
  %100 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %103 = call i32 @ec_i2c_parse_response(i32 %101, %struct.i2c_msg* %102, i32* %7)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %107, %106, %94, %71
  %110 = load %struct.cros_ec_command*, %struct.cros_ec_command** %15, align 8
  %111 = call i32 @kfree(%struct.cros_ec_command* %110)
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %58, %41, %30
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @ec_i2c_count_message(%struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @ec_i2c_count_response(%struct.i2c_msg*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.cros_ec_command* @kmalloc(i32, i32) #1

declare dso_local i32 @ec_i2c_construct_message(i32, %struct.i2c_msg*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @ec_i2c_parse_response(i32, %struct.i2c_msg*, i32*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
