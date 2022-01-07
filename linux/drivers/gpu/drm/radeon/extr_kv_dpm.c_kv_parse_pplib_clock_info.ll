; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_parse_pplib_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_parse_pplib_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%union.pplib_clock_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.kv_power_info = type { i64 }
%struct.kv_ps = type { i32, %struct.kv_pl* }
%struct.kv_pl = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, i32, %union.pplib_clock_info*)* @kv_parse_pplib_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_parse_pplib_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2, %union.pplib_clock_info* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.pplib_clock_info*, align 8
  %9 = alloca %struct.kv_power_info*, align 8
  %10 = alloca %struct.kv_ps*, align 8
  %11 = alloca %struct.kv_pl*, align 8
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.pplib_clock_info* %3, %union.pplib_clock_info** %8, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %14 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %13)
  store %struct.kv_power_info* %14, %struct.kv_power_info** %9, align 8
  %15 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %16 = call %struct.kv_ps* @kv_get_ps(%struct.radeon_ps* %15)
  store %struct.kv_ps* %16, %struct.kv_ps** %10, align 8
  %17 = load %struct.kv_ps*, %struct.kv_ps** %10, align 8
  %18 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %17, i32 0, i32 1
  %19 = load %struct.kv_pl*, %struct.kv_pl** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.kv_pl, %struct.kv_pl* %19, i64 %21
  store %struct.kv_pl* %22, %struct.kv_pl** %11, align 8
  %23 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %24 = bitcast %union.pplib_clock_info* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %29 = bitcast %union.pplib_clock_info* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.kv_pl*, %struct.kv_pl** %11, align 8
  %37 = getelementptr inbounds %struct.kv_pl, %struct.kv_pl* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %39 = bitcast %union.pplib_clock_info* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.kv_pl*, %struct.kv_pl** %11, align 8
  %43 = getelementptr inbounds %struct.kv_pl, %struct.kv_pl* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = load %struct.kv_ps*, %struct.kv_ps** %10, align 8
  %47 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.kv_power_info*, %struct.kv_power_info** %9, align 8
  %49 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %4
  %53 = load %struct.kv_pl*, %struct.kv_pl** %11, align 8
  %54 = getelementptr inbounds %struct.kv_pl, %struct.kv_pl* %53, i32 0, i32 1
  store i32 5, i32* %54, align 4
  %55 = load %struct.kv_pl*, %struct.kv_pl** %11, align 8
  %56 = getelementptr inbounds %struct.kv_pl, %struct.kv_pl* %55, i32 0, i32 2
  store i32 5, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %4
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.kv_ps* @kv_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
