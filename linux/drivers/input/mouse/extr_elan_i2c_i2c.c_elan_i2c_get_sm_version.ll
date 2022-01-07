; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_get_sm_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_i2c.c_elan_i2c_get_sm_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to get pattern version\0A\00", align 1
@ETP_I2C_IC_TYPE_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to get ic type: %d\0A\00", align 1
@ETP_I2C_NSM_VERSION_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get SM version: %d\0A\00", align 1
@ETP_I2C_OSM_VERSION_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32*, i32*, i32*)* @elan_i2c_get_sm_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_i2c_get_sm_version(%struct.i2c_client* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = call i32 @elan_i2c_get_pattern(%struct.i2c_client* %13, i32* %11)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %100

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %62

25:                                               ; preds = %22
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = load i32, i32* @ETP_I2C_IC_TYPE_CMD, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %29 = call i32 @elan_i2c_read_cmd(%struct.i2c_client* %26, i32 %27, i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %100

38:                                               ; preds = %25
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %40 = call i32 @be16_to_cpup(i32* %39)
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %43 = load i32, i32* @ETP_I2C_NSM_VERSION_CMD, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %45 = call i32 @elan_i2c_read_cmd(%struct.i2c_client* %42, i32 %43, i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %100

54:                                               ; preds = %38
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 16
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %99

62:                                               ; preds = %22
  %63 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %64 = load i32, i32* @ETP_I2C_OSM_VERSION_CMD, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %66 = call i32 @elan_i2c_read_cmd(%struct.i2c_client* %63, i32 %64, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %100

75:                                               ; preds = %62
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %83 = load i32, i32* @ETP_I2C_NSM_VERSION_CMD, align 4
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %85 = call i32 @elan_i2c_read_cmd(%struct.i2c_client* %82, i32 %83, i32* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %75
  %89 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  br label %100

94:                                               ; preds = %75
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 16
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %54
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %88, %69, %48, %32, %17
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @elan_i2c_get_pattern(%struct.i2c_client*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @elan_i2c_read_cmd(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
