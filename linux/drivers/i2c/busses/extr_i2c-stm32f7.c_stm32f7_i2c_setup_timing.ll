; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_setup_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_setup_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.stm32f7_i2c_dev = type { i64, i32, i32, i32 }
%struct.stm32f7_i2c_setup = type { i64, i8*, i32, i64, i32, i32, i32 }

@i2c_specs = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"clock rate is 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to compute I2C timings.\0A\00", align 1
@STM32_I2C_SPEED_STANDARD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"downgrade I2C Speed Freq to (%i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Impossible to compute I2C timings.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"I2C Speed(%i), Freq(%i), Clk Source(%i)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"I2C Rise(%i) and Fall(%i) Time\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"I2C Analog Filter(%s), DNF(%i)\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_setup*)* @stm32f7_i2c_setup_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f7_i2c_setup_timing(%struct.stm32f7_i2c_dev* %0, %struct.stm32f7_i2c_setup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32f7_i2c_dev*, align 8
  %5 = alloca %struct.stm32f7_i2c_setup*, align 8
  %6 = alloca i32, align 4
  store %struct.stm32f7_i2c_dev* %0, %struct.stm32f7_i2c_dev** %4, align 8
  store %struct.stm32f7_i2c_setup* %1, %struct.stm32f7_i2c_setup** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %8 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %11 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2c_specs, align 8
  %13 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %14 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %20 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %22 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_get_rate(i32 %23)
  %25 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %26 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %28 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %33 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %139

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %90, %38
  %40 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %41 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %42 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %43 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %42, i32 0, i32 2
  %44 = call i32 @stm32f7_i2c_compute_timing(%struct.stm32f7_i2c_dev* %40, %struct.stm32f7_i2c_setup* %41, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %39
  %48 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %49 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %53 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @STM32_I2C_SPEED_STANDARD, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %47
  %58 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %59 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %63 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %66 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2c_specs, align 8
  %68 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %69 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %75 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %77 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i2c_specs, align 8
  %80 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %81 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_warn(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %88

87:                                               ; preds = %47
  br label %93

88:                                               ; preds = %57
  br label %89

89:                                               ; preds = %88, %39
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %39, label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %98 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %139

102:                                              ; preds = %93
  %103 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %104 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %107 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %110 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %113 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %108, i32 %111, i32 %114)
  %116 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %117 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %120 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %123 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, ...) @dev_dbg(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %121, i32 %124)
  %126 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %127 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %130 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %135 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %136 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @dev_dbg(i32 %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %134, i32 %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %102, %96, %31
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stm32f7_i2c_compute_timing(%struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_setup*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
