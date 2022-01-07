; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_mvdd_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_mvdd_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.rv7xx_power_info = type { i64, i32 }
%struct.evergreen_power_info = type { i32, i32 }

@MVDD_HIGH_VALUE = common dso_local global i32 0, align 4
@MVDD_LOW_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64, %struct.TYPE_3__*)* @cypress_populate_mvdd_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_populate_mvdd_value(%struct.radeon_device* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %11 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %10)
  store %struct.rv7xx_power_info* %11, %struct.rv7xx_power_info** %8, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %12)
  store %struct.evergreen_power_info* %13, %struct.evergreen_power_info** %9, align 8
  %14 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %15 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %20 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @MVDD_HIGH_VALUE, align 4
  %25 = call i8* @cpu_to_be16(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  store i32 0, i32* %4, align 4
  br label %55

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %31 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %36 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @MVDD_LOW_VALUE, align 4
  %41 = call i8* @cpu_to_be16(i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %54

44:                                               ; preds = %28
  %45 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %46 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @MVDD_HIGH_VALUE, align 4
  %51 = call i8* @cpu_to_be16(i32 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %44, %34
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
