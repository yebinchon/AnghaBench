; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_set_uvd_clock_after_set_eng_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_set_uvd_clock_after_set_eng_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i64, i64 }
%struct.ni_ps = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ni_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.ni_ps*, align 8
  %8 = alloca %struct.ni_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %10 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %9)
  store %struct.ni_ps* %10, %struct.ni_ps** %7, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %12 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %11)
  store %struct.ni_ps* %12, %struct.ni_ps** %8, align 8
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %17 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %25 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %63

29:                                               ; preds = %20, %3
  %30 = load %struct.ni_ps*, %struct.ni_ps** %7, align 8
  %31 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.ni_ps*, %struct.ni_ps** %7, align 8
  %34 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ni_ps*, %struct.ni_ps** %8, align 8
  %42 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.ni_ps*, %struct.ni_ps** %8, align 8
  %45 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %40, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %29
  br label %63

54:                                               ; preds = %29
  %55 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %56 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %60 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %55, i64 %58, i64 %61)
  br label %63

63:                                               ; preds = %54, %53, %28
  ret void
}

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @radeon_set_uvd_clocks(%struct.radeon_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
