; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_vm.c_lima_vm_unmap_page_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_vm.c_lima_vm_unmap_page_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_vm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@LIMA_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_vm*, i64, i64)* @lima_vm_unmap_page_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_vm_unmap_page_table(%struct.lima_vm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.lima_vm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.lima_vm* %0, %struct.lima_vm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @LIMA_PBE(i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @LIMA_BTE(i64 %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.lima_vm*, %struct.lima_vm** %4, align 8
  %21 = getelementptr inbounds %struct.lima_vm, %struct.lima_vm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %15
  %30 = load i64, i64* @LIMA_PAGE_SIZE, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %11

33:                                               ; preds = %11
  ret void
}

declare dso_local i64 @LIMA_PBE(i64) #1

declare dso_local i64 @LIMA_BTE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
