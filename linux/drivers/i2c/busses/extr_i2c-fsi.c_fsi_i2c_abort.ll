; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_i2c_port = type { i32, %struct.fsi_i2c_master* }
%struct.fsi_i2c_master = type { %struct.fsi_device* }
%struct.fsi_device = type { i32 }

@I2C_CMD_WITH_STOP = common dso_local global i32 0, align 4
@I2C_FSI_STAT = common dso_local global i32 0, align 4
@I2C_STAT_SDA_IN = common dso_local global i32 0, align 4
@I2C_STAT_PARITY = common dso_local global i32 0, align 4
@I2C_STAT_LOST_ARB = common dso_local global i32 0, align 4
@I2C_STAT_STOP_ERR = common dso_local global i32 0, align 4
@I2C_FSI_CMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@I2C_STAT_CMD_COMP = common dso_local global i32 0, align 4
@I2C_CMD_SLEEP_MIN_US = common dso_local global i32 0, align 4
@I2C_CMD_SLEEP_MAX_US = common dso_local global i32 0, align 4
@I2C_ABORT_TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_i2c_port*, i32)* @fsi_i2c_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_abort(%struct.fsi_i2c_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_i2c_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsi_i2c_master*, align 8
  %11 = alloca %struct.fsi_device*, align 8
  store %struct.fsi_i2c_port* %0, %struct.fsi_i2c_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @I2C_CMD_WITH_STOP, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %4, align 8
  %14 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %13, i32 0, i32 1
  %15 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %14, align 8
  store %struct.fsi_i2c_master* %15, %struct.fsi_i2c_master** %10, align 8
  %16 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %10, align 8
  %17 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %16, i32 0, i32 0
  %18 = load %struct.fsi_device*, %struct.fsi_device** %17, align 8
  store %struct.fsi_device* %18, %struct.fsi_device** %11, align 8
  %19 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %10, align 8
  %20 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %4, align 8
  %21 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @fsi_i2c_reset_engine(%struct.fsi_i2c_master* %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %98

28:                                               ; preds = %2
  %29 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %30 = load i32, i32* @I2C_FSI_STAT, align 4
  %31 = call i32 @fsi_i2c_read_reg(%struct.fsi_device* %29, i32 %30, i32* %9)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %98

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @I2C_STAT_SDA_IN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %10, align 8
  %43 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %4, align 8
  %44 = call i32 @fsi_i2c_reset_bus(%struct.fsi_i2c_master* %42, %struct.fsi_i2c_port* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %98

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @I2C_STAT_PARITY, align 4
  %53 = load i32, i32* @I2C_STAT_LOST_ARB, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @I2C_STAT_STOP_ERR, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %51, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %98

60:                                               ; preds = %50
  %61 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %62 = load i32, i32* @I2C_FSI_CMD, align 4
  %63 = call i32 @fsi_i2c_write_reg(%struct.fsi_device* %61, i32 %62, i32* %8)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %98

68:                                               ; preds = %60
  %69 = load i64, i64* @jiffies, align 8
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %88, %68
  %71 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %72 = load i32, i32* @I2C_FSI_STAT, align 4
  %73 = call i32 @fsi_i2c_read_reg(%struct.fsi_device* %71, i32 %72, i32* %5)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %98

78:                                               ; preds = %70
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @I2C_STAT_CMD_COMP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %98

84:                                               ; preds = %78
  %85 = load i32, i32* @I2C_CMD_SLEEP_MIN_US, align 4
  %86 = load i32, i32* @I2C_CMD_SLEEP_MAX_US, align 4
  %87 = call i32 @usleep_range(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @I2C_ABORT_TIMEOUT, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* @jiffies, align 8
  %93 = call i64 @time_after(i64 %91, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %70, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @ETIMEDOUT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %83, %76, %66, %59, %47, %34, %26
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @fsi_i2c_reset_engine(%struct.fsi_i2c_master*, i32) #1

declare dso_local i32 @fsi_i2c_read_reg(%struct.fsi_device*, i32, i32*) #1

declare dso_local i32 @fsi_i2c_reset_bus(%struct.fsi_i2c_master*, %struct.fsi_i2c_port*) #1

declare dso_local i32 @fsi_i2c_write_reg(%struct.fsi_device*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
