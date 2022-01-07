; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mmu_rb.c___mmu_rb_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mmu_rb.c___mmu_rb_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_rb_node = type { i32 }
%struct.mmu_rb_handler = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 (%struct.mmu_rb_node*, i64, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmu_rb_node* (%struct.mmu_rb_handler*, i64, i64)* @__mmu_rb_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmu_rb_node* @__mmu_rb_search(%struct.mmu_rb_handler* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mmu_rb_node*, align 8
  %5 = alloca %struct.mmu_rb_handler*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mmu_rb_node*, align 8
  store %struct.mmu_rb_handler* %0, %struct.mmu_rb_handler** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mmu_rb_node* null, %struct.mmu_rb_node** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @trace_hfi1_mmu_rb_search(i64 %9, i64 %10)
  %12 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %5, align 8
  %13 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (%struct.mmu_rb_node*, i64, i64)*, i64 (%struct.mmu_rb_node*, i64, i64)** %15, align 8
  %17 = icmp ne i64 (%struct.mmu_rb_node*, i64, i64)* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %5, align 8
  %20 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %22, %23
  %25 = sub i64 %24, 1
  %26 = call %struct.mmu_rb_node* @__mmu_int_rb_iter_first(i32* %20, i64 %21, i64 %25)
  store %struct.mmu_rb_node* %26, %struct.mmu_rb_node** %8, align 8
  br label %62

27:                                               ; preds = %3
  %28 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %5, align 8
  %29 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %28, i32 0, i32 1
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %31, %32
  %34 = sub i64 %33, 1
  %35 = call %struct.mmu_rb_node* @__mmu_int_rb_iter_first(i32* %29, i64 %30, i64 %34)
  store %struct.mmu_rb_node* %35, %struct.mmu_rb_node** %8, align 8
  br label %36

36:                                               ; preds = %53, %27
  %37 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %8, align 8
  %38 = icmp ne %struct.mmu_rb_node* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load %struct.mmu_rb_handler*, %struct.mmu_rb_handler** %5, align 8
  %41 = getelementptr inbounds %struct.mmu_rb_handler, %struct.mmu_rb_handler* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64 (%struct.mmu_rb_node*, i64, i64)*, i64 (%struct.mmu_rb_node*, i64, i64)** %43, align 8
  %45 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 %44(%struct.mmu_rb_node* %45, i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %8, align 8
  store %struct.mmu_rb_node* %51, %struct.mmu_rb_node** %4, align 8
  br label %64

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %56, %57
  %59 = sub i64 %58, 1
  %60 = call %struct.mmu_rb_node* @__mmu_int_rb_iter_next(%struct.mmu_rb_node* %54, i64 %55, i64 %59)
  store %struct.mmu_rb_node* %60, %struct.mmu_rb_node** %8, align 8
  br label %36

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61, %18
  %63 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %8, align 8
  store %struct.mmu_rb_node* %63, %struct.mmu_rb_node** %4, align 8
  br label %64

64:                                               ; preds = %62, %50
  %65 = load %struct.mmu_rb_node*, %struct.mmu_rb_node** %4, align 8
  ret %struct.mmu_rb_node* %65
}

declare dso_local i32 @trace_hfi1_mmu_rb_search(i64, i64) #1

declare dso_local %struct.mmu_rb_node* @__mmu_int_rb_iter_first(i32*, i64, i64) #1

declare dso_local %struct.mmu_rb_node* @__mmu_int_rb_iter_next(%struct.mmu_rb_node*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
