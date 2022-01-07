; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_userptr_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_userptr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_object = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gem_object*)* @etnaviv_gem_userptr_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_gem_userptr_release(%struct.etnaviv_gem_object* %0) #0 {
  %2 = alloca %struct.etnaviv_gem_object*, align 8
  %3 = alloca i32, align 4
  store %struct.etnaviv_gem_object* %0, %struct.etnaviv_gem_object** %2, align 8
  %4 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %5 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %10 = call i32 @etnaviv_gem_scatterlist_unmap(%struct.etnaviv_gem_object* %9)
  %11 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %12 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @sg_free_table(i64 %13)
  %15 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @kfree(i64 %17)
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %21 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %32 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @release_pages(i64 %33, i32 %34)
  %36 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %37 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @kvfree(i64 %38)
  br label %40

40:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @etnaviv_gem_scatterlist_unmap(%struct.etnaviv_gem_object*) #1

declare dso_local i32 @sg_free_table(i64) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @release_pages(i64, i32) #1

declare dso_local i32 @kvfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
