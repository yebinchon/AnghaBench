; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i64, i32, i32* }
%struct.pmcmsptwi_data = type { i32 }
%struct.pmcmsptwi_cmd = type { i32, i32*, i64, i32*, i64, i32 }
%struct.pmcmsptwi_cfg = type { i32 }

@MSP_TWI_CMD_WRITE_READ = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@MSP_TWI_CMD_READ = common dso_local global i32 0, align 4
@MSP_TWI_CMD_WRITE = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"I2C %s of %d bytes %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@MSP_TWI_XFER_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @pmcmsptwi_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcmsptwi_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmcmsptwi_data*, align 8
  %9 = alloca %struct.pmcmsptwi_cmd, align 8
  %10 = alloca %struct.pmcmsptwi_cfg, align 4
  %11 = alloca %struct.pmcmsptwi_cfg, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = call %struct.pmcmsptwi_data* @i2c_get_adapdata(%struct.i2c_adapter* %14)
  store %struct.pmcmsptwi_data* %15, %struct.pmcmsptwi_data** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 1
  store %struct.i2c_msg* %20, %struct.i2c_msg** %13, align 8
  %21 = load i32, i32* @MSP_TWI_CMD_WRITE_READ, align 4
  %22 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 5
  store i32 %21, i32* %22, align 8
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 1
  store i32* %29, i32** %30, align 8
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 4
  store i64 %33, i64* %34, align 8
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 3
  store i32* %37, i32** %38, align 8
  br label %73

39:                                               ; preds = %3
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @I2C_M_RD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load i32, i32* @MSP_TWI_CMD_READ, align 4
  %48 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 5
  store i32 %47, i32* %48, align 8
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 4
  store i64 %51, i64* %52, align 8
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 3
  store i32* %55, i32** %56, align 8
  %57 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 1
  store i32* null, i32** %58, align 8
  br label %72

59:                                               ; preds = %39
  %60 = load i32, i32* @MSP_TWI_CMD_WRITE, align 4
  %61 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 5
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 3
  store i32* null, i32** %63, align 8
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 2
  store i64 %66, i64* %67, align 8
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 1
  store i32* %70, i32** %71, align 8
  br label %72

72:                                               ; preds = %59, %46
  br label %73

73:                                               ; preds = %72, %18
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.pmcmsptwi_cmd, %struct.pmcmsptwi_cmd* %9, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @I2C_M_TEN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %8, align 8
  %86 = call i32 @pmcmsptwi_get_twi_config(%struct.pmcmsptwi_cfg* %11, %struct.pmcmsptwi_data* %85)
  %87 = call i32 @memcpy(%struct.pmcmsptwi_cfg* %10, %struct.pmcmsptwi_cfg* %11, i32 4)
  %88 = getelementptr inbounds %struct.pmcmsptwi_cfg, %struct.pmcmsptwi_cfg* %11, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %8, align 8
  %90 = call i32 @pmcmsptwi_set_twi_config(%struct.pmcmsptwi_cfg* %11, %struct.pmcmsptwi_data* %89)
  br label %91

91:                                               ; preds = %84, %73
  %92 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %8, align 8
  %93 = call i32 @pmcmsptwi_xfer_cmd(%struct.pmcmsptwi_cmd* %9, %struct.pmcmsptwi_data* %92)
  store i32 %93, i32* %12, align 4
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @I2C_M_TEN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %8, align 8
  %102 = call i32 @pmcmsptwi_set_twi_config(%struct.pmcmsptwi_cfg* %10, %struct.pmcmsptwi_data* %101)
  br label %103

103:                                              ; preds = %100, %91
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %105 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %104, i32 0, i32 0
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @I2C_M_RD, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @MSP_TWI_XFER_OK, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %122 = call i32 @dev_dbg(i32* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %113, i64 %116, i8* %121)
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @MSP_TWI_XFER_OK, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %103
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %131

129:                                              ; preds = %103
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.pmcmsptwi_data* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pmcmsptwi_get_twi_config(%struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_data*) #1

declare dso_local i32 @memcpy(%struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_cfg*, i32) #1

declare dso_local i32 @pmcmsptwi_set_twi_config(%struct.pmcmsptwi_cfg*, %struct.pmcmsptwi_data*) #1

declare dso_local i32 @pmcmsptwi_xfer_cmd(%struct.pmcmsptwi_cmd*, %struct.pmcmsptwi_data*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
