; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_vmap_impl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_vmap_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_object = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.etnaviv_gem_object*)* @etnaviv_gem_vmap_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @etnaviv_gem_vmap_impl(%struct.etnaviv_gem_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.etnaviv_gem_object*, align 8
  %4 = alloca %struct.page**, align 8
  store %struct.etnaviv_gem_object* %0, %struct.etnaviv_gem_object** %3, align 8
  %5 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %5, i32 0, i32 1
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %9 = call %struct.page** @etnaviv_gem_get_pages(%struct.etnaviv_gem_object* %8)
  store %struct.page** %9, %struct.page*** %4, align 8
  %10 = load %struct.page**, %struct.page*** %4, align 8
  %11 = call i64 @IS_ERR(%struct.page** %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.page**, %struct.page*** %4, align 8
  %16 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %17 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* @VM_MAP, align 4
  %23 = load i32, i32* @PAGE_KERNEL, align 4
  %24 = call i32 @pgprot_writecombine(i32 %23)
  %25 = call i8* @vmap(%struct.page** %15, i32 %21, i32 %22, i32 %24)
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %14, %13
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.page** @etnaviv_gem_get_pages(%struct.etnaviv_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i8* @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
