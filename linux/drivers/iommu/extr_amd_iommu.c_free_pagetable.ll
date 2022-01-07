; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_free_pagetable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_free_pagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32, i64 }
%struct.page = type { i32 }

@PAGE_MODE_NONE = common dso_local global i32 0, align 4
@PAGE_MODE_6_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protection_domain*)* @free_pagetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pagetable(%struct.protection_domain* %0) #0 {
  %2 = alloca %struct.protection_domain*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %2, align 8
  %5 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %6 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  store %struct.page* null, %struct.page** %4, align 8
  %8 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %9 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAGE_MODE_NONE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %15 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PAGE_MODE_6_LEVEL, align 4
  %18 = icmp sgt i32 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %25 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call %struct.page* @free_sub_pt(i64 %23, i32 %26, %struct.page* %27)
  store %struct.page* %28, %struct.page** %4, align 8
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @free_page_list(%struct.page* %29)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @free_sub_pt(i64, i32, %struct.page*) #1

declare dso_local i32 @free_page_list(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
