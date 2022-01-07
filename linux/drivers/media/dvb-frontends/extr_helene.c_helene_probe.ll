; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { %struct.helene_config* }
%struct.helene_config = type { i32, i32, i32, %struct.dvb_frontend* }
%struct.dvb_frontend = type { %struct.helene_priv*, %struct.TYPE_2__ }
%struct.helene_priv = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.dvb_frontend*, i32)* }
%struct.i2c_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@helene_tuner_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Sony HELENE attached on addr=%x at I2C adapter %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @helene_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helene_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.helene_config*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.helene_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.helene_config*, %struct.helene_config** %12, align 8
  store %struct.helene_config* %13, %struct.helene_config** %6, align 8
  %14 = load %struct.helene_config*, %struct.helene_config** %6, align 8
  %15 = getelementptr inbounds %struct.helene_config, %struct.helene_config* %14, i32 0, i32 3
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %15, align 8
  store %struct.dvb_frontend* %16, %struct.dvb_frontend** %7, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 2
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.helene_priv* @devm_kzalloc(%struct.device* %19, i32 20, i32 %20)
  store %struct.helene_priv* %21, %struct.helene_priv** %9, align 8
  %22 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %23 = icmp ne %struct.helene_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %104

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %32 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %37 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.helene_config*, %struct.helene_config** %6, align 8
  %39 = getelementptr inbounds %struct.helene_config, %struct.helene_config* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %42 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.helene_config*, %struct.helene_config** %6, align 8
  %44 = getelementptr inbounds %struct.helene_config, %struct.helene_config* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %47 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.helene_config*, %struct.helene_config** %6, align 8
  %49 = getelementptr inbounds %struct.helene_config, %struct.helene_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %52 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.dvb_frontend*, i32)* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %27
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %61, align 8
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %64 = call i32 %62(%struct.dvb_frontend* %63, i32 1)
  br label %65

65:                                               ; preds = %58, %27
  %66 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %67 = call i64 @helene_x_pon(%struct.helene_priv* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %104

72:                                               ; preds = %65
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %74 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %75, align 8
  %77 = icmp ne i32 (%struct.dvb_frontend*, i32)* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %80 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %81, align 8
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %84 = call i32 %82(%struct.dvb_frontend* %83, i32 0)
  br label %85

85:                                               ; preds = %78, %72
  %86 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %87 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @memcpy(i32* %88, i32* @helene_tuner_ops, i32 4)
  %90 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %91 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %92 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %91, i32 0, i32 0
  store %struct.helene_priv* %90, %struct.helene_priv** %92, align 8
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %95 = call i32 @i2c_set_clientdata(%struct.i2c_client* %93, %struct.helene_priv* %94)
  %96 = load %struct.device*, %struct.device** %8, align 8
  %97 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %98 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.helene_priv*, %struct.helene_priv** %9, align 8
  %101 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_info(%struct.device* %96, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %85, %69, %24
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.helene_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @helene_x_pon(%struct.helene_priv*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.helene_priv*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
