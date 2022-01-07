; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_is_tripped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_is_tripped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm90_data = type { i64 }

@LM90_REG_R_STATUS = common dso_local global i32 0, align 4
@max6696 = common dso_local global i64 0, align 8
@MAX6696_REG_R_STATUS2 = common dso_local global i32 0, align 4
@LM90_STATUS_LLOW = common dso_local global i32 0, align 4
@LM90_STATUS_LHIGH = common dso_local global i32 0, align 4
@LM90_STATUS_LTHRM = common dso_local global i32 0, align 4
@MAX6696_STATUS2_LOT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"temp%d out of range, please check!\0A\00", align 1
@LM90_STATUS_RLOW = common dso_local global i32 0, align 4
@LM90_STATUS_RHIGH = common dso_local global i32 0, align 4
@LM90_STATUS_RTHRM = common dso_local global i32 0, align 4
@MAX6696_STATUS2_ROT2 = common dso_local global i32 0, align 4
@LM90_STATUS_ROPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"temp%d diode open, please check!\0A\00", align 1
@MAX6696_STATUS2_R2LOW = common dso_local global i32 0, align 4
@MAX6696_STATUS2_R2HIGH = common dso_local global i32 0, align 4
@MAX6696_STATUS2_R2THRM = common dso_local global i32 0, align 4
@MAX6696_STATUS2_R2OT2 = common dso_local global i32 0, align 4
@MAX6696_STATUS2_R2OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32*)* @lm90_is_tripped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_is_tripped(%struct.i2c_client* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lm90_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = call %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.lm90_data* %10, %struct.lm90_data** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = load i32, i32* @LM90_REG_R_STATUS, align 4
  %13 = call i32 @lm90_read_reg(%struct.i2c_client* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %115

17:                                               ; preds = %2
  %18 = load %struct.lm90_data*, %struct.lm90_data** %6, align 8
  %19 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @max6696, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* @MAX6696_REG_R_STATUS2, align 4
  %26 = call i32 @lm90_read_reg(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %115

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %32, %34
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 127
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 254
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %115

45:                                               ; preds = %40, %31
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @LM90_STATUS_LLOW, align 4
  %48 = load i32, i32* @LM90_STATUS_LHIGH, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @LM90_STATUS_LTHRM, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %46, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @MAX6696_STATUS2_LOT2, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %45
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 @dev_warn(i32* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @LM90_STATUS_RLOW, align 4
  %66 = load i32, i32* @LM90_STATUS_RHIGH, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @LM90_STATUS_RTHRM, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %64, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MAX6696_STATUS2_ROT2, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72, %63
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = call i32 @dev_warn(i32* %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @LM90_STATUS_ROPEN, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 @dev_warn(i32* %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @MAX6696_STATUS2_R2LOW, align 4
  %93 = load i32, i32* @MAX6696_STATUS2_R2HIGH, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @MAX6696_STATUS2_R2THRM, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @MAX6696_STATUS2_R2OT2, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %91, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 @dev_warn(i32* %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 3)
  br label %105

105:                                              ; preds = %101, %90
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @MAX6696_STATUS2_R2OPEN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = call i32 @dev_warn(i32* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 3)
  br label %114

114:                                              ; preds = %110, %105
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %44, %29, %16
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @lm90_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
