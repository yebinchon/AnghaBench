; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_update_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_update_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ltc4245_data = type { i32*, i32*, i32*, i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@LTC4245_GPIOADC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@LTC4245_GPIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ltc4245_update_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltc4245_update_gpios(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ltc4245_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.ltc4245_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.ltc4245_data* %10, %struct.ltc4245_data** %3, align 8
  %11 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %12 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %11, i32 0, i32 5
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %15 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %1
  %19 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %20 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @LTC4245_GPIOADC, align 4
  %23 = sub nsw i32 %22, 16
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %28 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  br label %120

31:                                               ; preds = %1
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %34 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 5, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i64 @time_after(i32 %32, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %46 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  %53 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %54 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %43

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %31
  %64 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %65 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @LTC4245_GPIO, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 192
  %71 = ashr i32 %70, 6
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %63
  %78 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %79 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @LTC4245_GPIOADC, align 4
  %82 = sub nsw i32 %81, 16
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %87 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  %94 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %95 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @ARRAY_SIZE(i32* %96)
  %98 = srem i32 %93, %97
  store i32 %98, i32* %6, align 4
  %99 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %100 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @LTC4245_GPIO, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 63
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  %108 = shl i32 %107, 6
  %109 = or i32 %105, %108
  store i32 %109, i32* %7, align 4
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = load i64, i64* @LTC4245_GPIO, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %110, i64 %111, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.ltc4245_data*, %struct.ltc4245_data** %3, align 8
  %116 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @LTC4245_GPIO, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 %114, i32* %119, align 4
  br label %120

120:                                              ; preds = %77, %18
  ret void
}

declare dso_local %struct.ltc4245_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
