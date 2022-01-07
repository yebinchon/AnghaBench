; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_smc.c_sumo_initialize_m3_arb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_smc.c_sumo_initialize_m3_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_power_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32* }

@NUMBER_OF_M3ARB_PARAM_SETS = common dso_local global i32 0, align 4
@MCU_M3ARB_PARAMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sumo_initialize_m3_arb(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.sumo_power_info*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %5)
  store %struct.sumo_power_info* %6, %struct.sumo_power_info** %3, align 8
  %7 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %8 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %87

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NUMBER_OF_M3ARB_PARAM_SETS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i64, i64* @MCU_M3ARB_PARAMS, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %24 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @WREG32_RCU(i64 %22, i32 %30)
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %13

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %58, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @NUMBER_OF_M3ARB_PARAM_SETS, align 4
  %39 = mul nsw i32 %38, 2
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load i64, i64* @MCU_M3ARB_PARAMS, align 8
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %48 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @NUMBER_OF_M3ARB_PARAM_SETS, align 4
  %53 = srem i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @WREG32_RCU(i64 %46, i32 %56)
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %36

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %84, %61
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @NUMBER_OF_M3ARB_PARAM_SETS, align 4
  %65 = mul nsw i32 %64, 3
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load i64, i64* @MCU_M3ARB_PARAMS, align 8
  %69 = load i32, i32* %4, align 4
  %70 = mul nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %74 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @NUMBER_OF_M3ARB_PARAM_SETS, align 4
  %79 = srem i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @WREG32_RCU(i64 %72, i32 %82)
  br label %84

84:                                               ; preds = %67
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %62

87:                                               ; preds = %11, %62
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_RCU(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
