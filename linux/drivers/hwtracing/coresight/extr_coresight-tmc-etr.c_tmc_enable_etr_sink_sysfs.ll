; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_enable_etr_sink_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_enable_etr_sink_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tmc_drvdata = type { i64, i64, i32, %struct.etr_buf*, i64 }
%struct.etr_buf = type { i64 }

@CS_MODE_PERF = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CS_MODE_SYSFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"TMC-ETR enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*)* @tmc_enable_etr_sink_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_enable_etr_sink_sysfs(%struct.coresight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.tmc_drvdata*, align 8
  %7 = alloca %struct.etr_buf*, align 8
  %8 = alloca %struct.etr_buf*, align 8
  %9 = alloca %struct.etr_buf*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %11 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tmc_drvdata* @dev_get_drvdata(i32 %13)
  store %struct.tmc_drvdata* %14, %struct.tmc_drvdata** %6, align 8
  store %struct.etr_buf* null, %struct.etr_buf** %7, align 8
  store %struct.etr_buf* null, %struct.etr_buf** %8, align 8
  store %struct.etr_buf* null, %struct.etr_buf** %9, align 8
  %15 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %16 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %15, i32 0, i32 2
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %20 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %19, i32 0, i32 3
  %21 = load %struct.etr_buf*, %struct.etr_buf** %20, align 8
  %22 = call %struct.etr_buf* @READ_ONCE(%struct.etr_buf* %21)
  store %struct.etr_buf* %22, %struct.etr_buf** %7, align 8
  %23 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %24 = icmp ne %struct.etr_buf* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %27 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %30 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %25, %1
  %34 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %35 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %34, i32 0, i32 2
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %39 = call %struct.etr_buf* @tmc_etr_setup_sysfs_buf(%struct.tmc_drvdata* %38)
  store %struct.etr_buf* %39, %struct.etr_buf** %8, align 8
  store %struct.etr_buf* %39, %struct.etr_buf** %9, align 8
  %40 = load %struct.etr_buf*, %struct.etr_buf** %8, align 8
  %41 = call i64 @IS_ERR(%struct.etr_buf* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.etr_buf*, %struct.etr_buf** %8, align 8
  %45 = call i32 @PTR_ERR(%struct.etr_buf* %44)
  store i32 %45, i32* %2, align 4
  br label %135

46:                                               ; preds = %33
  %47 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %48 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %47, i32 0, i32 2
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %46, %25
  %52 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %53 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %58 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CS_MODE_PERF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %51
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %116

65:                                               ; preds = %56
  %66 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %67 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CS_MODE_SYSFS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %73 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @atomic_inc(i32 %74)
  br label %116

76:                                               ; preds = %65
  %77 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %78 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %77, i32 0, i32 3
  %79 = load %struct.etr_buf*, %struct.etr_buf** %78, align 8
  %80 = call %struct.etr_buf* @READ_ONCE(%struct.etr_buf* %79)
  store %struct.etr_buf* %80, %struct.etr_buf** %7, align 8
  %81 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %82 = icmp ne %struct.etr_buf* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.etr_buf*, %struct.etr_buf** %8, align 8
  %85 = icmp ne %struct.etr_buf* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %88 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.etr_buf*, %struct.etr_buf** %8, align 8
  %91 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %86, %76
  %95 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  store %struct.etr_buf* %95, %struct.etr_buf** %9, align 8
  %96 = load %struct.etr_buf*, %struct.etr_buf** %8, align 8
  %97 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %98 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %97, i32 0, i32 3
  store %struct.etr_buf* %96, %struct.etr_buf** %98, align 8
  br label %99

99:                                               ; preds = %94, %86, %83
  %100 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %101 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %102 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %101, i32 0, i32 3
  %103 = load %struct.etr_buf*, %struct.etr_buf** %102, align 8
  %104 = call i32 @tmc_etr_enable_hw(%struct.tmc_drvdata* %100, %struct.etr_buf* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %99
  %108 = load i64, i64* @CS_MODE_SYSFS, align 8
  %109 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %110 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %112 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @atomic_inc(i32 %113)
  br label %115

115:                                              ; preds = %107, %99
  br label %116

116:                                              ; preds = %115, %71, %62
  %117 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %118 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %117, i32 0, i32 2
  %119 = load i64, i64* %5, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  %121 = load %struct.etr_buf*, %struct.etr_buf** %9, align 8
  %122 = icmp ne %struct.etr_buf* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.etr_buf*, %struct.etr_buf** %9, align 8
  %125 = call i32 @tmc_etr_free_sysfs_buf(%struct.etr_buf* %124)
  br label %126

126:                                              ; preds = %123, %116
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %131 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %130, i32 0, i32 0
  %132 = call i32 @dev_dbg(%struct.TYPE_2__* %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %43
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.tmc_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.etr_buf* @READ_ONCE(%struct.etr_buf*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.etr_buf* @tmc_etr_setup_sysfs_buf(%struct.tmc_drvdata*) #1

declare dso_local i64 @IS_ERR(%struct.etr_buf*) #1

declare dso_local i32 @PTR_ERR(%struct.etr_buf*) #1

declare dso_local i32 @atomic_inc(i32) #1

declare dso_local i32 @tmc_etr_enable_hw(%struct.tmc_drvdata*, %struct.etr_buf*) #1

declare dso_local i32 @tmc_etr_free_sysfs_buf(%struct.etr_buf*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
