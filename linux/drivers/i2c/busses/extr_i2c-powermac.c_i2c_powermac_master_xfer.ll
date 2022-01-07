; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32 }
%struct.pmac_i2c_bus = type { i32 }

@I2C_M_TEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to open I2C, err %d\0A\00", align 1
@pmac_i2c_mode_std = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set I2C mode %d, err %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"I2C %s 0x%02x failed, err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"read from\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"write to\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_powermac_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_powermac_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmac_i2c_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.pmac_i2c_bus* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.pmac_i2c_bus* %12, %struct.pmac_i2c_bus** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_M_TEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %100

22:                                               ; preds = %3
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %24 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %26 = call i32 @pmac_i2c_open(%struct.pmac_i2c_bus* %25, i32 0)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %100

35:                                               ; preds = %22
  %36 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %37 = load i32, i32* @pmac_i2c_mode_std, align 4
  %38 = call i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* @pmac_i2c_mode_std, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  br label %90

47:                                               ; preds = %35
  %48 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus* %48, i32 %49, i32 0, i32 0, i32 %52, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %72 = load i32, i32* %10, align 4
  %73 = ashr i32 %72, 1
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %71, i32 %73, i32 %74)
  br label %88

76:                                               ; preds = %59
  %77 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %84 = load i32, i32* %10, align 4
  %85 = ashr i32 %84, 1
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %83, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %76, %64
  br label %89

89:                                               ; preds = %88, %47
  br label %90

90:                                               ; preds = %89, %41
  %91 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %92 = call i32 @pmac_i2c_close(%struct.pmac_i2c_bus* %91)
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %9, align 4
  br label %98

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 1, %97 ]
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %29, %19
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.pmac_i2c_bus* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @pmac_i2c_open(%struct.pmac_i2c_bus*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus*, i32) #1

declare dso_local i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @pmac_i2c_close(%struct.pmac_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
