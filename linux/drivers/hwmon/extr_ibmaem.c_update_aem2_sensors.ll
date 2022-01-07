; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_update_aem2_sensors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_update_aem2_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aem_data = type { i32, i32*, i32*, i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@REFRESH_INTERVAL = common dso_local global i64 0, align 8
@AEM_EXHAUST_ELEMENT = common dso_local global i32 0, align 4
@POWER_CAP = common dso_local global i32 0, align 4
@POWER_AUX = common dso_local global i32 0, align 4
@AEM_POWER_CAP_ELEMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aem_data*)* @update_aem2_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_aem2_sensors(%struct.aem_data* %0) #0 {
  %2 = alloca %struct.aem_data*, align 8
  %3 = alloca i32, align 4
  store %struct.aem_data* %0, %struct.aem_data** %2, align 8
  %4 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %5 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load i32, i32* @jiffies, align 4
  %8 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %9 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REFRESH_INTERVAL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @time_before(i32 %7, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %17 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %58

21:                                               ; preds = %15, %1
  %22 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %23 = call i32 @update_aem_energy(%struct.aem_data* %22)
  %24 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %25 = load i32, i32* @AEM_EXHAUST_ELEMENT, align 4
  %26 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %27 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i32 @aem_read_sensor(%struct.aem_data* %24, i32 %25, i32 0, i32* %29, i32 1)
  %31 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %32 = load i32, i32* @AEM_EXHAUST_ELEMENT, align 4
  %33 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %34 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i32 @aem_read_sensor(%struct.aem_data* %31, i32 %32, i32 1, i32* %36, i32 1)
  %38 = load i32, i32* @POWER_CAP, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %54, %21
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @POWER_AUX, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %45 = load i32, i32* @AEM_POWER_CAP_ELEMENT, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %48 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @aem_read_sensor(%struct.aem_data* %44, i32 %45, i32 %46, i32* %52, i32 2)
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %39

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %20
  %59 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %60 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @update_aem_energy(%struct.aem_data*) #1

declare dso_local i32 @aem_read_sensor(%struct.aem_data*, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
