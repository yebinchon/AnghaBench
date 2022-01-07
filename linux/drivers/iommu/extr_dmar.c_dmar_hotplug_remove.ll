; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_hotplug_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_hotplug_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMAR_DSM_FUNC_ATSR = common dso_local global i32 0, align 4
@dmar_check_one_atsr = common dso_local global i32 0, align 4
@DMAR_DSM_FUNC_DRHD = common dso_local global i32 0, align 4
@dmar_hp_remove_drhd = common dso_local global i32 0, align 4
@dmar_release_one_atsr = common dso_local global i32 0, align 4
@dmar_hp_release_drhd = common dso_local global i32 0, align 4
@dmar_hp_add_drhd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dmar_hotplug_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_hotplug_remove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @DMAR_DSM_FUNC_ATSR, align 4
  %7 = call i32 @dmar_walk_dsm_resource(i32 %5, i32 %6, i32* @dmar_check_one_atsr, i32* null)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @DMAR_DSM_FUNC_DRHD, align 4
  %15 = call i32 @dmar_walk_dsm_resource(i32 %13, i32 %14, i32* @dmar_hp_remove_drhd, i32* null)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @DMAR_DSM_FUNC_ATSR, align 4
  %21 = call i32 @dmar_walk_dsm_resource(i32 %19, i32 %20, i32* @dmar_release_one_atsr, i32* null)
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @DMAR_DSM_FUNC_DRHD, align 4
  %25 = call i32 @dmar_walk_dsm_resource(i32 %23, i32 %24, i32* @dmar_hp_release_drhd, i32* null)
  %26 = call i32 @WARN_ON(i32 %25)
  br label %31

27:                                               ; preds = %12
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @DMAR_DSM_FUNC_DRHD, align 4
  %30 = call i32 @dmar_walk_dsm_resource(i32 %28, i32 %29, i32* @dmar_hp_add_drhd, i32* null)
  br label %31

31:                                               ; preds = %27, %18
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @dmar_walk_dsm_resource(i32, i32, i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
