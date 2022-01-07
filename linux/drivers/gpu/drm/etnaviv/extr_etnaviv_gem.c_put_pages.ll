; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_put_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_object = type { i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gem_object*)* @put_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_pages(%struct.etnaviv_gem_object* %0) #0 {
  %2 = alloca %struct.etnaviv_gem_object*, align 8
  store %struct.etnaviv_gem_object* %0, %struct.etnaviv_gem_object** %2, align 8
  %3 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %9 = call i32 @etnaviv_gem_scatterlist_unmap(%struct.etnaviv_gem_object* %8)
  %10 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %11 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @sg_free_table(i32* %12)
  %14 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %15 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %19 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %7, %1
  %21 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %22 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %27 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %26, i32 0, i32 1
  %28 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %29 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @drm_gem_put_pages(i32* %27, i32* %30, i32 1, i32 0)
  %32 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %33 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @etnaviv_gem_scatterlist_unmap(%struct.etnaviv_gem_object*) #1

declare dso_local i32 @sg_free_table(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @drm_gem_put_pages(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
