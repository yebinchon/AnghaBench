; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_thmc50.c_thmc50_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_thmc50.c_thmc50_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thmc50_data = type { i32, i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@THMC50_REG_ANALOG_OUT = common dso_local global i32 0, align 4
@THMC50_REG_CONF = common dso_local global i32 0, align 4
@adm1022 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thmc50_data*)* @thmc50_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thmc50_init_client(%struct.thmc50_data* %0) #0 {
  %2 = alloca %struct.thmc50_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.thmc50_data* %0, %struct.thmc50_data** %2, align 8
  %5 = load %struct.thmc50_data*, %struct.thmc50_data** %2, align 8
  %6 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %5, i32 0, i32 3
  %7 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = load i32, i32* @THMC50_REG_ANALOG_OUT, align 4
  %10 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %8, i32 %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.thmc50_data*, %struct.thmc50_data** %2, align 8
  %13 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.thmc50_data*, %struct.thmc50_data** %2, align 8
  %15 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.thmc50_data*, %struct.thmc50_data** %2, align 8
  %20 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = load i32, i32* @THMC50_REG_ANALOG_OUT, align 4
  %23 = load %struct.thmc50_data*, %struct.thmc50_data** %2, align 8
  %24 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %21, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = load i32, i32* @THMC50_REG_CONF, align 4
  %30 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load %struct.thmc50_data*, %struct.thmc50_data** %2, align 8
  %35 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @adm1022, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.thmc50_data*, %struct.thmc50_data** %2, align 8
  %45 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %39, %27
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = load i32, i32* @THMC50_REG_CONF, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
