; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_prime.c_etnaviv_gem_prime_get_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_prime.c_etnaviv_gem_prime_get_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.etnaviv_gem_object = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @etnaviv_gem_prime_get_sg_table(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.sg_table*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.etnaviv_gem_object*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = call %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object* %6)
  store %struct.etnaviv_gem_object* %7, %struct.etnaviv_gem_object** %4, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %4, align 8
  %14 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.sg_table* @ERR_PTR(i32 %23)
  store %struct.sg_table* %24, %struct.sg_table** %2, align 8
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %4, align 8
  %27 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.sg_table* @drm_prime_pages_to_sg(i32 %28, i32 %29)
  store %struct.sg_table* %30, %struct.sg_table** %2, align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  ret %struct.sg_table* %32
}

declare dso_local %struct.etnaviv_gem_object* @to_etnaviv_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local %struct.sg_table* @drm_prime_pages_to_sg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
