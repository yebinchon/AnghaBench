; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_init_hi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_init_hi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr*, i64, i64 }
%struct.i2c_device_addr = type { i32 }
%struct.drxj_data = type { i32, i32, i32, i32, i32 }
%struct.drx_common_attr = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@HI_I2C_DELAY = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_2_CFG_DIV__M = common dso_local global i32 0, align 4
@HI_I2C_BRIDGE_DELAY = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_3_CFG_DBL_SDA__M = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_3_CFG_DBL_SCL__B = common dso_local global i32 0, align 4
@DRXJ_WAKE_UP_KEY = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_6__PRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @init_hi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hi(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.drxj_data*, align 8
  %5 = alloca %struct.drx_common_attr*, align 8
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %4, align 8
  store %struct.drx_common_attr* null, %struct.drx_common_attr** %5, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %6, align 8
  %8 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %9 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.drxj_data*
  store %struct.drxj_data* %11, %struct.drxj_data** %4, align 8
  %12 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %13 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.drx_common_attr*
  store %struct.drx_common_attr* %15, %struct.drx_common_attr** %5, align 8
  %16 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %17 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %16, i32 0, i32 0
  %18 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %17, align 8
  store %struct.i2c_device_addr* %18, %struct.i2c_device_addr** %6, align 8
  %19 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %20 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %19, i32 4391383, i32 2049, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %91

26:                                               ; preds = %1
  %27 = load %struct.drx_common_attr*, %struct.drx_common_attr** %5, align 8
  %28 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 1000
  %31 = load i32, i32* @HI_I2C_DELAY, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sdiv i32 %32, 1000
  %34 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %35 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %37 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SIO_HI_RA_RAM_PAR_2_CFG_DIV__M, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load i32, i32* @SIO_HI_RA_RAM_PAR_2_CFG_DIV__M, align 4
  %43 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %44 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %26
  %46 = load %struct.drx_common_attr*, %struct.drx_common_attr** %5, align 8
  %47 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 1000
  %50 = load i32, i32* @HI_I2C_BRIDGE_DELAY, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sdiv i32 %51, 1000
  %53 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %54 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %56 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SIO_HI_RA_RAM_PAR_3_CFG_DBL_SDA__M, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %45
  %61 = load i32, i32* @SIO_HI_RA_RAM_PAR_3_CFG_DBL_SDA__M, align 4
  %62 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %63 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %45
  %65 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %66 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SIO_HI_RA_RAM_PAR_3_CFG_DBL_SCL__B, align 4
  %69 = shl i32 %67, %68
  %70 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %71 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @DRXJ_WAKE_UP_KEY, align 4
  %75 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %76 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE, align 4
  %78 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %79 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @SIO_HI_RA_RAM_PAR_6__PRE, align 4
  %81 = load %struct.drxj_data*, %struct.drxj_data** %4, align 8
  %82 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %84 = call i32 @hi_cfg_command(%struct.drx_demod_instance* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %64
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %91

90:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %93

91:                                               ; preds = %87, %23
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @hi_cfg_command(%struct.drx_demod_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
