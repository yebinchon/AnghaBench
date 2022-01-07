; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.helene_priv*, %struct.TYPE_2__ }
%struct.helene_priv = type { i32, %struct.i2c_adapter*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.helene_config = type { i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@helene_tuner_ops_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Sony HELENE Ter attached on addr=%x at I2C adapter %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @helene_attach(%struct.dvb_frontend* %0, %struct.helene_config* %1, %struct.i2c_adapter* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.helene_config*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.helene_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.helene_config* %1, %struct.helene_config** %6, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %7, align 8
  store %struct.helene_priv* null, %struct.helene_priv** %8, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.helene_priv* @kzalloc(i32 32, i32 %9)
  store %struct.helene_priv* %10, %struct.helene_priv** %8, align 8
  %11 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %12 = icmp eq %struct.helene_priv* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %93

14:                                               ; preds = %3
  %15 = load %struct.helene_config*, %struct.helene_config** %6, align 8
  %16 = getelementptr inbounds %struct.helene_config, %struct.helene_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 1
  %19 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %20 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %22 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %23 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %22, i32 0, i32 1
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %23, align 8
  %24 = load %struct.helene_config*, %struct.helene_config** %6, align 8
  %25 = getelementptr inbounds %struct.helene_config, %struct.helene_config* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %28 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.helene_config*, %struct.helene_config** %6, align 8
  %30 = getelementptr inbounds %struct.helene_config, %struct.helene_config* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %33 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.helene_config*, %struct.helene_config** %6, align 8
  %35 = getelementptr inbounds %struct.helene_config, %struct.helene_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %38 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %14
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %47, align 8
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %50 = bitcast %struct.dvb_frontend* %49 to %struct.dvb_frontend.0*
  %51 = call i32 %48(%struct.dvb_frontend.0* %50, i32 1)
  br label %52

52:                                               ; preds = %44, %14
  %53 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %54 = call i64 @helene_x_pon(%struct.helene_priv* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %58 = call i32 @kfree(%struct.helene_priv* %57)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %93

59:                                               ; preds = %52
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %68, align 8
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %71 = bitcast %struct.dvb_frontend* %70 to %struct.dvb_frontend.0*
  %72 = call i32 %69(%struct.dvb_frontend.0* %71, i32 0)
  br label %73

73:                                               ; preds = %65, %59
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %75 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @memcpy(i32* %76, i32* @helene_tuner_ops_t, i32 4)
  %78 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %80 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %79, i32 0, i32 0
  store %struct.helene_priv* %78, %struct.helene_priv** %80, align 8
  %81 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %82 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %81, i32 0, i32 1
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %82, align 8
  %84 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %83, i32 0, i32 0
  %85 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %86 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.helene_priv*, %struct.helene_priv** %8, align 8
  %89 = getelementptr inbounds %struct.helene_priv, %struct.helene_priv* %88, i32 0, i32 1
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %89, align 8
  %91 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %87, %struct.i2c_adapter* %90)
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %92, %struct.dvb_frontend** %4, align 8
  br label %93

93:                                               ; preds = %73, %56, %13
  %94 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %94
}

declare dso_local %struct.helene_priv* @kzalloc(i32, i32) #1

declare dso_local i64 @helene_x_pon(%struct.helene_priv*) #1

declare dso_local i32 @kfree(%struct.helene_priv*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
