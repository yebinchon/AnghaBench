; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_vma.c_msm_gem_close_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_vma.c_msm_gem_close_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_address_space = type { i32 }
%struct.msm_gem_vma = type { i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_gem_close_vma(%struct.msm_gem_address_space* %0, %struct.msm_gem_vma* %1) #0 {
  %3 = alloca %struct.msm_gem_address_space*, align 8
  %4 = alloca %struct.msm_gem_vma*, align 8
  store %struct.msm_gem_address_space* %0, %struct.msm_gem_address_space** %3, align 8
  store %struct.msm_gem_vma* %1, %struct.msm_gem_vma** %4, align 8
  %5 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %4, align 8
  %6 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %4, align 8
  %11 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ true, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %40

20:                                               ; preds = %14
  %21 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %3, align 8
  %22 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %4, align 8
  %25 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %4, align 8
  %30 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %29, i32 0, i32 2
  %31 = call i32 @drm_mm_remove_node(i32* %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %3, align 8
  %34 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %4, align 8
  %37 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %3, align 8
  %39 = call i32 @msm_gem_address_space_put(%struct.msm_gem_address_space* %38)
  br label %40

40:                                               ; preds = %32, %19
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_mm_remove_node(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @msm_gem_address_space_put(%struct.msm_gem_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
