; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_smc_initial_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_smc_initial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.radeon_ps = type { i32 }
%struct.ci_ps = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.ci_power_info = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @ci_populate_smc_initial_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_populate_smc_initial_state(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.ci_ps*, align 8
  %6 = alloca %struct.ci_power_info*, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %8 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %9 = call %struct.ci_ps* @ci_get_ps(%struct.radeon_ps* %8)
  store %struct.ci_ps* %9, %struct.ci_ps** %5, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %10)
  store %struct.ci_power_info* %11, %struct.ci_power_info** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %47, %2
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %13, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %12
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %35 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %33, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %22
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %44 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  br label %50

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %12

50:                                               ; preds = %41, %12
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %86, %50
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %52, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %51
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %74 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %72, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %61
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %83 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  store i64 %81, i64* %84, align 8
  br label %89

85:                                               ; preds = %61
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %7, align 8
  br label %51

89:                                               ; preds = %80, %51
  ret void
}

declare dso_local %struct.ci_ps* @ci_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
