; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_horus3a.c_horus3a_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_horus3a.c_horus3a_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.horus3a_priv*, %struct.TYPE_2__ }
%struct.horus3a_priv = type { i32, %struct.i2c_adapter*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.horus3a_config = type { i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"horus3a: invalid xtal frequency %dMHz\0A\00", align 1
@horus3a_tuner_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Sony HORUS3A attached on addr=%x at I2C adapter %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @horus3a_attach(%struct.dvb_frontend* %0, %struct.horus3a_config* %1, %struct.i2c_adapter* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.horus3a_config*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.horus3a_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.horus3a_config* %1, %struct.horus3a_config** %6, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %7, align 8
  store %struct.horus3a_priv* null, %struct.horus3a_priv** %10, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.horus3a_priv* @kzalloc(i32 24, i32 %11)
  store %struct.horus3a_priv* %12, %struct.horus3a_priv** %10, align 8
  %13 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %14 = icmp eq %struct.horus3a_priv* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %124

16:                                               ; preds = %3
  %17 = load %struct.horus3a_config*, %struct.horus3a_config** %6, align 8
  %18 = getelementptr inbounds %struct.horus3a_config, %struct.horus3a_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 1
  %21 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %22 = getelementptr inbounds %struct.horus3a_priv, %struct.horus3a_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %24 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %25 = getelementptr inbounds %struct.horus3a_priv, %struct.horus3a_priv* %24, i32 0, i32 1
  store %struct.i2c_adapter* %23, %struct.i2c_adapter** %25, align 8
  %26 = load %struct.horus3a_config*, %struct.horus3a_config** %6, align 8
  %27 = getelementptr inbounds %struct.horus3a_config, %struct.horus3a_config* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %30 = getelementptr inbounds %struct.horus3a_priv, %struct.horus3a_priv* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.horus3a_config*, %struct.horus3a_config** %6, align 8
  %32 = getelementptr inbounds %struct.horus3a_config, %struct.horus3a_config* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %35 = getelementptr inbounds %struct.horus3a_priv, %struct.horus3a_priv* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %16
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %43 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %44, align 8
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %47 = bitcast %struct.dvb_frontend* %46 to %struct.dvb_frontend.0*
  %48 = call i32 %45(%struct.dvb_frontend.0* %47, i32 1)
  br label %49

49:                                               ; preds = %41, %16
  %50 = call i32 @usleep_range(i32 4000, i32 6000)
  %51 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %52 = call i32 @horus3a_write_reg(%struct.horus3a_priv* %51, i32 42, i32 121)
  %53 = load %struct.horus3a_config*, %struct.horus3a_config** %6, align 8
  %54 = getelementptr inbounds %struct.horus3a_config, %struct.horus3a_config* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.horus3a_config*, %struct.horus3a_config** %6, align 8
  %58 = getelementptr inbounds %struct.horus3a_config, %struct.horus3a_config* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %61, align 4
  %62 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %64 = call i32 @horus3a_write_regs(%struct.horus3a_priv* %62, i32 6, i32* %63, i32 3)
  %65 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %66 = call i32 @horus3a_write_reg(%struct.horus3a_priv* %65, i32 10, i32 64)
  %67 = load %struct.horus3a_config*, %struct.horus3a_config** %6, align 8
  %68 = getelementptr inbounds %struct.horus3a_config, %struct.horus3a_config* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %73 [
    i32 27, label %70
    i32 24, label %71
    i32 16, label %72
  ]

70:                                               ; preds = %49
  store i32 31, i32* %9, align 4
  br label %82

71:                                               ; preds = %49
  store i32 16, i32* %9, align 4
  br label %82

72:                                               ; preds = %49
  store i32 12, i32* %9, align 4
  br label %82

73:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  %74 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %75 = getelementptr inbounds %struct.horus3a_priv, %struct.horus3a_priv* %74, i32 0, i32 1
  %76 = load %struct.i2c_adapter*, %struct.i2c_adapter** %75, align 8
  %77 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %76, i32 0, i32 0
  %78 = load %struct.horus3a_config*, %struct.horus3a_config** %6, align 8
  %79 = getelementptr inbounds %struct.horus3a_config, %struct.horus3a_config* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_warn(i32* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %73, %72, %71, %70
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 %83, 2
  store i32 %84, i32* %9, align 4
  %85 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @horus3a_write_reg(%struct.horus3a_priv* %85, i32 14, i32 %86)
  %88 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %89 = call i32 @horus3a_enter_power_save(%struct.horus3a_priv* %88)
  %90 = call i32 @usleep_range(i32 3000, i32 5000)
  %91 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %92 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %93, align 8
  %95 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %82
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %98 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %99, align 8
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %102 = bitcast %struct.dvb_frontend* %101 to %struct.dvb_frontend.0*
  %103 = call i32 %100(%struct.dvb_frontend.0* %102, i32 0)
  br label %104

104:                                              ; preds = %96, %82
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %106 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 @memcpy(i32* %107, i32* @horus3a_tuner_ops, i32 4)
  %109 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %111 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %110, i32 0, i32 0
  store %struct.horus3a_priv* %109, %struct.horus3a_priv** %111, align 8
  %112 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %113 = getelementptr inbounds %struct.horus3a_priv, %struct.horus3a_priv* %112, i32 0, i32 1
  %114 = load %struct.i2c_adapter*, %struct.i2c_adapter** %113, align 8
  %115 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %114, i32 0, i32 0
  %116 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %117 = getelementptr inbounds %struct.horus3a_priv, %struct.horus3a_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.horus3a_priv*, %struct.horus3a_priv** %10, align 8
  %120 = getelementptr inbounds %struct.horus3a_priv, %struct.horus3a_priv* %119, i32 0, i32 1
  %121 = load %struct.i2c_adapter*, %struct.i2c_adapter** %120, align 8
  %122 = call i32 @dev_info(i32* %115, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %118, %struct.i2c_adapter* %121)
  %123 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %123, %struct.dvb_frontend** %4, align 8
  br label %124

124:                                              ; preds = %104, %15
  %125 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %125
}

declare dso_local %struct.horus3a_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @horus3a_write_reg(%struct.horus3a_priv*, i32, i32) #1

declare dso_local i32 @horus3a_write_regs(%struct.horus3a_priv*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @horus3a_enter_power_save(%struct.horus3a_priv*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
