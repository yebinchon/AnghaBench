; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dvb-pll.c_dvb_pll_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dvb-pll.c_dvb_pll_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.dvb_pll_config* }
%struct.dvb_pll_config = type { %struct.dvb_frontend* }
%struct.dvb_frontend = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.i2c_device_id = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"DVB Simple Tuner attached.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dvb_pll_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_pll_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.dvb_pll_config*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.dvb_pll_config*, %struct.dvb_pll_config** %11, align 8
  store %struct.dvb_pll_config* %12, %struct.dvb_pll_config** %6, align 8
  %13 = load %struct.dvb_pll_config*, %struct.dvb_pll_config** %6, align 8
  %14 = getelementptr inbounds %struct.dvb_pll_config, %struct.dvb_pll_config* %13, i32 0, i32 0
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %14, align 8
  store %struct.dvb_frontend* %15, %struct.dvb_frontend** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.dvb_frontend* %17)
  %19 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dvb_pll_attach(%struct.dvb_frontend* %23, i32 %26, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @dev_info(%struct.TYPE_6__* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %33
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.dvb_frontend*) #1

declare dso_local i32 @dvb_pll_attach(%struct.dvb_frontend*, i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
