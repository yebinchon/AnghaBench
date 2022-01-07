; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_mn.c_radeon_mn_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_mn.c_radeon_mn_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_notifier = type { i32 }
%struct.mm_struct = type { i32 }
%struct.mmu_notifier_range = type { i32, i32, i32, i32, %struct.mm_struct* }

@MMU_NOTIFY_UNMAP = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_notifier*, %struct.mm_struct*)* @radeon_mn_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_mn_release(%struct.mmu_notifier* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.mmu_notifier*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.mmu_notifier_range, align 8
  store %struct.mmu_notifier* %0, %struct.mmu_notifier** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %6 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %5, i32 0, i32 0
  %7 = load i32, i32* @MMU_NOTIFY_UNMAP, align 4
  store i32 %7, i32* %6, align 8
  %8 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %5, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %5, i32 0, i32 2
  %10 = load i32, i32* @ULONG_MAX, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %5, i32 0, i32 3
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %5, i32 0, i32 4
  %13 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %12, align 8
  %14 = load %struct.mmu_notifier*, %struct.mmu_notifier** %3, align 8
  %15 = call i32 @radeon_mn_invalidate_range_start(%struct.mmu_notifier* %14, %struct.mmu_notifier_range* %5)
  ret void
}

declare dso_local i32 @radeon_mn_invalidate_range_start(%struct.mmu_notifier*, %struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
