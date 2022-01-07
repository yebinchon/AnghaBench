; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_get_bar_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_intel_vgpu_get_bar_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32)* @intel_vgpu_get_bar_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_vgpu_get_bar_addr(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %43 [
    i32 128, label %31
    i32 129, label %42
    i32 130, label %42
  ]

31:                                               ; preds = %2
  %32 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %33 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = add nsw i64 %38, 4
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  br label %44

42:                                               ; preds = %2, %2
  br label %43

43:                                               ; preds = %2, %42
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 %45, 32
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %46, %47
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
