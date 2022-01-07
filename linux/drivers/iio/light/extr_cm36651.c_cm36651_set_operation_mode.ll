; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_set_operation_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm36651.c_cm36651_set_operation_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm36651_data = type { i32*, i32*, i32, %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CM36651_CS_CONF1 = common dso_local global i64 0, align 8
@CM36651_PROXIMITY_EV_EN = common dso_local global i32 0, align 4
@CM36651_PS_CONF1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Already proximity event enable state\0A\00", align 1
@cm36651_ps_reg = common dso_local global i64* null, align 8
@CM36651_PS_INT_EN = common dso_local global i32 0, align 4
@CM36651_PS_PERS2 = common dso_local global i32 0, align 4
@CM36651_PS_IT2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Proximity enable event failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Already proximity event disable state\0A\00", align 1
@CM36651_PS_DISABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Write register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm36651_data*, i32)* @cm36651_set_operation_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm36651_set_operation_mode(%struct.cm36651_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cm36651_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.cm36651_data* %0, %struct.cm36651_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cm36651_data*, %struct.cm36651_data** %4, align 8
  %10 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %9, i32 0, i32 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.cm36651_data*, %struct.cm36651_data** %4, align 8
  %13 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %12, i32 0, i32 3
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %101 [
    i32 129, label %18
    i32 128, label %28
    i32 130, label %46
    i32 131, label %81
  ]

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = load i64, i64* @CM36651_CS_CONF1, align 8
  %21 = load %struct.cm36651_data*, %struct.cm36651_data** %4, align 8
  %22 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @CM36651_CS_CONF1, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %19, i64 %20, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %101

28:                                               ; preds = %2
  %29 = load i32, i32* @CM36651_PROXIMITY_EV_EN, align 4
  %30 = load %struct.cm36651_data*, %struct.cm36651_data** %4, align 8
  %31 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %30, i32 0, i32 2
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @CM36651_PROXIMITY_EV_EN, align 4
  store i32 %35, i32* %3, align 4
  br label %110

36:                                               ; preds = %28
  %37 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %38 = load i64, i64* @CM36651_PS_CONF1, align 8
  %39 = load %struct.cm36651_data*, %struct.cm36651_data** %4, align 8
  %40 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @CM36651_PS_CONF1, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %37, i64 %38, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %101

46:                                               ; preds = %2
  %47 = load i32, i32* @CM36651_PROXIMITY_EV_EN, align 4
  %48 = load %struct.cm36651_data*, %struct.cm36651_data** %4, align 8
  %49 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %48, i32 0, i32 2
  %50 = call i32 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %110

57:                                               ; preds = %46
  %58 = load i32, i32* @CM36651_PROXIMITY_EV_EN, align 4
  %59 = load %struct.cm36651_data*, %struct.cm36651_data** %4, align 8
  %60 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %59, i32 0, i32 2
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %63 = load i64*, i64** @cm36651_ps_reg, align 8
  %64 = load i64, i64* @CM36651_PS_CONF1, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @CM36651_PS_INT_EN, align 4
  %68 = load i32, i32* @CM36651_PS_PERS2, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CM36651_PS_IT2, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %62, i64 %66, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %57
  %76 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %110

80:                                               ; preds = %57
  br label %101

81:                                               ; preds = %2
  %82 = load i32, i32* @CM36651_PROXIMITY_EV_EN, align 4
  %83 = load %struct.cm36651_data*, %struct.cm36651_data** %4, align 8
  %84 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %83, i32 0, i32 2
  %85 = call i32 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %110

92:                                               ; preds = %81
  %93 = load i32, i32* @CM36651_PROXIMITY_EV_EN, align 4
  %94 = load %struct.cm36651_data*, %struct.cm36651_data** %4, align 8
  %95 = getelementptr inbounds %struct.cm36651_data, %struct.cm36651_data* %94, i32 0, i32 2
  %96 = call i32 @clear_bit(i32 %93, i32* %95)
  %97 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %98 = load i64, i64* @CM36651_PS_CONF1, align 8
  %99 = load i32, i32* @CM36651_PS_DISABLE, align 4
  %100 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %97, i64 %98, i32 %99)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %2, %92, %80, %36, %18
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %87, %75, %52, %34
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
