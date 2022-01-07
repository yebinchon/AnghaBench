; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_set_uvd_clock_after_set_eng_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_set_uvd_clock_after_set_eng_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.trinity_ps = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @trinity_set_uvd_clock_after_set_eng_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.trinity_ps*, align 8
  %8 = alloca %struct.trinity_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %10 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %9)
  store %struct.trinity_ps* %10, %struct.trinity_ps** %7, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %12 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %11)
  store %struct.trinity_ps* %12, %struct.trinity_ps** %8, align 8
  %13 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %14 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %17 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.trinity_ps*, %struct.trinity_ps** %8, align 8
  %25 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.trinity_ps*, %struct.trinity_ps** %8, align 8
  %28 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %23, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %42

37:                                               ; preds = %3
  %38 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %39 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %40 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %41 = call i32 @trinity_setup_uvd_clocks(%struct.radeon_device* %38, %struct.radeon_ps* %39, %struct.radeon_ps* %40)
  br label %42

42:                                               ; preds = %37, %36
  ret void
}

declare dso_local %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @trinity_setup_uvd_clocks(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
