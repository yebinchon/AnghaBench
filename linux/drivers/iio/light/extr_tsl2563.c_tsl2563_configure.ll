; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsl2563_chip = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TSL2563_CMD = common dso_local global i32 0, align 4
@TSL2563_REG_TIMING = common dso_local global i32 0, align 4
@TSL2563_REG_HIGHLOW = common dso_local global i32 0, align 4
@TSL2563_REG_HIGHHIGH = common dso_local global i32 0, align 4
@TSL2563_REG_LOWLOW = common dso_local global i32 0, align 4
@TSL2563_REG_LOWHIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsl2563_chip*)* @tsl2563_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2563_configure(%struct.tsl2563_chip* %0) #0 {
  %2 = alloca %struct.tsl2563_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.tsl2563_chip* %0, %struct.tsl2563_chip** %2, align 8
  %4 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %5 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @TSL2563_CMD, align 4
  %8 = load i32, i32* @TSL2563_REG_TIMING, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %11 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @i2c_smbus_write_byte_data(i32 %6, i32 %9, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %78

19:                                               ; preds = %1
  %20 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %21 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TSL2563_CMD, align 4
  %24 = load i32, i32* @TSL2563_REG_HIGHLOW, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %27 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 255
  %30 = call i32 @i2c_smbus_write_byte_data(i32 %22, i32 %25, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %78

34:                                               ; preds = %19
  %35 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %36 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TSL2563_CMD, align 4
  %39 = load i32, i32* @TSL2563_REG_HIGHHIGH, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %42 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = call i32 @i2c_smbus_write_byte_data(i32 %37, i32 %40, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %78

50:                                               ; preds = %34
  %51 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %52 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TSL2563_CMD, align 4
  %55 = load i32, i32* @TSL2563_REG_LOWLOW, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %58 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 255
  %61 = call i32 @i2c_smbus_write_byte_data(i32 %53, i32 %56, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %78

65:                                               ; preds = %50
  %66 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %67 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TSL2563_CMD, align 4
  %70 = load i32, i32* @TSL2563_REG_LOWHIGH, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %73 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = call i32 @i2c_smbus_write_byte_data(i32 %68, i32 %71, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %65, %64, %49, %33, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
