; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_prime.c_etnaviv_gem_prime_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_prime.c_etnaviv_gem_prime_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.etnaviv_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_gem_prime_pin(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.etnaviv_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %10 = call %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object* %9)
  store %struct.etnaviv_gem_object* %10, %struct.etnaviv_gem_object** %3, align 8
  %11 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %12 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %15 = call i32 @etnaviv_gem_get_pages(%struct.etnaviv_gem_object* %14)
  %16 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %17 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  br label %19

19:                                               ; preds = %8, %1
  ret i32 0
}

declare dso_local %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @etnaviv_gem_get_pages(%struct.etnaviv_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
