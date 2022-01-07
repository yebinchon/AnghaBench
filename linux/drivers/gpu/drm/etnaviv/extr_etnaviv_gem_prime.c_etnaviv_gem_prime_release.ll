; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_prime.c_etnaviv_gem_prime_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_prime.c_etnaviv_gem_prime_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_object = type { i32, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gem_object*)* @etnaviv_gem_prime_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_gem_prime_release(%struct.etnaviv_gem_object* %0) #0 {
  %2 = alloca %struct.etnaviv_gem_object*, align 8
  store %struct.etnaviv_gem_object* %0, %struct.etnaviv_gem_object** %2, align 8
  %3 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %9 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %15 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dma_buf_vunmap(i32 %13, i64 %16)
  br label %18

18:                                               ; preds = %7, %1
  %19 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %20 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %25 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @kvfree(i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %30 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %29, i32 0, i32 1
  %31 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %2, align 8
  %32 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @drm_prime_gem_destroy(%struct.TYPE_4__* %30, i32 %33)
  ret void
}

declare dso_local i32 @dma_buf_vunmap(i32, i64) #1

declare dso_local i32 @kvfree(i64) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
