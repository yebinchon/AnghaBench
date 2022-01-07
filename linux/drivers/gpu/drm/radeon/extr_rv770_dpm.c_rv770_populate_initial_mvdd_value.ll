; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_initial_mvdd_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_initial_mvdd_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_3__ = type { i64, i8* }
%struct.rv7xx_power_info = type { i32, i32, i32* }

@MVDD_LOW_INDEX = common dso_local global i64 0, align 8
@MVDD_LOW_VALUE = common dso_local global i32 0, align 4
@MVDD_HIGH_INDEX = common dso_local global i64 0, align 8
@MVDD_HIGH_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_populate_initial_mvdd_value(%struct.radeon_device* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %6)
  store %struct.rv7xx_power_info* %7, %struct.rv7xx_power_info** %5, align 8
  %8 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %9 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %12 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %10, %13
  %15 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %16 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @MVDD_LOW_INDEX, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %22 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = icmp eq i32 %14, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load i64, i64* @MVDD_LOW_INDEX, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @MVDD_LOW_VALUE, align 4
  %31 = call i8* @cpu_to_be16(i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %42

34:                                               ; preds = %2
  %35 = load i64, i64* @MVDD_HIGH_INDEX, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @MVDD_HIGH_VALUE, align 4
  %39 = call i8* @cpu_to_be16(i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %34, %26
  ret i32 0
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
