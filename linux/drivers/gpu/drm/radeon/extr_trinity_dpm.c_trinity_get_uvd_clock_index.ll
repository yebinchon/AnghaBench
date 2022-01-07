; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_get_uvd_clock_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_get_uvd_clock_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i64, i64 }
%struct.trinity_power_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"UVD clock index not found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @trinity_get_uvd_clock_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trinity_get_uvd_clock_index(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.trinity_power_info*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %7)
  store %struct.trinity_power_info* %8, %struct.trinity_power_info** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %42, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.trinity_power_info*, %struct.trinity_power_info** %5, align 8
  %17 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %15, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %12
  %27 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.trinity_power_info*, %struct.trinity_power_info** %5, align 8
  %31 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %29, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %45

41:                                               ; preds = %26, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %9

45:                                               ; preds = %40, %9
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
