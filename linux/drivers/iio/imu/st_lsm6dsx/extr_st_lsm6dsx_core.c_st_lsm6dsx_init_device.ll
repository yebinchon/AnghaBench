; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ST_LSM6DSX_REG_RESET_MASK = common dso_local global i32 0, align 4
@ST_LSM6DSX_REG_BOOT_MASK = common dso_local global i32 0, align 4
@ST_LSM6DSX_REG_BDU_ADDR = common dso_local global i32 0, align 4
@ST_LSM6DSX_REG_BDU_MASK = common dso_local global i32 0, align 4
@ST_LSM6DSX_REG_FIFO_FTH_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_hw*)* @st_lsm6dsx_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_init_device(%struct.st_lsm6dsx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_lsm6dsx_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %3, align 8
  %6 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %7 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %10 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ST_LSM6DSX_REG_RESET_MASK, align 4
  %15 = load i32, i32* @ST_LSM6DSX_REG_RESET_MASK, align 4
  %16 = call i32 @FIELD_PREP(i32 %15, i32 1)
  %17 = call i32 @regmap_update_bits(i32 %8, i32 %13, i32 %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %84

22:                                               ; preds = %1
  %23 = call i32 @msleep(i32 50)
  %24 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %25 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %28 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ST_LSM6DSX_REG_BOOT_MASK, align 4
  %33 = load i32, i32* @ST_LSM6DSX_REG_BOOT_MASK, align 4
  %34 = call i32 @FIELD_PREP(i32 %33, i32 1)
  %35 = call i32 @regmap_update_bits(i32 %26, i32 %31, i32 %32, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %84

40:                                               ; preds = %22
  %41 = call i32 @msleep(i32 50)
  %42 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %43 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ST_LSM6DSX_REG_BDU_ADDR, align 4
  %46 = load i32, i32* @ST_LSM6DSX_REG_BDU_MASK, align 4
  %47 = load i32, i32* @ST_LSM6DSX_REG_BDU_MASK, align 4
  %48 = call i32 @FIELD_PREP(i32 %47, i32 1)
  %49 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %84

54:                                               ; preds = %40
  %55 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %56 = call i32 @st_lsm6dsx_get_drdy_reg(%struct.st_lsm6dsx_hw* %55, i32* %4)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %84

61:                                               ; preds = %54
  %62 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %63 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @ST_LSM6DSX_REG_FIFO_FTH_IRQ_MASK, align 4
  %67 = load i32, i32* @ST_LSM6DSX_REG_FIFO_FTH_IRQ_MASK, align 4
  %68 = call i32 @FIELD_PREP(i32 %67, i32 1)
  %69 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %66, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %84

74:                                               ; preds = %61
  %75 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %76 = call i32 @st_lsm6dsx_init_shub(%struct.st_lsm6dsx_hw* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %84

81:                                               ; preds = %74
  %82 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %83 = call i32 @st_lsm6dsx_init_hw_timer(%struct.st_lsm6dsx_hw* %82)
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %79, %72, %59, %52, %38, %20
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @st_lsm6dsx_get_drdy_reg(%struct.st_lsm6dsx_hw*, i32*) #1

declare dso_local i32 @st_lsm6dsx_init_shub(%struct.st_lsm6dsx_hw*) #1

declare dso_local i32 @st_lsm6dsx_init_hw_timer(%struct.st_lsm6dsx_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
