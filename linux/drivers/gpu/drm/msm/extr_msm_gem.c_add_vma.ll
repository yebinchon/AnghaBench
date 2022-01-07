; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_add_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_add_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_vma = type { i32, %struct.msm_gem_address_space* }
%struct.drm_gem_object = type { i32 }
%struct.msm_gem_address_space = type { i32 }
%struct.msm_gem_object = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_gem_vma* (%struct.drm_gem_object*, %struct.msm_gem_address_space*)* @add_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_gem_vma* @add_vma(%struct.drm_gem_object* %0, %struct.msm_gem_address_space* %1) #0 {
  %3 = alloca %struct.msm_gem_vma*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.msm_gem_address_space*, align 8
  %6 = alloca %struct.msm_gem_object*, align 8
  %7 = alloca %struct.msm_gem_vma*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.msm_gem_address_space* %1, %struct.msm_gem_address_space** %5, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %9 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %8)
  store %struct.msm_gem_object* %9, %struct.msm_gem_object** %6, align 8
  %10 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %11 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %10, i32 0, i32 1
  %12 = call i32 @mutex_is_locked(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.msm_gem_vma* @kzalloc(i32 16, i32 %17)
  store %struct.msm_gem_vma* %18, %struct.msm_gem_vma** %7, align 8
  %19 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %7, align 8
  %20 = icmp ne %struct.msm_gem_vma* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.msm_gem_vma* @ERR_PTR(i32 %23)
  store %struct.msm_gem_vma* %24, %struct.msm_gem_vma** %3, align 8
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %5, align 8
  %27 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %7, align 8
  %28 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %27, i32 0, i32 1
  store %struct.msm_gem_address_space* %26, %struct.msm_gem_address_space** %28, align 8
  %29 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %7, align 8
  %30 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %29, i32 0, i32 0
  %31 = load %struct.msm_gem_object*, %struct.msm_gem_object** %6, align 8
  %32 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %31, i32 0, i32 0
  %33 = call i32 @list_add_tail(i32* %30, i32* %32)
  %34 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %7, align 8
  store %struct.msm_gem_vma* %34, %struct.msm_gem_vma** %3, align 8
  br label %35

35:                                               ; preds = %25, %21
  %36 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %3, align 8
  ret %struct.msm_gem_vma* %36
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.msm_gem_vma* @kzalloc(i32, i32) #1

declare dso_local %struct.msm_gem_vma* @ERR_PTR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
