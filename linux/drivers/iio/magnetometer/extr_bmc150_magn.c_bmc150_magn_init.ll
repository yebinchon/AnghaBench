; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_magn_preset = type { i32, i32, i32 }
%struct.bmc150_magn_data = type { i32, i32 }

@BMC150_MAGN_POWER_MODE_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to bring up device from suspend mode\0A\00", align 1
@BMC150_MAGN_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed reading chip id\0A\00", align 1
@BMC150_MAGN_CHIP_ID_VAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid chip id 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Chip id %x\0A\00", align 1
@bmc150_magn_presets_table = common dso_local global %struct.bmc150_magn_preset* null, align 8
@BMC150_MAGN_DEFAULT_PRESET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to set ODR to %d\0A\00", align 1
@BMC150_MAGN_REG_REP_XY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to set REP XY to %d\0A\00", align 1
@BMC150_MAGN_REG_REP_Z = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to set REP Z to %d\0A\00", align 1
@BMC150_MAGN_POWER_MODE_NORMAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to power on device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_magn_data*)* @bmc150_magn_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_magn_init(%struct.bmc150_magn_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bmc150_magn_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bmc150_magn_preset, align 4
  store %struct.bmc150_magn_data* %0, %struct.bmc150_magn_data** %3, align 8
  %7 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %8 = load i32, i32* @BMC150_MAGN_POWER_MODE_SUSPEND, align 4
  %9 = call i32 @bmc150_magn_set_power_mode(%struct.bmc150_magn_data* %7, i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %14 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @dev_err(i32 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %132

18:                                               ; preds = %1
  %19 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %20 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BMC150_MAGN_REG_CHIP_ID, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %5)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %28 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %127

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @BMC150_MAGN_CHIP_ID_VAL, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %37 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %127

43:                                               ; preds = %31
  %44 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %45 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.bmc150_magn_preset*, %struct.bmc150_magn_preset** @bmc150_magn_presets_table, align 8
  %50 = load i64, i64* @BMC150_MAGN_DEFAULT_PRESET, align 8
  %51 = getelementptr inbounds %struct.bmc150_magn_preset, %struct.bmc150_magn_preset* %49, i64 %50
  %52 = bitcast %struct.bmc150_magn_preset* %6 to i8*
  %53 = bitcast %struct.bmc150_magn_preset* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  %54 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %55 = getelementptr inbounds %struct.bmc150_magn_preset, %struct.bmc150_magn_preset* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bmc150_magn_set_odr(%struct.bmc150_magn_data* %54, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %43
  %61 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %62 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.bmc150_magn_preset, %struct.bmc150_magn_preset* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %127

67:                                               ; preds = %43
  %68 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %69 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BMC150_MAGN_REG_REP_XY, align 4
  %72 = getelementptr inbounds %struct.bmc150_magn_preset, %struct.bmc150_magn_preset* %6, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BMC150_MAGN_REPXY_TO_REGVAL(i32 %73)
  %75 = call i32 @regmap_write(i32 %70, i32 %71, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %67
  %79 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %80 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.bmc150_magn_preset, %struct.bmc150_magn_preset* %6, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  br label %127

85:                                               ; preds = %67
  %86 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %87 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BMC150_MAGN_REG_REP_Z, align 4
  %90 = getelementptr inbounds %struct.bmc150_magn_preset, %struct.bmc150_magn_preset* %6, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @BMC150_MAGN_REPZ_TO_REGVAL(i32 %91)
  %93 = call i32 @regmap_write(i32 %88, i32 %89, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %85
  %97 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %98 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.bmc150_magn_preset, %struct.bmc150_magn_preset* %6, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %127

103:                                              ; preds = %85
  %104 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %105 = getelementptr inbounds %struct.bmc150_magn_preset, %struct.bmc150_magn_preset* %6, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.bmc150_magn_preset, %struct.bmc150_magn_preset* %6, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.bmc150_magn_preset, %struct.bmc150_magn_preset* %6, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bmc150_magn_set_max_odr(%struct.bmc150_magn_data* %104, i32 %106, i32 %108, i32 %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %127

115:                                              ; preds = %103
  %116 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %117 = load i32, i32* @BMC150_MAGN_POWER_MODE_NORMAL, align 4
  %118 = call i32 @bmc150_magn_set_power_mode(%struct.bmc150_magn_data* %116, i32 %117, i32 1)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %123 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %127

126:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %132

127:                                              ; preds = %121, %114, %96, %78, %60, %35, %26
  %128 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %3, align 8
  %129 = load i32, i32* @BMC150_MAGN_POWER_MODE_SUSPEND, align 4
  %130 = call i32 @bmc150_magn_set_power_mode(%struct.bmc150_magn_data* %128, i32 %129, i32 1)
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %127, %126, %12
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @bmc150_magn_set_power_mode(%struct.bmc150_magn_data*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bmc150_magn_set_odr(%struct.bmc150_magn_data*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @BMC150_MAGN_REPXY_TO_REGVAL(i32) #1

declare dso_local i32 @BMC150_MAGN_REPZ_TO_REGVAL(i32) #1

declare dso_local i32 @bmc150_magn_set_max_odr(%struct.bmc150_magn_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
