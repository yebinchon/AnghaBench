; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_set_uvd_clock_before_set_eng_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_set_uvd_clock_before_set_eng_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i64, i64 }
%struct.rv6xx_ps = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @rv6xx_set_uvd_clock_before_set_eng_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_set_uvd_clock_before_set_eng_clock(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.rv6xx_ps*, align 8
  %8 = alloca %struct.rv6xx_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %10 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %9)
  store %struct.rv6xx_ps* %10, %struct.rv6xx_ps** %7, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %12 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %11)
  store %struct.rv6xx_ps* %12, %struct.rv6xx_ps** %8, align 8
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
  br label %49

29:                                               ; preds = %20, %3
  %30 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %7, align 8
  %31 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %8, align 8
  %35 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %49

40:                                               ; preds = %29
  %41 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %42 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %41, i64 %44, i64 %47)
  br label %49

49:                                               ; preds = %40, %39, %28
  ret void
}

declare dso_local %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @radeon_set_uvd_clocks(%struct.radeon_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
