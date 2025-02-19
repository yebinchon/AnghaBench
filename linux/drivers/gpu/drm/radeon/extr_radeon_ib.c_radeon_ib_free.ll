; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ib.c_radeon_ib_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ib.c_radeon_ib_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_ib_free(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %7 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %6, i32 0, i32 2
  %8 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @radeon_sync_free(%struct.radeon_device* %5, i32* %7, i32 %10)
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %13, i32 0, i32 1
  %15 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @radeon_sa_bo_free(%struct.radeon_device* %12, i32* %14, i32 %17)
  %19 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %19, i32 0, i32 0
  %21 = call i32 @radeon_fence_unref(i32* %20)
  ret void
}

declare dso_local i32 @radeon_sync_free(%struct.radeon_device*, i32*, i32) #1

declare dso_local i32 @radeon_sa_bo_free(%struct.radeon_device*, i32*, i32) #1

declare dso_local i32 @radeon_fence_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
