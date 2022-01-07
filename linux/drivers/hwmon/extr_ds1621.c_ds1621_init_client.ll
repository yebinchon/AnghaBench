; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds1621.c_ds1621_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds1621.c_ds1621_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1621_data = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }

@DS1621_REG_CONF = common dso_local global i32 0, align 4
@DS1621_REG_CONFIG_1SHOT = common dso_local global i64 0, align 8
@polarity = common dso_local global i32 0, align 4
@DS1621_REG_CONFIG_POLARITY = common dso_local global i64 0, align 8
@DS1625_CONVERSION_MAX = common dso_local global i32 0, align 4
@DS1621_COM_START = common dso_local global i64 0, align 8
@DS1621_REG_CONFIG_RESOL = common dso_local global i64 0, align 8
@DS1621_REG_CONFIG_RESOL_SHIFT = common dso_local global i64 0, align 8
@ds1721_convrates = common dso_local global i32* null, align 8
@DS1721_COM_START = common dso_local global i64 0, align 8
@DS1621_CONVERSION_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds1621_data*, %struct.i2c_client*)* @ds1621_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1621_init_client(%struct.ds1621_data* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca %struct.ds1621_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ds1621_data* %0, %struct.ds1621_data** %3, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @DS1621_REG_CONF, align 4
  %11 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %9, i32 %10)
  store i64 %11, i64* %5, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @DS1621_REG_CONFIG_1SHOT, align 8
  %13 = xor i64 %12, -1
  %14 = load i64, i64* %6, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @polarity, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i64, i64* @DS1621_REG_CONFIG_POLARITY, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %6, align 8
  br label %31

23:                                               ; preds = %2
  %24 = load i32, i32* @polarity, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* @DS1621_REG_CONFIG_POLARITY, align 8
  %28 = load i64, i64* %6, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %26, %23
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load i32, i32* @DS1621_REG_CONF, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %36, i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %42 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %69 [
    i32 131, label %44
    i32 130, label %51
    i32 129, label %51
    i32 128, label %51
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* @DS1625_CONVERSION_MAX, align 4
  %46 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %47 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %49 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %48, i32 0, i32 1
  store i32 7, i32* %49, align 4
  %50 = load i64, i64* @DS1621_COM_START, align 8
  store i64 %50, i64* %7, align 8
  br label %76

51:                                               ; preds = %40, %40, %40
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @DS1621_REG_CONFIG_RESOL, align 8
  %54 = and i64 %52, %53
  %55 = load i64, i64* @DS1621_REG_CONFIG_RESOL_SHIFT, align 8
  %56 = lshr i64 %54, %55
  store i64 %56, i64* %8, align 8
  %57 = load i32*, i32** @ds1721_convrates, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %62 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i64, i64* %8, align 8
  %64 = sub i64 7, %63
  %65 = trunc i64 %64 to i32
  %66 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %67 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* @DS1721_COM_START, align 8
  store i64 %68, i64* %7, align 8
  br label %76

69:                                               ; preds = %40
  %70 = load i32, i32* @DS1621_CONVERSION_MAX, align 4
  %71 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %72 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ds1621_data*, %struct.ds1621_data** %3, align 8
  %74 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %73, i32 0, i32 1
  store i32 7, i32* %74, align 4
  %75 = load i64, i64* @DS1621_COM_START, align 8
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %69, %51, %44
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %77, i64 %78)
  ret void
}

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
