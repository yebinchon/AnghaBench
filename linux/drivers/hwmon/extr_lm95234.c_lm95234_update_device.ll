; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm95234_data = type { i32, i32, i32, i64, i32*, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LM95234_REG_STS_FAULT = common dso_local global i32 0, align 4
@LM95234_REG_STS_TCRIT1 = common dso_local global i32 0, align 4
@LM95234_REG_STS_TCRIT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm95234_data*)* @lm95234_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95234_update_device(%struct.lm95234_data* %0) #0 {
  %2 = alloca %struct.lm95234_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm95234_data* %0, %struct.lm95234_data** %2, align 8
  %6 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %7 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %6, i32 0, i32 6
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %10 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %14 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %17 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = call i64 @time_after(i64 %12, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %24 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %109, label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %29 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = call i32 @lm95234_fill_cache(%struct.lm95234_data* %33, %struct.i2c_client* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %110

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %42 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %64, %40
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %46 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %54 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @lm95234_read_temp(%struct.i2c_client* %51, i32 %52, i32* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %110

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %69 = load i32, i32* @LM95234_REG_STS_FAULT, align 4
  %70 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %110

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %77 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %79 = load i32, i32* @LM95234_REG_STS_TCRIT1, align 4
  %80 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %110

84:                                               ; preds = %74
  %85 = load i32, i32* %4, align 4
  %86 = shl i32 %85, 8
  %87 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %88 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = load i32, i32* @LM95234_REG_STS_TCRIT2, align 4
  %93 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %110

97:                                               ; preds = %84
  %98 = load i32, i32* %4, align 4
  %99 = shl i32 %98, 16
  %100 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %101 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i64, i64* @jiffies, align 8
  %105 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %106 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %105, i32 0, i32 3
  store i64 %104, i64* %106, align 8
  %107 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %108 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %97, %22
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %96, %83, %73, %62, %38
  %111 = load %struct.lm95234_data*, %struct.lm95234_data** %2, align 8
  %112 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %111, i32 0, i32 2
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @lm95234_fill_cache(%struct.lm95234_data*, %struct.i2c_client*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @lm95234_read_temp(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
