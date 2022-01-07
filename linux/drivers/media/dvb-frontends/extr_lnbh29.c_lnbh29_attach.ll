; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lnbh29.c_lnbh29_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lnbh29.c_lnbh29_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.lnbh29_priv* }
%struct.TYPE_2__ = type { i64 (%struct.dvb_frontend.0*, i32)*, i32 }
%struct.dvb_frontend.0 = type opaque
%struct.lnbh29_priv = type { i32, i32*, %struct.i2c_adapter* }
%struct.lnbh29_config = type { i32, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SEC_VOLTAGE_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no LNBH29 found at I2C addr 0x%02x\0A\00", align 1
@lnbh29_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"LNBH29 attached at I2C addr 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @lnbh29_attach(%struct.dvb_frontend* %0, %struct.lnbh29_config* %1, %struct.i2c_adapter* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.lnbh29_config*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.lnbh29_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.lnbh29_config* %1, %struct.lnbh29_config** %6, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.lnbh29_priv* @kzalloc(i32 24, i32 %9)
  store %struct.lnbh29_priv* %10, %struct.lnbh29_priv** %8, align 8
  %11 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %8, align 8
  %12 = icmp ne %struct.lnbh29_priv* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %68

14:                                               ; preds = %3
  %15 = load %struct.lnbh29_config*, %struct.lnbh29_config** %6, align 8
  %16 = getelementptr inbounds %struct.lnbh29_config, %struct.lnbh29_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 1
  %19 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %8, align 8
  %20 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %22 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %8, align 8
  %23 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %22, i32 0, i32 2
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %23, align 8
  %24 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %8, align 8
  %25 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.lnbh29_config*, %struct.lnbh29_config** %6, align 8
  %29 = getelementptr inbounds %struct.lnbh29_config, %struct.lnbh29_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %8, align 8
  %32 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %8, align 8
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 1
  store %struct.lnbh29_priv* %35, %struct.lnbh29_priv** %37, align 8
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %39 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %40 = call i64 @lnbh29_set_voltage(%struct.dvb_frontend* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %14
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %44 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %43, i32 0, i32 0
  %45 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %8, align 8
  %46 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %8, align 8
  %50 = call i32 @kfree(%struct.lnbh29_priv* %49)
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %51, i32 0, i32 1
  store %struct.lnbh29_priv* null, %struct.lnbh29_priv** %52, align 8
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %68

53:                                               ; preds = %14
  %54 = load i32, i32* @lnbh29_release, align 4
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %56 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %59 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 (%struct.dvb_frontend.0*, i32)* bitcast (i64 (%struct.dvb_frontend*, i32)* @lnbh29_set_voltage to i64 (%struct.dvb_frontend.0*, i32)*), i64 (%struct.dvb_frontend.0*, i32)** %60, align 8
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %62 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %61, i32 0, i32 0
  %63 = load %struct.lnbh29_priv*, %struct.lnbh29_priv** %8, align 8
  %64 = getelementptr inbounds %struct.lnbh29_priv, %struct.lnbh29_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %67, %struct.dvb_frontend** %4, align 8
  br label %68

68:                                               ; preds = %53, %42, %13
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %69
}

declare dso_local %struct.lnbh29_priv* @kzalloc(i32, i32) #1

declare dso_local i64 @lnbh29_set_voltage(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.lnbh29_priv*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
