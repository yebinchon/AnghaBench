; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_smc_mvdd_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_populate_smc_mvdd_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32*, i64* }
%struct.rv7xx_power_info = type { i32, i32*, i64 }

@MVDD_HIGH_INDEX = common dso_local global i64 0, align 8
@MVDD_LOW_INDEX = common dso_local global i64 0, align 8
@RV770_SMC_VOLTAGEMASK_MVDD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.TYPE_5__*)* @rv770_populate_smc_mvdd_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_populate_smc_mvdd_table(%struct.radeon_device* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %6)
  store %struct.rv7xx_power_info* %7, %struct.rv7xx_power_info** %5, align 8
  %8 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %9 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %2
  %13 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %14 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @MVDD_HIGH_INDEX, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cpu_to_be32(i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @MVDD_HIGH_INDEX, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %19
  store i32 %26, i32* %24, align 4
  %27 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %28 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @MVDD_LOW_INDEX, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cpu_to_be32(i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @MVDD_LOW_INDEX, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %33
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @RV770_SMC_VOLTAGEMASK_MVDD, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 0, i64* %46, align 8
  %47 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %48 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cpu_to_be32(i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @RV770_SMC_VOLTAGEMASK_MVDD, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %12, %2
  ret i32 0
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
