; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_free_sub_pt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_free_sub_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i64, i32, %struct.page*)* @free_sub_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @free_sub_pt(i64 %0, i32 %1, %struct.page* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.page* %2, %struct.page** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %33 [
    i32 128, label %8
    i32 129, label %8
    i32 135, label %9
    i32 134, label %13
    i32 133, label %17
    i32 132, label %21
    i32 131, label %25
    i32 130, label %29
  ]

8:                                                ; preds = %3, %3
  br label %35

9:                                                ; preds = %3
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.page*, %struct.page** %6, align 8
  %12 = call %struct.page* @free_pt_page(i64 %10, %struct.page* %11)
  store %struct.page* %12, %struct.page** %6, align 8
  br label %35

13:                                               ; preds = %3
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = call %struct.page* @free_pt_l2(i64 %14, %struct.page* %15)
  store %struct.page* %16, %struct.page** %6, align 8
  br label %35

17:                                               ; preds = %3
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.page*, %struct.page** %6, align 8
  %20 = call %struct.page* @free_pt_l3(i64 %18, %struct.page* %19)
  store %struct.page* %20, %struct.page** %6, align 8
  br label %35

21:                                               ; preds = %3
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call %struct.page* @free_pt_l4(i64 %22, %struct.page* %23)
  store %struct.page* %24, %struct.page** %6, align 8
  br label %35

25:                                               ; preds = %3
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = call %struct.page* @free_pt_l5(i64 %26, %struct.page* %27)
  store %struct.page* %28, %struct.page** %6, align 8
  br label %35

29:                                               ; preds = %3
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = call %struct.page* @free_pt_l6(i64 %30, %struct.page* %31)
  store %struct.page* %32, %struct.page** %6, align 8
  br label %35

33:                                               ; preds = %3
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %33, %29, %25, %21, %17, %13, %9, %8
  %36 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %36
}

declare dso_local %struct.page* @free_pt_page(i64, %struct.page*) #1

declare dso_local %struct.page* @free_pt_l2(i64, %struct.page*) #1

declare dso_local %struct.page* @free_pt_l3(i64, %struct.page*) #1

declare dso_local %struct.page* @free_pt_l4(i64, %struct.page*) #1

declare dso_local %struct.page* @free_pt_l5(i64, %struct.page*) #1

declare dso_local %struct.page* @free_pt_l6(i64, %struct.page*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
