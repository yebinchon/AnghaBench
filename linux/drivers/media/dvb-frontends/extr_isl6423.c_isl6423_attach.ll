; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6423.c_isl6423_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6423.c_isl6423_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.isl6423_dev*, %struct.TYPE_2__ }
%struct.isl6423_dev = type { i32, i32, i32, %struct.i2c_adapter*, %struct.isl6423_config* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.isl6423_config = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@isl6423_release = common dso_local global i32 0, align 4
@isl6423_set_voltage = common dso_local global i32 0, align 4
@isl6423_voltage_boost = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @isl6423_attach(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, %struct.isl6423_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.isl6423_config*, align 8
  %8 = alloca %struct.isl6423_dev*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store %struct.isl6423_config* %2, %struct.isl6423_config** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.isl6423_dev* @kzalloc(i32 32, i32 %9)
  store %struct.isl6423_dev* %10, %struct.isl6423_dev** %8, align 8
  %11 = load %struct.isl6423_dev*, %struct.isl6423_dev** %8, align 8
  %12 = icmp ne %struct.isl6423_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %59

14:                                               ; preds = %3
  %15 = load %struct.isl6423_config*, %struct.isl6423_config** %7, align 8
  %16 = load %struct.isl6423_dev*, %struct.isl6423_dev** %8, align 8
  %17 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %16, i32 0, i32 4
  store %struct.isl6423_config* %15, %struct.isl6423_config** %17, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %19 = load %struct.isl6423_dev*, %struct.isl6423_dev** %8, align 8
  %20 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %19, i32 0, i32 3
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %20, align 8
  %21 = load %struct.isl6423_dev*, %struct.isl6423_dev** %8, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  store %struct.isl6423_dev* %21, %struct.isl6423_dev** %23, align 8
  %24 = load %struct.isl6423_dev*, %struct.isl6423_dev** %8, align 8
  %25 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %24, i32 0, i32 0
  store i32 64, i32* %25, align 8
  %26 = load %struct.isl6423_dev*, %struct.isl6423_dev** %8, align 8
  %27 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %26, i32 0, i32 1
  store i32 96, i32* %27, align 4
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %29 = call i64 @isl6423_set_current(%struct.dvb_frontend* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %54

32:                                               ; preds = %14
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %34 = call i64 @isl6423_set_modulation(%struct.dvb_frontend* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %54

37:                                               ; preds = %32
  %38 = load i32, i32* @isl6423_release, align 4
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @isl6423_set_voltage, align 4
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @isl6423_voltage_boost, align 4
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @verbose, align 4
  %51 = load %struct.isl6423_dev*, %struct.isl6423_dev** %8, align 8
  %52 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %53, %struct.dvb_frontend** %4, align 8
  br label %59

54:                                               ; preds = %36, %31
  %55 = load %struct.isl6423_dev*, %struct.isl6423_dev** %8, align 8
  %56 = call i32 @kfree(%struct.isl6423_dev* %55)
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %58 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %57, i32 0, i32 0
  store %struct.isl6423_dev* null, %struct.isl6423_dev** %58, align 8
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %59

59:                                               ; preds = %54, %37, %13
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %60
}

declare dso_local %struct.isl6423_dev* @kzalloc(i32, i32) #1

declare dso_local i64 @isl6423_set_current(%struct.dvb_frontend*) #1

declare dso_local i64 @isl6423_set_modulation(%struct.dvb_frontend*) #1

declare dso_local i32 @kfree(%struct.isl6423_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
