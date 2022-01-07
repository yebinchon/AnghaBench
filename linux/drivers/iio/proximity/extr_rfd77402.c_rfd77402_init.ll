; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_rfd77402.c_rfd77402_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_rfd77402.c_rfd77402_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.rfd77402_data = type { i32 }

@RFD77402_CMD_STANDBY = common dso_local global i32 0, align 4
@RFD77402_STATUS_STANDBY = common dso_local global i32 0, align 4
@RFD77402_ICSR = common dso_local global i32 0, align 4
@RFD77402_ICSR_INT_MODE = common dso_local global i32 0, align 4
@RFD77402_I2C_INIT_CFG = common dso_local global i32 0, align 4
@RFD77402_I2C_ADDR_INCR = common dso_local global i32 0, align 4
@RFD77402_I2C_DATA_INCR = common dso_local global i32 0, align 4
@RFD77402_I2C_HOST_DEBUG = common dso_local global i32 0, align 4
@RFD77402_I2C_MCPU_DEBUG = common dso_local global i32 0, align 4
@RFD77402_PMU_CFG = common dso_local global i32 0, align 4
@RFD77402_CMD_MCPU_OFF = common dso_local global i32 0, align 4
@RFD77402_STATUS_MCPU_OFF = common dso_local global i32 0, align 4
@RFD77402_CMD_MCPU_ON = common dso_local global i32 0, align 4
@RFD77402_STATUS_MCPU_ON = common dso_local global i32 0, align 4
@rf77402_tof_config = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfd77402_data*)* @rfd77402_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfd77402_init(%struct.rfd77402_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rfd77402_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rfd77402_data* %0, %struct.rfd77402_data** %3, align 8
  %6 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %7 = load i32, i32* @RFD77402_CMD_STANDBY, align 4
  %8 = load i32, i32* @RFD77402_STATUS_STANDBY, align 4
  %9 = call i32 @rfd77402_set_state(%struct.rfd77402_data* %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %117

14:                                               ; preds = %1
  %15 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %16 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RFD77402_ICSR, align 4
  %19 = load i32, i32* @RFD77402_ICSR_INT_MODE, align 4
  %20 = call i32 @i2c_smbus_write_byte_data(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %117

25:                                               ; preds = %14
  %26 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %27 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RFD77402_I2C_INIT_CFG, align 4
  %30 = load i32, i32* @RFD77402_I2C_ADDR_INCR, align 4
  %31 = load i32, i32* @RFD77402_I2C_DATA_INCR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RFD77402_I2C_HOST_DEBUG, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RFD77402_I2C_MCPU_DEBUG, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @i2c_smbus_write_word_data(i32 %28, i32 %29, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %117

42:                                               ; preds = %25
  %43 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %44 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RFD77402_PMU_CFG, align 4
  %47 = call i32 @i2c_smbus_write_word_data(i32 %45, i32 %46, i32 1280)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %117

52:                                               ; preds = %42
  %53 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %54 = load i32, i32* @RFD77402_CMD_MCPU_OFF, align 4
  %55 = load i32, i32* @RFD77402_STATUS_MCPU_OFF, align 4
  %56 = call i32 @rfd77402_set_state(%struct.rfd77402_data* %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %117

61:                                               ; preds = %52
  %62 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %63 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RFD77402_PMU_CFG, align 4
  %66 = call i32 @i2c_smbus_write_word_data(i32 %64, i32 %65, i32 1536)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %117

71:                                               ; preds = %61
  %72 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %73 = load i32, i32* @RFD77402_CMD_MCPU_ON, align 4
  %74 = load i32, i32* @RFD77402_STATUS_MCPU_ON, align 4
  %75 = call i32 @rfd77402_set_state(%struct.rfd77402_data* %72, i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %117

80:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %108, %80
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rf77402_tof_config, align 8
  %84 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %83)
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %88 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rf77402_tof_config, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rf77402_tof_config, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @i2c_smbus_write_word_data(i32 %89, i32 %95, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %86
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %117

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %81

111:                                              ; preds = %81
  %112 = load %struct.rfd77402_data*, %struct.rfd77402_data** %3, align 8
  %113 = load i32, i32* @RFD77402_CMD_STANDBY, align 4
  %114 = load i32, i32* @RFD77402_STATUS_STANDBY, align 4
  %115 = call i32 @rfd77402_set_state(%struct.rfd77402_data* %112, i32 %113, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %105, %78, %69, %59, %50, %40, %23, %12
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @rfd77402_set_state(%struct.rfd77402_data*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_word_data(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
