; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_convert_voltage_index_to_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_convert_voltage_index_to_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.trinity_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PM_CONFIG = common dso_local global i32 0, align 4
@SVI_Mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64)* @trinity_convert_voltage_index_to_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trinity_convert_voltage_index_to_value(%struct.radeon_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.trinity_power_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %11)
  store %struct.trinity_power_info* %12, %struct.trinity_power_info** %6, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = load %struct.trinity_power_info*, %struct.trinity_power_info** %6, align 8
  %15 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @sumo_convert_vid2_to_vid7(%struct.radeon_device* %13, i32* %16, i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* @PM_CONFIG, align 4
  %20 = call i32 @RREG32_SMC(i32 %19)
  %21 = load i32, i32* @SVI_Mode, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1250, i32 625
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = mul nsw i64 %32, %33
  %35 = add nsw i64 %34, 50
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp sgt i64 %36, 155000
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

39:                                               ; preds = %2
  %40 = load i64, i64* %10, align 8
  %41 = sub nsw i64 155000, %40
  %42 = sdiv i64 %41, 100
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %38
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @sumo_convert_vid2_to_vid7(%struct.radeon_device*, i32*, i64) #1

declare dso_local i32 @RREG32_SMC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
