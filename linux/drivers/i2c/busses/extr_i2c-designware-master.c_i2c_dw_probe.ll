; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { {}*, i32, i32, i32, {}*, i32, i32, %struct.i2c_adapter }
%struct.i2c_adapter = type { i32, %struct.TYPE_2__, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@i2c_dw_disable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Synopsys DesignWare I2C adapter\00", align 1
@i2c_dw_algo = common dso_local global i32 0, align 4
@i2c_dw_quirks = common dso_local global i32 0, align 4
@ACCESS_NO_IRQ_SUSPEND = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@IRQF_COND_SUSPEND = common dso_local global i64 0, align 8
@i2c_dw_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failure requesting irq %i: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failure adding adapter: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_dw_probe(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  %7 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %8 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %7, i32 0, i32 7
  store %struct.i2c_adapter* %8, %struct.i2c_adapter** %4, align 8
  %9 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %9, i32 0, i32 6
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %13 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.dw_i2c_dev*)**
  store i32 (%struct.dw_i2c_dev*)* @i2c_dw_init_master, i32 (%struct.dw_i2c_dev*)** %14, align 8
  %15 = load i32, i32* @i2c_dw_disable, align 4
  %16 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %17 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %19 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %18, i32 0, i32 4
  %20 = bitcast {}** %19 to i32 (%struct.dw_i2c_dev*)**
  store i32 (%struct.dw_i2c_dev*)* @i2c_dw_disable_int, i32 (%struct.dw_i2c_dev*)** %20, align 8
  %21 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %22 = call i32 @i2c_dw_set_reg_access(%struct.dw_i2c_dev* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %134

27:                                               ; preds = %1
  %28 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %29 = call i32 @i2c_dw_set_timings_master(%struct.dw_i2c_dev* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %134

34:                                               ; preds = %27
  %35 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %36 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.dw_i2c_dev*)**
  %38 = load i32 (%struct.dw_i2c_dev*)*, i32 (%struct.dw_i2c_dev*)** %37, align 8
  %39 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %40 = call i32 %38(%struct.dw_i2c_dev* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %134

45:                                               ; preds = %34
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @snprintf(i32 %48, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %50, i32 0, i32 0
  store i32 3, i32* %51, align 8
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 3
  store i32* @i2c_dw_algo, i32** %53, align 8
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %54, i32 0, i32 2
  store i32* @i2c_dw_quirks, i32** %55, align 8
  %56 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %57 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %63 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %64 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %62, %struct.dw_i2c_dev* %63)
  %65 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %66 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ACCESS_NO_IRQ_SUSPEND, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %45
  %72 = load i64, i64* @IRQF_NO_SUSPEND, align 8
  store i64 %72, i64* %5, align 8
  br label %77

73:                                               ; preds = %45
  %74 = load i64, i64* @IRQF_SHARED, align 8
  %75 = load i64, i64* @IRQF_COND_SUSPEND, align 8
  %76 = or i64 %74, %75
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %73, %71
  %78 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %79 = call i32 @i2c_dw_disable_int(%struct.dw_i2c_dev* %78)
  %80 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %81 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %84 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @i2c_dw_isr, align 4
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %89 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_name(i32 %90)
  %92 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %93 = call i32 @devm_request_irq(i32 %82, i32 %85, i32 %86, i64 %87, i32 %91, %struct.dw_i2c_dev* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %77
  %97 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %98 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %101 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %134

106:                                              ; preds = %77
  %107 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %108 = call i32 @i2c_dw_init_recovery_info(%struct.dw_i2c_dev* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %134

113:                                              ; preds = %106
  %114 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %115 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @pm_runtime_get_noresume(i32 %116)
  %118 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %119 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %113
  %123 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %124 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %122, %113
  %129 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %130 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @pm_runtime_put_noidle(i32 %131)
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %128, %111, %96, %43, %32, %25
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @i2c_dw_init_master(%struct.dw_i2c_dev*) #1

declare dso_local i32 @i2c_dw_disable_int(%struct.dw_i2c_dev*) #1

declare dso_local i32 @i2c_dw_set_reg_access(%struct.dw_i2c_dev*) #1

declare dso_local i32 @i2c_dw_set_timings_master(%struct.dw_i2c_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.dw_i2c_dev*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i64, i32, %struct.dw_i2c_dev*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @i2c_dw_init_recovery_info(%struct.dw_i2c_dev*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
