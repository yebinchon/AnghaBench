; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_alarm_mask_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_alarm_mask_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1026_data = type { i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADM1026_REG_MASK1 = common dso_local global i32 0, align 4
@ADM1026_REG_MASK2 = common dso_local global i32 0, align 4
@ADM1026_REG_MASK3 = common dso_local global i32 0, align 4
@ADM1026_REG_MASK4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @alarm_mask_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alarm_mask_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1026_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.adm1026_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.adm1026_data* %16, %struct.adm1026_data** %10, align 8
  %17 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %18 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %17, i32 0, i32 3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtol(i8* %20, i32 10, i64* %13)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %77

26:                                               ; preds = %4
  %27 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %28 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i64, i64* %13, align 8
  %31 = and i64 %30, 2147483647
  %32 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %33 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %35 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %38 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 65536
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 -2147483648, i32 0
  %44 = zext i32 %43 to i64
  %45 = or i64 %36, %44
  store i64 %45, i64* %12, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %47 = load i32, i32* @ADM1026_REG_MASK1, align 4
  %48 = load i64, i64* %12, align 8
  %49 = and i64 %48, 255
  %50 = call i32 @adm1026_write_value(%struct.i2c_client* %46, i32 %47, i64 %49)
  %51 = load i64, i64* %12, align 8
  %52 = lshr i64 %51, 8
  store i64 %52, i64* %12, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %54 = load i32, i32* @ADM1026_REG_MASK2, align 4
  %55 = load i64, i64* %12, align 8
  %56 = and i64 %55, 255
  %57 = call i32 @adm1026_write_value(%struct.i2c_client* %53, i32 %54, i64 %56)
  %58 = load i64, i64* %12, align 8
  %59 = lshr i64 %58, 8
  store i64 %59, i64* %12, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %61 = load i32, i32* @ADM1026_REG_MASK3, align 4
  %62 = load i64, i64* %12, align 8
  %63 = and i64 %62, 255
  %64 = call i32 @adm1026_write_value(%struct.i2c_client* %60, i32 %61, i64 %63)
  %65 = load i64, i64* %12, align 8
  %66 = lshr i64 %65, 8
  store i64 %66, i64* %12, align 8
  %67 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %68 = load i32, i32* @ADM1026_REG_MASK4, align 4
  %69 = load i64, i64* %12, align 8
  %70 = and i64 %69, 255
  %71 = call i32 @adm1026_write_value(%struct.i2c_client* %67, i32 %68, i64 %70)
  %72 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %73 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %72, i32 0, i32 2
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %26, %24
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.adm1026_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
