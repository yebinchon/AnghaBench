; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_adm1275.c_adm1275_write_pmon_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_adm1275.c_adm1275_write_pmon_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1275_data = type { i64 }
%struct.i2c_client = type { i32 }

@ADM1275_PMON_CONFIG = common dso_local global i32 0, align 4
@ADM1278_PWR_AVG_MASK = common dso_local global i32 0, align 4
@ADM1278_VI_AVG_MASK = common dso_local global i32 0, align 4
@ADM1278_PWR_AVG_SHIFT = common dso_local global i32 0, align 4
@ADM1278_VI_AVG_SHIFT = common dso_local global i32 0, align 4
@ADM1275_VI_AVG_MASK = common dso_local global i32 0, align 4
@ADM1275_VI_AVG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adm1275_data*, %struct.i2c_client*, i32, i32)* @adm1275_write_pmon_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1275_write_pmon_config(%struct.adm1275_data* %0, %struct.i2c_client* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adm1275_data*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adm1275_data* %0, %struct.adm1275_data** %6, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.adm1275_data*, %struct.adm1275_data** %6, align 8
  %14 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %19 = load i32, i32* @ADM1275_PMON_CONFIG, align 4
  %20 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @ADM1278_PWR_AVG_MASK, align 4
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @ADM1278_VI_AVG_MASK, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ADM1278_PWR_AVG_SHIFT, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ADM1278_VI_AVG_SHIFT, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %10, align 4
  br label %43

37:                                               ; preds = %4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %39 = load i32, i32* @ADM1275_PMON_CONFIG, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @ADM1275_VI_AVG_MASK, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @ADM1275_VI_AVG_SHIFT, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %37, %35
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %75

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %55, %56
  %58 = or i32 %52, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.adm1275_data*, %struct.adm1275_data** %6, align 8
  %60 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %65 = load i32, i32* @ADM1275_PMON_CONFIG, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %64, i32 %65, i32 %66)
  store i32 %67, i32* %11, align 4
  br label %73

68:                                               ; preds = %48
  %69 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %70 = load i32, i32* @ADM1275_PMON_CONFIG, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %69, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %46
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
