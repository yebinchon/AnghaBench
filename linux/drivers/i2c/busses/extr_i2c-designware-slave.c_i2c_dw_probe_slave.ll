; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_probe_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_probe_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { {}*, i32, i32, i32, i32, i32, %struct.i2c_adapter }
%struct.i2c_adapter = type { i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@i2c_dw_disable = common dso_local global i32 0, align 4
@i2c_dw_disable_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Synopsys DesignWare I2C Slave adapter\00", align 1
@i2c_dw_algo = common dso_local global i32 0, align 4
@i2c_dw_isr_slave = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failure requesting irq %i: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failure adding adapter: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_dw_probe_slave(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  %6 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %7 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %6, i32 0, i32 6
  store %struct.i2c_adapter* %7, %struct.i2c_adapter** %4, align 8
  %8 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %9 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %8, i32 0, i32 5
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %12 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.dw_i2c_dev*)**
  store i32 (%struct.dw_i2c_dev*)* @i2c_dw_init_slave, i32 (%struct.dw_i2c_dev*)** %13, align 8
  %14 = load i32, i32* @i2c_dw_disable, align 4
  %15 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %16 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @i2c_dw_disable_int, align 4
  %18 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %19 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %21 = call i32 @i2c_dw_set_reg_access(%struct.dw_i2c_dev* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %101

26:                                               ; preds = %1
  %27 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %28 = call i32 @i2c_dw_set_sda_hold(%struct.dw_i2c_dev* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %101

33:                                               ; preds = %26
  %34 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %35 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.dw_i2c_dev*)**
  %37 = load i32 (%struct.dw_i2c_dev*)*, i32 (%struct.dw_i2c_dev*)** %36, align 8
  %38 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %39 = call i32 %37(%struct.dw_i2c_dev* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %101

44:                                               ; preds = %33
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  store i32 3, i32* %50, align 8
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %51, i32 0, i32 2
  store i32* @i2c_dw_algo, i32** %52, align 8
  %53 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %54 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %60 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %61 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %59, %struct.dw_i2c_dev* %60)
  %62 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %63 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %66 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @i2c_dw_isr_slave, align 4
  %69 = load i32, i32* @IRQF_SHARED, align 4
  %70 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %71 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_name(i32 %72)
  %74 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %75 = call i32 @devm_request_irq(i32 %64, i32 %67, i32 %68, i32 %69, i32 %73, %struct.dw_i2c_dev* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %44
  %79 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %80 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %83 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %101

88:                                               ; preds = %44
  %89 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %90 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %95 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %78, %42, %31, %24
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @i2c_dw_init_slave(%struct.dw_i2c_dev*) #1

declare dso_local i32 @i2c_dw_set_reg_access(%struct.dw_i2c_dev*) #1

declare dso_local i32 @i2c_dw_set_sda_hold(%struct.dw_i2c_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.dw_i2c_dev*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.dw_i2c_dev*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
