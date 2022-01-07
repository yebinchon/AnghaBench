; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_get_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_get_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsl2563_chip = type { i32, i32, %struct.TYPE_2__*, i8*, i8*, i64, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@TSL2563_CMD = common dso_local global i32 0, align 4
@TSL2563_REG_DATA0LOW = common dso_local global i32 0, align 4
@TSL2563_REG_DATA1LOW = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsl2563_chip*)* @tsl2563_get_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2563_get_adc(%struct.tsl2563_chip* %0) #0 {
  %2 = alloca %struct.tsl2563_chip*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tsl2563_chip* %0, %struct.tsl2563_chip** %2, align 8
  %8 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %9 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %8, i32 0, i32 6
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %12 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %102

16:                                               ; preds = %1
  %17 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %18 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %23 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %22, i32 0, i32 0
  %24 = call i32 @cancel_delayed_work(i32* %23)
  %25 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %26 = call i32 @tsl2563_get_power(%struct.tsl2563_chip* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %21
  %29 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %30 = call i32 @tsl2563_set_power(%struct.tsl2563_chip* %29, i32 1)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %102

34:                                               ; preds = %28
  %35 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %36 = call i32 @tsl2563_configure(%struct.tsl2563_chip* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %102

40:                                               ; preds = %34
  %41 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %42 = call i32 @tsl2563_wait_adc(%struct.tsl2563_chip* %41)
  br label %43

43:                                               ; preds = %40, %21
  br label %44

44:                                               ; preds = %43, %16
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %50 = load i32, i32* @TSL2563_CMD, align 4
  %51 = load i32, i32* @TSL2563_REG_DATA0LOW, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %49, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %102

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %4, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = load i32, i32* @TSL2563_CMD, align 4
  %61 = load i32, i32* @TSL2563_REG_DATA1LOW, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %59, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %102

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %5, align 4
  %69 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @tsl2563_adjust_gainlevel(%struct.tsl2563_chip* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  br label %45

72:                                               ; preds = %45
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %75 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @tsl2563_normalize_adc(i32 %73, i32 %78)
  %80 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %81 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %84 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @tsl2563_normalize_adc(i32 %82, i32 %87)
  %89 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %90 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %92 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %72
  %96 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %97 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %96, i32 0, i32 0
  %98 = load i32, i32* @HZ, align 4
  %99 = mul nsw i32 5, %98
  %100 = call i32 @schedule_delayed_work(i32* %97, i32 %99)
  br label %101

101:                                              ; preds = %95, %72
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %66, %56, %39, %33, %15
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @tsl2563_get_power(%struct.tsl2563_chip*) #1

declare dso_local i32 @tsl2563_set_power(%struct.tsl2563_chip*, i32) #1

declare dso_local i32 @tsl2563_configure(%struct.tsl2563_chip*) #1

declare dso_local i32 @tsl2563_wait_adc(%struct.tsl2563_chip*) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @tsl2563_adjust_gainlevel(%struct.tsl2563_chip*, i32) #1

declare dso_local i8* @tsl2563_normalize_adc(i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
