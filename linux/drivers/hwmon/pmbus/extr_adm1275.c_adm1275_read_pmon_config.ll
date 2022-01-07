; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_adm1275.c_adm1275_read_pmon_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_adm1275.c_adm1275_read_pmon_config.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adm1275_data*, %struct.i2c_client*, i32)* @adm1275_read_pmon_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1275_read_pmon_config(%struct.adm1275_data* %0, %struct.i2c_client* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adm1275_data*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adm1275_data* %0, %struct.adm1275_data** %5, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.adm1275_data*, %struct.adm1275_data** %5, align 8
  %12 = getelementptr inbounds %struct.adm1275_data, %struct.adm1275_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %17 = load i32, i32* @ADM1275_PMON_CONFIG, align 4
  %18 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @ADM1278_PWR_AVG_MASK, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @ADM1278_VI_AVG_MASK, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @ADM1278_PWR_AVG_SHIFT, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ADM1278_VI_AVG_SHIFT, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %8, align 4
  br label %41

35:                                               ; preds = %3
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = load i32, i32* @ADM1275_PMON_CONFIG, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @ADM1275_VI_AVG_MASK, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @ADM1275_VI_AVG_SHIFT, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %35, %33
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %44
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
