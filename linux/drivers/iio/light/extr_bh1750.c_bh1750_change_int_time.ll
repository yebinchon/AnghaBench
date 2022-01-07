; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1750.c_bh1750_change_int_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1750.c_bh1750_change_int_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1750_data = type { i32, i32, %struct.bh1750_chip_info* }
%struct.bh1750_chip_info = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BH1750_POWER_DOWN = common dso_local global i32 0, align 4
@BH1750_CHANGE_INT_TIME_H_BIT = common dso_local global i32 0, align 4
@BH1750_CHANGE_INT_TIME_L_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh1750_data*, i32)* @bh1750_change_int_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1750_change_int_time(%struct.bh1750_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bh1750_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bh1750_chip_info*, align 8
  store %struct.bh1750_data* %0, %struct.bh1750_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bh1750_data*, %struct.bh1750_data** %4, align 8
  %11 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %10, i32 0, i32 2
  %12 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %11, align 8
  store %struct.bh1750_chip_info* %12, %struct.bh1750_chip_info** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %9, align 8
  %15 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = srem i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %91

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %9, align 8
  %25 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %9, align 8
  %30 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %9, align 8
  %36 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %22
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %91

42:                                               ; preds = %33
  %43 = load %struct.bh1750_data*, %struct.bh1750_data** %4, align 8
  %44 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BH1750_POWER_DOWN, align 4
  %47 = call i32 @i2c_smbus_write_byte(i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %91

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %9, align 8
  %55 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = ashr i32 %57, 5
  store i32 %58, i32* %8, align 4
  %59 = load %struct.bh1750_data*, %struct.bh1750_data** %4, align 8
  %60 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BH1750_CHANGE_INT_TIME_H_BIT, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @i2c_smbus_write_byte(i32 %61, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %91

70:                                               ; preds = %52
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %9, align 8
  %73 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %71, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.bh1750_data*, %struct.bh1750_data** %4, align 8
  %77 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BH1750_CHANGE_INT_TIME_L_BIT, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @i2c_smbus_write_byte(i32 %78, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %91

87:                                               ; preds = %70
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.bh1750_data*, %struct.bh1750_data** %4, align 8
  %90 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %85, %68, %50, %39, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @i2c_smbus_write_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
