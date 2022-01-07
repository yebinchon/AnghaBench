; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_do_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_do_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_do_program_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_do_program_memory_timing_parameters(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.ci_power_info*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %8)
  store %struct.ci_power_info* %9, %struct.ci_power_info** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 @memset(%struct.TYPE_13__* %4, i32 0, i32 8)
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %64, %1
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %12, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %11
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %21, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %20
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %31 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %40 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = call i32 @ci_populate_memory_timing_parameters(%struct.radeon_device* %29, i32 %38, i32 %47, i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %28
  br label %63

59:                                               ; preds = %28
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %20

63:                                               ; preds = %58, %20
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %11

67:                                               ; preds = %11
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %72 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %73 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = bitcast %struct.TYPE_13__* %4 to i32*
  %76 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %77 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ci_copy_bytes_to_smc(%struct.radeon_device* %71, i32 %74, i32* %75, i32 8, i32 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %70, %67
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ci_populate_memory_timing_parameters(%struct.radeon_device*, i32, i32, i32*) #1

declare dso_local i32 @ci_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
