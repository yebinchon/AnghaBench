; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_start_sampling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_start_sampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu3050 = type { i32, i32, i32, i32, i32* }

@MPU3050_PWR_MGM = common dso_local global i32 0, align 4
@MPU3050_PWR_MGM_RESET = common dso_local global i32 0, align 4
@MPU3050_PWR_MGM_CLKSEL_MASK = common dso_local global i32 0, align 4
@MPU3050_PWR_MGM_PLL_Z = common dso_local global i32 0, align 4
@MPU3050_X_OFFS_USR_H = common dso_local global i32 0, align 4
@MPU3050_DLPF_FS_SYNC = common dso_local global i32 0, align 4
@MPU3050_EXT_SYNC_NONE = common dso_local global i32 0, align 4
@MPU3050_EXT_SYNC_SHIFT = common dso_local global i32 0, align 4
@MPU3050_FS_SHIFT = common dso_local global i32 0, align 4
@MPU3050_DLPF_CFG_SHIFT = common dso_local global i32 0, align 4
@MPU3050_SMPLRT_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpu3050*)* @mpu3050_start_sampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_start_sampling(%struct.mpu3050* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpu3050*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mpu3050* %0, %struct.mpu3050** %3, align 8
  %7 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %8 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MPU3050_PWR_MGM, align 4
  %11 = load i32, i32* @MPU3050_PWR_MGM_RESET, align 4
  %12 = load i32, i32* @MPU3050_PWR_MGM_RESET, align 4
  %13 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %104

18:                                               ; preds = %1
  %19 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %20 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MPU3050_PWR_MGM, align 4
  %23 = load i32, i32* @MPU3050_PWR_MGM_CLKSEL_MASK, align 4
  %24 = load i32, i32* @MPU3050_PWR_MGM_PLL_Z, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %104

30:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %36 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_be16(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %44
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %31

49:                                               ; preds = %31
  %50 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %51 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MPU3050_X_OFFS_USR_H, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %55 = call i32 @regmap_bulk_write(i32 %52, i32 %53, i32* %54, i32 12)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %104

60:                                               ; preds = %49
  %61 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %62 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MPU3050_DLPF_FS_SYNC, align 4
  %65 = load i32, i32* @MPU3050_EXT_SYNC_NONE, align 4
  %66 = load i32, i32* @MPU3050_EXT_SYNC_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %69 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MPU3050_FS_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %67, %72
  %74 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %75 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MPU3050_DLPF_CFG_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %73, %78
  %80 = call i32 @regmap_write(i32 %63, i32 %64, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %60
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %104

85:                                               ; preds = %60
  %86 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %87 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MPU3050_SMPLRT_DIV, align 4
  %90 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %91 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @regmap_write(i32 %88, i32 %89, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %104

98:                                               ; preds = %85
  %99 = load %struct.mpu3050*, %struct.mpu3050** %3, align 8
  %100 = call i32 @mpu3050_get_freq(%struct.mpu3050* %99)
  %101 = sdiv i32 1000, %100
  %102 = add nsw i32 50, %101
  %103 = call i32 @msleep(i32 %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %96, %83, %58, %28, %16
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mpu3050_get_freq(%struct.mpu3050*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
