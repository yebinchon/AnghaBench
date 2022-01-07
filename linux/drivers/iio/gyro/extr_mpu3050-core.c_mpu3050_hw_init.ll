; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu3050 = type { i32, i32 }

@MPU3050_PWR_MGM = common dso_local global i32 0, align 4
@MPU3050_PWR_MGM_RESET = common dso_local global i32 0, align 4
@MPU3050_PWR_MGM_CLKSEL_MASK = common dso_local global i32 0, align 4
@MPU3050_PWR_MGM_PLL_Z = common dso_local global i32 0, align 4
@MPU3050_INT_CFG = common dso_local global i32 0, align 4
@MPU3050_MEM_PRFTCH = common dso_local global i32 0, align 4
@MPU3050_MEM_USER_BANK = common dso_local global i32 0, align 4
@MPU3050_MEM_OTP_BANK_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"die ID: %04X, wafer ID: %02X, A lot ID: %04X, W lot ID: %03X, WP ID: %01X, rev ID: %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpu3050*)* @mpu3050_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_hw_init(%struct.mpu3050* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpu3050*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  store %struct.mpu3050* %0, %struct.mpu3050** %3, align 8
  %6 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %7 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MPU3050_PWR_MGM, align 4
  %10 = load i32, i32* @MPU3050_PWR_MGM_RESET, align 4
  %11 = load i32, i32* @MPU3050_PWR_MGM_RESET, align 4
  %12 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %105

17:                                               ; preds = %1
  %18 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %19 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MPU3050_PWR_MGM, align 4
  %22 = load i32, i32* @MPU3050_PWR_MGM_CLKSEL_MASK, align 4
  %23 = load i32, i32* @MPU3050_PWR_MGM_PLL_Z, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %105

29:                                               ; preds = %17
  %30 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %31 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MPU3050_INT_CFG, align 4
  %34 = call i32 @regmap_write(i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %105

39:                                               ; preds = %29
  %40 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %41 = load i32, i32* @MPU3050_MEM_PRFTCH, align 4
  %42 = load i32, i32* @MPU3050_MEM_USER_BANK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MPU3050_MEM_OTP_BANK_0, align 4
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %47 = call i32 @mpu3050_read_mem(%struct.mpu3050* %40, i32 %45, i32 0, i32 32, i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %105

52:                                               ; preds = %39
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %54 = call i32 @add_device_randomness(i32* %53, i32 32)
  %55 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %56 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = or i32 %60, %62
  %64 = and i32 %63, 8191
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 8
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %67, %69
  %71 = and i32 %70, 992
  %72 = ashr i32 %71, 5
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %74 = load i32, i32* %73, align 16
  %75 = shl i32 %74, 16
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %75, %78
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %79, %81
  %83 = and i32 %82, 262140
  %84 = ashr i32 %83, 2
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %89 = load i32, i32* %88, align 16
  %90 = or i32 %87, %89
  %91 = and i32 %90, 16380
  %92 = ashr i32 %91, 2
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %94 = load i32, i32* %93, align 8
  %95 = shl i32 %94, 8
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %95, %97
  %99 = and i32 %98, 896
  %100 = ashr i32 %99, 7
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %102 = load i32, i32* %101, align 8
  %103 = ashr i32 %102, 2
  %104 = call i32 @dev_info(i32 %57, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %72, i32 %84, i32 %92, i32 %100, i32 %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %52, %50, %37, %27, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mpu3050_read_mem(%struct.mpu3050*, i32, i32, i32, i32*) #1

declare dso_local i32 @add_device_randomness(i32*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
