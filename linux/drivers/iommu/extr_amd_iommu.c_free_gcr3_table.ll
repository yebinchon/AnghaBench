; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_free_gcr3_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_free_gcr3_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_domain = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protection_domain*)* @free_gcr3_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_gcr3_table(%struct.protection_domain* %0) #0 {
  %2 = alloca %struct.protection_domain*, align 8
  store %struct.protection_domain* %0, %struct.protection_domain** %2, align 8
  %3 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %4 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %9 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @free_gcr3_tbl_level2(i64 %10)
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %14 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %19 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @free_gcr3_tbl_level1(i64 %20)
  br label %29

22:                                               ; preds = %12
  %23 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %24 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  br label %29

29:                                               ; preds = %22, %17
  br label %30

30:                                               ; preds = %29, %7
  %31 = load %struct.protection_domain*, %struct.protection_domain** %2, align 8
  %32 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @free_page(i64 %33)
  ret void
}

declare dso_local i32 @free_gcr3_tbl_level2(i64) #1

declare dso_local i32 @free_gcr3_tbl_level1(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
