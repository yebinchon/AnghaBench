; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_gen8_gtt_get_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_gen8_gtt_get_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt_gtt_entry = type { i64, i64 }

@GTT_TYPE_PPGTT_PTE_1G_ENTRY = common dso_local global i64 0, align 8
@ADDR_1G_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GTT_TYPE_PPGTT_PTE_2M_ENTRY = common dso_local global i64 0, align 8
@ADDR_2M_MASK = common dso_local global i64 0, align 8
@GTT_TYPE_PPGTT_PTE_64K_ENTRY = common dso_local global i64 0, align 8
@ADDR_64K_MASK = common dso_local global i64 0, align 8
@ADDR_4K_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intel_gvt_gtt_entry*)* @gen8_gtt_get_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gen8_gtt_get_pfn(%struct.intel_gvt_gtt_entry* %0) #0 {
  %2 = alloca %struct.intel_gvt_gtt_entry*, align 8
  %3 = alloca i64, align 8
  store %struct.intel_gvt_gtt_entry* %0, %struct.intel_gvt_gtt_entry** %2, align 8
  %4 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %5 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @GTT_TYPE_PPGTT_PTE_1G_ENTRY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %11 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ADDR_1G_MASK, align 8
  %14 = and i64 %12, %13
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = lshr i64 %14, %15
  store i64 %16, i64* %3, align 8
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %19 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GTT_TYPE_PPGTT_PTE_2M_ENTRY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %25 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ADDR_2M_MASK, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %3, align 8
  br label %54

31:                                               ; preds = %17
  %32 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %33 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @GTT_TYPE_PPGTT_PTE_64K_ENTRY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %39 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ADDR_64K_MASK, align 8
  %42 = and i64 %40, %41
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = lshr i64 %42, %43
  store i64 %44, i64* %3, align 8
  br label %53

45:                                               ; preds = %31
  %46 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %2, align 8
  %47 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ADDR_4K_MASK, align 8
  %50 = and i64 %48, %49
  %51 = load i64, i64* @PAGE_SHIFT, align 8
  %52 = lshr i64 %50, %51
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %45, %37
  br label %54

54:                                               ; preds = %53, %23
  br label %55

55:                                               ; preds = %54, %9
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
