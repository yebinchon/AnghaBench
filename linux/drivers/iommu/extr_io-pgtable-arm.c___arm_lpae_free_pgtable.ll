; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c___arm_lpae_free_pgtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c___arm_lpae_free_pgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_lpae_io_pgtable = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ARM_LPAE_MAX_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_lpae_io_pgtable*, i32, i32*)* @__arm_lpae_free_pgtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__arm_lpae_free_pgtable(%struct.arm_lpae_io_pgtable* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.arm_lpae_io_pgtable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.arm_lpae_io_pgtable* %0, %struct.arm_lpae_io_pgtable** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %4, align 8
  %13 = call i32 @ARM_LPAE_START_LVL(%struct.arm_lpae_io_pgtable* %12)
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %4, align 8
  %17 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %4, align 8
  %21 = call i64 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable* %20)
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32*, i32** %6, align 8
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ARM_LPAE_MAX_LEVELS, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %8, align 8
  br label %36

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr i8, i8* %32, i64 %33
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %8, align 8
  br label %36

36:                                               ; preds = %30, %28
  br label %37

37:                                               ; preds = %57, %56, %36
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  %44 = load i32, i32* %42, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %4, align 8
  %51 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @iopte_leaf(i32 %48, i32 %49, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47, %41
  br label %37

57:                                               ; preds = %47
  %58 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %4, align 8
  %63 = call i32* @iopte_deref(i32 %61, %struct.arm_lpae_io_pgtable* %62)
  call void @__arm_lpae_free_pgtable(%struct.arm_lpae_io_pgtable* %58, i32 %60, i32* %63)
  br label %37

64:                                               ; preds = %37
  %65 = load i32*, i32** %7, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %4, align 8
  %68 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @__arm_lpae_free_pages(i32* %65, i64 %66, i32* %69)
  ret void
}

declare dso_local i32 @ARM_LPAE_START_LVL(%struct.arm_lpae_io_pgtable*) #1

declare dso_local i64 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable*) #1

declare dso_local i64 @iopte_leaf(i32, i32, i32) #1

declare dso_local i32* @iopte_deref(i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @__arm_lpae_free_pages(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
