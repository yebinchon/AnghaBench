; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_backend_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_backend_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32 }
%struct.radeon_ttm_tt = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*)* @radeon_ttm_backend_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_ttm_backend_unbind(%struct.ttm_tt* %0) #0 {
  %2 = alloca %struct.ttm_tt*, align 8
  %3 = alloca %struct.radeon_ttm_tt*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %2, align 8
  %4 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %5 = bitcast %struct.ttm_tt* %4 to i8*
  %6 = bitcast i8* %5 to %struct.radeon_ttm_tt*
  store %struct.radeon_ttm_tt* %6, %struct.radeon_ttm_tt** %3, align 8
  %7 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %14 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @radeon_gart_unbind(i32 %9, i32 %12, i32 %15)
  %17 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.ttm_tt*, %struct.ttm_tt** %2, align 8
  %23 = call i32 @radeon_ttm_tt_unpin_userptr(%struct.ttm_tt* %22)
  br label %24

24:                                               ; preds = %21, %1
  ret i32 0
}

declare dso_local i32 @radeon_gart_unbind(i32, i32, i32) #1

declare dso_local i32 @radeon_ttm_tt_unpin_userptr(%struct.ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
