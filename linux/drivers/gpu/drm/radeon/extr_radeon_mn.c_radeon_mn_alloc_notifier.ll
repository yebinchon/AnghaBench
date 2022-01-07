; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_mn.c_radeon_mn_alloc_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_mn.c_radeon_mn_alloc_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_notifier = type { i32 }
%struct.mm_struct = type { i32 }
%struct.radeon_mn = type { %struct.mmu_notifier, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmu_notifier* (%struct.mm_struct*)* @radeon_mn_alloc_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmu_notifier* @radeon_mn_alloc_notifier(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mmu_notifier*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.radeon_mn*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.radeon_mn* @kzalloc(i32 12, i32 %5)
  store %struct.radeon_mn* %6, %struct.radeon_mn** %4, align 8
  %7 = load %struct.radeon_mn*, %struct.radeon_mn** %4, align 8
  %8 = icmp ne %struct.radeon_mn* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.mmu_notifier* @ERR_PTR(i32 %11)
  store %struct.mmu_notifier* %12, %struct.mmu_notifier** %2, align 8
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.radeon_mn*, %struct.radeon_mn** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_mn, %struct.radeon_mn* %14, i32 0, i32 2
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load i32, i32* @RB_ROOT_CACHED, align 4
  %18 = load %struct.radeon_mn*, %struct.radeon_mn** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_mn, %struct.radeon_mn* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.radeon_mn*, %struct.radeon_mn** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_mn, %struct.radeon_mn* %20, i32 0, i32 0
  store %struct.mmu_notifier* %21, %struct.mmu_notifier** %2, align 8
  br label %22

22:                                               ; preds = %13, %9
  %23 = load %struct.mmu_notifier*, %struct.mmu_notifier** %2, align 8
  ret %struct.mmu_notifier* %23
}

declare dso_local %struct.radeon_mn* @kzalloc(i32, i32) #1

declare dso_local %struct.mmu_notifier* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
