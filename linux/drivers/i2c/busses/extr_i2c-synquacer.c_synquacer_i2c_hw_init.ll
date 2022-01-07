; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_i2c = type { i32, i64, i32 }

@SYNQUACER_I2C_REG_ADR = common dso_local global i64 0, align 8
@SYNQUACER_I2C_REG_FSR = common dso_local global i64 0, align 8
@SYNQUACER_I2C_CLK_RATE_18M = common dso_local global i32 0, align 4
@SYNQUACER_I2C_CCR_FM = common dso_local global i8 0, align 1
@SYNQUACER_I2C_CCR_EN = common dso_local global i8 0, align 1
@SYNQUACER_I2C_REG_CCR = common dso_local global i64 0, align 8
@SYNQUACER_I2C_REG_CSR = common dso_local global i64 0, align 8
@SYNQUACER_I2C_REG_BCR = common dso_local global i64 0, align 8
@SYNQUACER_I2C_REG_BC2R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synquacer_i2c*)* @synquacer_i2c_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synquacer_i2c_hw_init(%struct.synquacer_i2c* %0) #0 {
  %2 = alloca %struct.synquacer_i2c*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.synquacer_i2c* %0, %struct.synquacer_i2c** %2, align 8
  %6 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %7 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %10 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SYNQUACER_I2C_REG_ADR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writeb(i8 zeroext 0, i64 %13)
  %15 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %16 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call zeroext i8 @SYNQUACER_I2C_BUS_CLK_FR(i32 %17)
  %19 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %20 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SYNQUACER_I2C_REG_FSR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writeb(i8 zeroext %18, i64 %23)
  %25 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %26 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %103 [
    i32 129, label %28
    i32 128, label %67
  ]

28:                                               ; preds = %1
  %29 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %30 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SYNQUACER_I2C_CLK_RATE_18M, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = call zeroext i8 @SYNQUACER_I2C_CCR_CS_FAST_MAX_18M(i32 %35)
  store i8 %36, i8* %3, align 1
  %37 = load i32, i32* %5, align 4
  %38 = call zeroext i8 @SYNQUACER_I2C_CSR_CS_FAST_MAX_18M(i32 %37)
  store i8 %38, i8* %4, align 1
  br label %44

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = call zeroext i8 @SYNQUACER_I2C_CCR_CS_FAST_MIN_18M(i32 %40)
  store i8 %41, i8* %3, align 1
  %42 = load i32, i32* %5, align 4
  %43 = call zeroext i8 @SYNQUACER_I2C_CSR_CS_FAST_MIN_18M(i32 %42)
  store i8 %43, i8* %4, align 1
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i8, i8* %3, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @SYNQUACER_I2C_CCR_FM, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %46, %48
  %50 = load i8, i8* @SYNQUACER_I2C_CCR_EN, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %49, %51
  %53 = trunc i32 %52 to i8
  %54 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %55 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SYNQUACER_I2C_REG_CCR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writeb(i8 zeroext %53, i64 %58)
  %60 = load i8, i8* %4, align 1
  %61 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %62 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SYNQUACER_I2C_REG_CSR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writeb(i8 zeroext %60, i64 %65)
  br label %105

67:                                               ; preds = %1
  %68 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %69 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SYNQUACER_I2C_CLK_RATE_18M, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = call zeroext i8 @SYNQUACER_I2C_CCR_CS_STD_MAX_18M(i32 %74)
  store i8 %75, i8* %3, align 1
  %76 = load i32, i32* %5, align 4
  %77 = call zeroext i8 @SYNQUACER_I2C_CSR_CS_STD_MAX_18M(i32 %76)
  store i8 %77, i8* %4, align 1
  br label %83

78:                                               ; preds = %67
  %79 = load i32, i32* %5, align 4
  %80 = call zeroext i8 @SYNQUACER_I2C_CCR_CS_STD_MIN_18M(i32 %79)
  store i8 %80, i8* %3, align 1
  %81 = load i32, i32* %5, align 4
  %82 = call zeroext i8 @SYNQUACER_I2C_CSR_CS_STD_MIN_18M(i32 %81)
  store i8 %82, i8* %4, align 1
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i8, i8* %3, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @SYNQUACER_I2C_CCR_EN, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %85, %87
  %89 = trunc i32 %88 to i8
  %90 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %91 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SYNQUACER_I2C_REG_CCR, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writeb(i8 zeroext %89, i64 %94)
  %96 = load i8, i8* %4, align 1
  %97 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %98 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SYNQUACER_I2C_REG_CSR, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writeb(i8 zeroext %96, i64 %101)
  br label %105

103:                                              ; preds = %1
  %104 = call i32 @WARN_ON(i32 1)
  br label %105

105:                                              ; preds = %103, %83, %44
  %106 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %107 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SYNQUACER_I2C_REG_BCR, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writeb(i8 zeroext 0, i64 %110)
  %112 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %113 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SYNQUACER_I2C_REG_BC2R, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writeb(i8 zeroext 0, i64 %116)
  ret void
}

declare dso_local i32 @writeb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @SYNQUACER_I2C_BUS_CLK_FR(i32) #1

declare dso_local zeroext i8 @SYNQUACER_I2C_CCR_CS_FAST_MAX_18M(i32) #1

declare dso_local zeroext i8 @SYNQUACER_I2C_CSR_CS_FAST_MAX_18M(i32) #1

declare dso_local zeroext i8 @SYNQUACER_I2C_CCR_CS_FAST_MIN_18M(i32) #1

declare dso_local zeroext i8 @SYNQUACER_I2C_CSR_CS_FAST_MIN_18M(i32) #1

declare dso_local zeroext i8 @SYNQUACER_I2C_CCR_CS_STD_MAX_18M(i32) #1

declare dso_local zeroext i8 @SYNQUACER_I2C_CSR_CS_STD_MAX_18M(i32) #1

declare dso_local zeroext i8 @SYNQUACER_I2C_CCR_CS_STD_MIN_18M(i32) #1

declare dso_local zeroext i8 @SYNQUACER_I2C_CSR_CS_STD_MIN_18M(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
