; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_convert_mc_reg_table_entry_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_convert_mc_reg_table_entry_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_pl = type { i64 }
%struct.evergreen_power_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.rv7xx_pl*, i32*)* @cypress_convert_mc_reg_table_entry_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_convert_mc_reg_table_entry_to_smc(%struct.radeon_device* %0, %struct.rv7xx_pl* %1, i32* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.rv7xx_pl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.evergreen_power_info*, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.rv7xx_pl* %1, %struct.rv7xx_pl** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %9)
  store %struct.evergreen_power_info* %10, %struct.evergreen_power_info** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %33, %3
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %7, align 8
  %14 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %5, align 8
  %20 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %7, align 8
  %23 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %21, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %36

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %11

36:                                               ; preds = %31, %11
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %7, align 8
  %39 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i64, i64* %8, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %46, %43, %36
  %50 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %7, align 8
  %51 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %7, align 8
  %58 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %7, align 8
  %62 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @cypress_convert_mc_registers(%struct.TYPE_4__* %55, i32* %56, i32 %60, i32 %64)
  ret void
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @cypress_convert_mc_registers(%struct.TYPE_4__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
