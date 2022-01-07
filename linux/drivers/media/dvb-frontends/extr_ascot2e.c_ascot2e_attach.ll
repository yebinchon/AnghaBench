; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ascot2e.c_ascot2e_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ascot2e.c_ascot2e_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ascot2e_priv*, %struct.TYPE_2__ }
%struct.ascot2e_priv = type { i32, %struct.i2c_adapter*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.ascot2e_config = type { i32, i32, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@STATE_SLEEP = common dso_local global i32 0, align 4
@ascot2e_tuner_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Sony ASCOT2E attached on addr=%x at I2C adapter %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @ascot2e_attach(%struct.dvb_frontend* %0, %struct.ascot2e_config* %1, %struct.i2c_adapter* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.ascot2e_config*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca %struct.ascot2e_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.ascot2e_config* %1, %struct.ascot2e_config** %6, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %7, align 8
  store %struct.ascot2e_priv* null, %struct.ascot2e_priv** %9, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ascot2e_priv* @kzalloc(i32 32, i32 %10)
  store %struct.ascot2e_priv* %11, %struct.ascot2e_priv** %9, align 8
  %12 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %13 = icmp eq %struct.ascot2e_priv* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %118

15:                                               ; preds = %3
  %16 = load %struct.ascot2e_config*, %struct.ascot2e_config** %6, align 8
  %17 = getelementptr inbounds %struct.ascot2e_config, %struct.ascot2e_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 1
  %20 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %21 = getelementptr inbounds %struct.ascot2e_priv, %struct.ascot2e_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %23 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %24 = getelementptr inbounds %struct.ascot2e_priv, %struct.ascot2e_priv* %23, i32 0, i32 1
  store %struct.i2c_adapter* %22, %struct.i2c_adapter** %24, align 8
  %25 = load %struct.ascot2e_config*, %struct.ascot2e_config** %6, align 8
  %26 = getelementptr inbounds %struct.ascot2e_config, %struct.ascot2e_config* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %29 = getelementptr inbounds %struct.ascot2e_priv, %struct.ascot2e_priv* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ascot2e_config*, %struct.ascot2e_config** %6, align 8
  %31 = getelementptr inbounds %struct.ascot2e_config, %struct.ascot2e_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %34 = getelementptr inbounds %struct.ascot2e_priv, %struct.ascot2e_priv* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %15
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %43, align 8
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %46 = bitcast %struct.dvb_frontend* %45 to %struct.dvb_frontend.0*
  %47 = call i32 %44(%struct.dvb_frontend.0* %46, i32 1)
  br label %48

48:                                               ; preds = %40, %15
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 16, i32* %49, align 16
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 6, i32* %50, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 196, i32* %51, align 8
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 64, i32* %52, align 4
  %53 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %55 = call i32 @ascot2e_write_regs(%struct.ascot2e_priv* %53, i32 1, i32* %54, i32 4)
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 16, i32* %56, align 16
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 63, i32* %57, align 4
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 37, i32* %58, align 8
  %59 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %61 = call i32 @ascot2e_write_regs(%struct.ascot2e_priv* %59, i32 34, i32* %60, i32 3)
  %62 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %63 = call i32 @ascot2e_write_reg(%struct.ascot2e_priv* %62, i32 40, i32 30)
  %64 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %65 = call i32 @ascot2e_write_reg(%struct.ascot2e_priv* %64, i32 89, i32 4)
  %66 = call i32 @msleep(i32 80)
  %67 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %68 = call i32 @ascot2e_write_reg(%struct.ascot2e_priv* %67, i32 76, i32 1)
  %69 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %70 = call i32 @ascot2e_write_reg(%struct.ascot2e_priv* %69, i32 7, i32 4)
  %71 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %72 = call i32 @ascot2e_write_reg(%struct.ascot2e_priv* %71, i32 4, i32 0)
  %73 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %74 = call i32 @ascot2e_write_reg(%struct.ascot2e_priv* %73, i32 3, i32 192)
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %75, align 16
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 4, i32* %76, align 4
  %77 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %79 = call i32 @ascot2e_write_regs(%struct.ascot2e_priv* %77, i32 20, i32* %78, i32 2)
  %80 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %81 = call i32 @ascot2e_write_reg(%struct.ascot2e_priv* %80, i32 80, i32 1)
  %82 = load i32, i32* @STATE_SLEEP, align 4
  %83 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %84 = getelementptr inbounds %struct.ascot2e_priv, %struct.ascot2e_priv* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %86 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %48
  %91 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %92 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %93, align 8
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %96 = bitcast %struct.dvb_frontend* %95 to %struct.dvb_frontend.0*
  %97 = call i32 %94(%struct.dvb_frontend.0* %96, i32 0)
  br label %98

98:                                               ; preds = %90, %48
  %99 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %100 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @memcpy(i32* %101, i32* @ascot2e_tuner_ops, i32 4)
  %103 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %104 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %105 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %104, i32 0, i32 0
  store %struct.ascot2e_priv* %103, %struct.ascot2e_priv** %105, align 8
  %106 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %107 = getelementptr inbounds %struct.ascot2e_priv, %struct.ascot2e_priv* %106, i32 0, i32 1
  %108 = load %struct.i2c_adapter*, %struct.i2c_adapter** %107, align 8
  %109 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %108, i32 0, i32 0
  %110 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %111 = getelementptr inbounds %struct.ascot2e_priv, %struct.ascot2e_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ascot2e_priv*, %struct.ascot2e_priv** %9, align 8
  %114 = getelementptr inbounds %struct.ascot2e_priv, %struct.ascot2e_priv* %113, i32 0, i32 1
  %115 = load %struct.i2c_adapter*, %struct.i2c_adapter** %114, align 8
  %116 = call i32 @dev_info(i32* %109, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %112, %struct.i2c_adapter* %115)
  %117 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %117, %struct.dvb_frontend** %4, align 8
  br label %118

118:                                              ; preds = %98, %14
  %119 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %119
}

declare dso_local %struct.ascot2e_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @ascot2e_write_regs(%struct.ascot2e_priv*, i32, i32*, i32) #1

declare dso_local i32 @ascot2e_write_reg(%struct.ascot2e_priv*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
