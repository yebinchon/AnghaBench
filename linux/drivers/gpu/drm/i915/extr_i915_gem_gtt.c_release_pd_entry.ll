; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_release_pd_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_release_pd_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_page_directory = type { i32 }
%struct.i915_page_table = type { i32 }
%struct.i915_page_scratch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_page_directory*, i16, %struct.i915_page_table*, %struct.i915_page_scratch*)* @release_pd_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @release_pd_entry(%struct.i915_page_directory* %0, i16 zeroext %1, %struct.i915_page_table* %2, %struct.i915_page_scratch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_page_directory*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.i915_page_table*, align 8
  %9 = alloca %struct.i915_page_scratch*, align 8
  %10 = alloca i32, align 4
  store %struct.i915_page_directory* %0, %struct.i915_page_directory** %6, align 8
  store i16 %1, i16* %7, align 2
  store %struct.i915_page_table* %2, %struct.i915_page_table** %8, align 8
  store %struct.i915_page_scratch* %3, %struct.i915_page_scratch** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.i915_page_table*, %struct.i915_page_table** %8, align 8
  %12 = getelementptr inbounds %struct.i915_page_table, %struct.i915_page_table* %11, i32 0, i32 0
  %13 = call i64 @atomic_add_unless(i32* %12, i32 -1, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %34

16:                                               ; preds = %4
  %17 = load %struct.i915_page_directory*, %struct.i915_page_directory** %6, align 8
  %18 = getelementptr inbounds %struct.i915_page_directory, %struct.i915_page_directory* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.i915_page_table*, %struct.i915_page_table** %8, align 8
  %21 = getelementptr inbounds %struct.i915_page_table, %struct.i915_page_table* %20, i32 0, i32 0
  %22 = call i64 @atomic_dec_and_test(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.i915_page_directory*, %struct.i915_page_directory** %6, align 8
  %26 = load i16, i16* %7, align 2
  %27 = load %struct.i915_page_scratch*, %struct.i915_page_scratch** %9, align 8
  %28 = call i32 @clear_pd_entry(%struct.i915_page_directory* %25, i16 zeroext %26, %struct.i915_page_scratch* %27)
  store i32 1, i32* %10, align 4
  br label %29

29:                                               ; preds = %24, %16
  %30 = load %struct.i915_page_directory*, %struct.i915_page_directory** %6, align 8
  %31 = getelementptr inbounds %struct.i915_page_directory, %struct.i915_page_directory* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %15
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @clear_pd_entry(%struct.i915_page_directory*, i16 zeroext, %struct.i915_page_scratch*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
