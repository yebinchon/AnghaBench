; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_ppfeature_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_ppfeature_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@GNLD_FEATURES_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"features_to_disable 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"features_to_enable 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64)* @vega10_set_ppfeature_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_set_ppfeature_status(%struct.pp_hwmgr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @GNLD_FEATURES_MAX, align 8
  %12 = shl i64 1, %11
  %13 = icmp uge i64 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %19 = call i32 @vega10_get_enabled_smc_features(%struct.pp_hwmgr* %18, i64* %6)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %61

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %5, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %24
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @vega10_enable_smc_features(%struct.pp_hwmgr* %40, i32 0, i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %61

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @vega10_enable_smc_features(%struct.pp_hwmgr* %52, i32 1, i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %48
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57, %45, %22, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @vega10_get_enabled_smc_features(%struct.pp_hwmgr*, i64*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @vega10_enable_smc_features(%struct.pp_hwmgr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
