; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_bsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_bsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.sumo_power_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sumo_ps = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SUMO_POWERSTATE_FLAGS_BOOST_STATE = common dso_local global i32 0, align 4
@CG_BSP_0 = common dso_local global i64 0, align 8
@BOOST_DPM_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @sumo_program_bsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_program_bsp(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.sumo_power_info*, align 8
  %6 = alloca %struct.sumo_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %9)
  store %struct.sumo_power_info* %10, %struct.sumo_power_info** %5, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %12 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %11)
  store %struct.sumo_ps* %12, %struct.sumo_ps** %6, align 8
  %13 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %14 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %17 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %25 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SUMO_POWERSTATE_FLAGS_BOOST_STATE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.sumo_power_info*, %struct.sumo_power_info** %5, align 8
  %32 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @sumo_calculate_bsp(%struct.radeon_device* %36, i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %56, %35
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %42 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load i64, i64* @CG_BSP_0, align 8
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = load %struct.sumo_power_info*, %struct.sumo_power_info** %5, align 8
  %53 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @WREG32(i64 %51, i32 %54)
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load i64, i64* @CG_BSP_0, align 8
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load %struct.sumo_power_info*, %struct.sumo_power_info** %5, align 8
  %66 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @WREG32(i64 %64, i32 %67)
  %69 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %70 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SUMO_POWERSTATE_FLAGS_BOOST_STATE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %59
  %76 = load i64, i64* @CG_BSP_0, align 8
  %77 = load i32, i32* @BOOST_DPM_LEVEL, align 4
  %78 = mul nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = load %struct.sumo_power_info*, %struct.sumo_power_info** %5, align 8
  %82 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @WREG32(i64 %80, i32 %83)
  br label %85

85:                                               ; preds = %75, %59
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @sumo_calculate_bsp(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
