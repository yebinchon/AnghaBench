; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_mvdd_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_mvdd_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.rv7xx_power_info = type { i64, i32 }
%struct.evergreen_power_info = type { i32, i32 }

@MVDD_HIGH_VALUE = common dso_local global i32 0, align 4
@MVDD_LOW_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i64, %struct.TYPE_3__*)* @ni_populate_mvdd_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_populate_mvdd_value(%struct.radeon_device* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.rv7xx_power_info*, align 8
  %8 = alloca %struct.evergreen_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %9)
  store %struct.rv7xx_power_info* %10, %struct.rv7xx_power_info** %7, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %11)
  store %struct.evergreen_power_info* %12, %struct.evergreen_power_info** %8, align 8
  %13 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %14 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %19 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @MVDD_HIGH_VALUE, align 4
  %24 = call i8* @cpu_to_be16(i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %53

27:                                               ; preds = %3
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %30 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %35 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @MVDD_LOW_VALUE, align 4
  %40 = call i8* @cpu_to_be16(i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %53

43:                                               ; preds = %27
  %44 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %8, align 8
  %45 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @MVDD_HIGH_VALUE, align 4
  %50 = call i8* @cpu_to_be16(i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %17, %43, %33
  ret void
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
