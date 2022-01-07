; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-wmt.c_wmt_i2c_reset_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-wmt.c_wmt_i2c_reset_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmt_i2c_dev = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to set clock = 20Mhz\0A\00", align 1
@REG_CR = common dso_local global i64 0, align 8
@MCR_APB_166M = common dso_local global i32 0, align 4
@REG_MCR = common dso_local global i64 0, align 8
@ISR_WRITE_ALL = common dso_local global i32 0, align 4
@REG_ISR = common dso_local global i64 0, align 8
@IMR_ENABLE_ALL = common dso_local global i32 0, align 4
@REG_IMR = common dso_local global i64 0, align 8
@CR_ENABLE = common dso_local global i32 0, align 4
@REG_CSR = common dso_local global i64 0, align 8
@I2C_MODE_STANDARD = common dso_local global i64 0, align 8
@TR_STD = common dso_local global i32 0, align 4
@REG_TR = common dso_local global i64 0, align 8
@TR_HS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmt_i2c_dev*)* @wmt_i2c_reset_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_i2c_reset_hardware(%struct.wmt_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wmt_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.wmt_i2c_dev* %0, %struct.wmt_i2c_dev** %3, align 8
  %5 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %6 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %13 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %108

17:                                               ; preds = %1
  %18 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %19 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clk_set_rate(i32 %20, i32 20000000)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %26 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %30 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %108

34:                                               ; preds = %17
  %35 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %36 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_CR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writew(i32 0, i64 %39)
  %41 = load i32, i32* @MCR_APB_166M, align 4
  %42 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %43 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REG_MCR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writew(i32 %41, i64 %46)
  %48 = load i32, i32* @ISR_WRITE_ALL, align 4
  %49 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %50 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REG_ISR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writew(i32 %48, i64 %53)
  %55 = load i32, i32* @IMR_ENABLE_ALL, align 4
  %56 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %57 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REG_IMR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writew(i32 %55, i64 %60)
  %62 = load i32, i32* @CR_ENABLE, align 4
  %63 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %64 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @REG_CR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writew(i32 %62, i64 %67)
  %69 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %70 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @REG_CSR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readw(i64 %73)
  %75 = load i32, i32* @ISR_WRITE_ALL, align 4
  %76 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %77 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @REG_ISR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writew(i32 %75, i64 %80)
  %82 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %83 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @I2C_MODE_STANDARD, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %34
  %88 = call i32 @SCL_TIMEOUT(i32 128)
  %89 = load i32, i32* @TR_STD, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %92 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @REG_TR, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writew(i32 %90, i64 %95)
  br label %107

97:                                               ; preds = %34
  %98 = call i32 @SCL_TIMEOUT(i32 128)
  %99 = load i32, i32* @TR_HS, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.wmt_i2c_dev*, %struct.wmt_i2c_dev** %3, align 8
  %102 = getelementptr inbounds %struct.wmt_i2c_dev, %struct.wmt_i2c_dev* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @REG_TR, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writew(i32 %100, i64 %105)
  br label %107

107:                                              ; preds = %97, %87
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %24, %11
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @SCL_TIMEOUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
