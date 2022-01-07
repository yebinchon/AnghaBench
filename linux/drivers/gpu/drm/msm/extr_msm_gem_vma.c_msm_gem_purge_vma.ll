; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_vma.c_msm_gem_purge_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_vma.c_msm_gem_purge_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_address_space = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, i32)* }
%struct.msm_gem_vma = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_gem_purge_vma(%struct.msm_gem_address_space* %0, %struct.msm_gem_vma* %1) #0 {
  %3 = alloca %struct.msm_gem_address_space*, align 8
  %4 = alloca %struct.msm_gem_vma*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_gem_address_space* %0, %struct.msm_gem_address_space** %3, align 8
  store %struct.msm_gem_vma* %1, %struct.msm_gem_vma** %4, align 8
  %6 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %4, align 8
  %7 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = shl i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %4, align 8
  %13 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %4, align 8
  %22 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %50

26:                                               ; preds = %20
  %27 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %3, align 8
  %28 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %3, align 8
  %33 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %37, align 8
  %39 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %3, align 8
  %40 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %4, align 8
  %43 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 %38(%struct.TYPE_6__* %41, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %31, %26
  %48 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %4, align 8
  %49 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %25, %19
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
