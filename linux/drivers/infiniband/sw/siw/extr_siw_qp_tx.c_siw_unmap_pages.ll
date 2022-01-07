; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_unmap_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_unmap_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i64)* @siw_unmap_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_unmap_pages(%struct.page** %0, i64 %1) #0 {
  %3 = alloca %struct.page**, align 8
  %4 = alloca i64, align 8
  store %struct.page** %0, %struct.page*** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %17, %2
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @BIT(i32 0)
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.page**, %struct.page*** %3, align 8
  %15 = load %struct.page*, %struct.page** %14, align 8
  %16 = call i32 @kunmap(%struct.page* %15)
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.page**, %struct.page*** %3, align 8
  %19 = getelementptr inbounds %struct.page*, %struct.page** %18, i32 1
  store %struct.page** %19, %struct.page*** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = lshr i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %5

22:                                               ; preds = %5
  ret void
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
