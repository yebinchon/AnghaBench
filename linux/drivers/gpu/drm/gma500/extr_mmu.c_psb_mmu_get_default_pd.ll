; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_get_default_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_get_default_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pd = type { i32 }
%struct.psb_mmu_driver = type { i32, %struct.psb_mmu_pd* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.psb_mmu_pd* @psb_mmu_get_default_pd(%struct.psb_mmu_driver* %0) #0 {
  %2 = alloca %struct.psb_mmu_driver*, align 8
  %3 = alloca %struct.psb_mmu_pd*, align 8
  store %struct.psb_mmu_driver* %0, %struct.psb_mmu_driver** %2, align 8
  %4 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %2, align 8
  %5 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %4, i32 0, i32 0
  %6 = call i32 @down_read(i32* %5)
  %7 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %2, align 8
  %8 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %7, i32 0, i32 1
  %9 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  store %struct.psb_mmu_pd* %9, %struct.psb_mmu_pd** %3, align 8
  %10 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %2, align 8
  %11 = getelementptr inbounds %struct.psb_mmu_driver, %struct.psb_mmu_driver* %10, i32 0, i32 0
  %12 = call i32 @up_read(i32* %11)
  %13 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %3, align 8
  ret %struct.psb_mmu_pd* %13
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
