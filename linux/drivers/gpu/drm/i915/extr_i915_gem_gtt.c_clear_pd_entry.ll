; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_clear_pd_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_clear_pd_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_page_directory = type { i32** }
%struct.i915_page_scratch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_page_directory*, i16, %struct.i915_page_scratch*)* @clear_pd_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_pd_entry(%struct.i915_page_directory* %0, i16 zeroext %1, %struct.i915_page_scratch* %2) #0 {
  %4 = alloca %struct.i915_page_directory*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.i915_page_scratch*, align 8
  store %struct.i915_page_directory* %0, %struct.i915_page_directory** %4, align 8
  store i16 %1, i16* %5, align 2
  store %struct.i915_page_scratch* %2, %struct.i915_page_scratch** %6, align 8
  %7 = load %struct.i915_page_directory*, %struct.i915_page_directory** %4, align 8
  %8 = call i32 @px_used(%struct.i915_page_directory* %7)
  %9 = call i64 @atomic_read(i32 %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load %struct.i915_page_directory*, %struct.i915_page_directory** %4, align 8
  %14 = call i32 @px_base(%struct.i915_page_directory* %13)
  %15 = load i16, i16* %5, align 2
  %16 = load %struct.i915_page_scratch*, %struct.i915_page_scratch** %6, align 8
  %17 = getelementptr inbounds %struct.i915_page_scratch, %struct.i915_page_scratch* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @write_dma_entry(i32 %14, i16 zeroext %15, i32 %18)
  %20 = load %struct.i915_page_directory*, %struct.i915_page_directory** %4, align 8
  %21 = getelementptr inbounds %struct.i915_page_directory, %struct.i915_page_directory* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  store i32* null, i32** %25, align 8
  %26 = load %struct.i915_page_directory*, %struct.i915_page_directory** %4, align 8
  %27 = call i32 @px_used(%struct.i915_page_directory* %26)
  %28 = call i32 @atomic_dec(i32 %27)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32) #1

declare dso_local i32 @px_used(%struct.i915_page_directory*) #1

declare dso_local i32 @write_dma_entry(i32, i16 zeroext, i32) #1

declare dso_local i32 @px_base(%struct.i915_page_directory*) #1

declare dso_local i32 @atomic_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
