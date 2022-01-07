; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_vma.c_msm_gem_map_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_vma.c_msm_gem_map_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_address_space = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, %struct.sg_table*, i32, i32)* }
%struct.msm_gem_vma = type { i32, i32, i32 }
%struct.sg_table = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gem_map_vma(%struct.msm_gem_address_space* %0, %struct.msm_gem_vma* %1, i32 %2, %struct.sg_table* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_gem_address_space*, align 8
  %8 = alloca %struct.msm_gem_vma*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sg_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.msm_gem_address_space* %0, %struct.msm_gem_address_space** %7, align 8
  store %struct.msm_gem_vma* %1, %struct.msm_gem_vma** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sg_table* %3, %struct.sg_table** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %8, align 8
  %18 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %74

28:                                               ; preds = %5
  %29 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %8, align 8
  %30 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %8, align 8
  %34 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %74

38:                                               ; preds = %28
  %39 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %8, align 8
  %40 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %7, align 8
  %42 = icmp ne %struct.msm_gem_address_space* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %7, align 8
  %45 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %7, align 8
  %50 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_4__*, i32, %struct.sg_table*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, %struct.sg_table*, i32, i32)** %54, align 8
  %56 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %7, align 8
  %57 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %8, align 8
  %60 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sg_table*, %struct.sg_table** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 %55(%struct.TYPE_4__* %58, i32 %61, %struct.sg_table* %62, i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %48, %43, %38
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.msm_gem_vma*, %struct.msm_gem_vma** %8, align 8
  %71 = getelementptr inbounds %struct.msm_gem_vma, %struct.msm_gem_vma* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %37, %25
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
