; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_mapping_unreference.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_mapping_unreference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_vram_mapping = type { i64, %struct.etnaviv_gem_object* }
%struct.etnaviv_gem_object = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_gem_mapping_unreference(%struct.etnaviv_vram_mapping* %0) #0 {
  %2 = alloca %struct.etnaviv_vram_mapping*, align 8
  %3 = alloca %struct.etnaviv_gem_object*, align 8
  store %struct.etnaviv_vram_mapping* %0, %struct.etnaviv_vram_mapping** %2, align 8
  %4 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %2, align 8
  %5 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %4, i32 0, i32 1
  %6 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %5, align 8
  store %struct.etnaviv_gem_object* %6, %struct.etnaviv_gem_object** %3, align 8
  %7 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %2, align 8
  %11 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %2, align 8
  %17 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %21 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %24 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %23, i32 0, i32 0
  %25 = call i32 @drm_gem_object_put_unlocked(i32* %24)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
