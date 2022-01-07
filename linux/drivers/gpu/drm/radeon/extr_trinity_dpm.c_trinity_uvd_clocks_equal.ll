; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_uvd_clocks_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_uvd_clocks_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_ps = type { i64, i64 }
%struct.trinity_ps = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_ps*, %struct.radeon_ps*)* @trinity_uvd_clocks_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trinity_uvd_clocks_equal(%struct.radeon_ps* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.trinity_ps*, align 8
  %7 = alloca %struct.trinity_ps*, align 8
  store %struct.radeon_ps* %0, %struct.radeon_ps** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  %8 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %9 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %8)
  store %struct.trinity_ps* %9, %struct.trinity_ps** %6, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %11 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %10)
  store %struct.trinity_ps* %11, %struct.trinity_ps** %7, align 8
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %2
  %20 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %19
  %28 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %29 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %32 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %27
  %36 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %37 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %40 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %35
  %44 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %45 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %48 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.trinity_ps*, %struct.trinity_ps** %6, align 8
  %53 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %56 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %61

60:                                               ; preds = %51, %43, %35, %27, %19, %2
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
