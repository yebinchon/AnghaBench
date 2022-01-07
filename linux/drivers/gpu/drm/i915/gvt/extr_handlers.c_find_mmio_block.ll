; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_find_mmio_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_find_mmio_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gvt_mmio_block = type { i64, i32, i32 }
%struct.intel_gvt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.gvt_mmio_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gvt_mmio_block* (%struct.intel_gvt*, i32)* @find_mmio_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gvt_mmio_block* @find_mmio_block(%struct.intel_gvt* %0, i32 %1) #0 {
  %3 = alloca %struct.gvt_mmio_block*, align 8
  %4 = alloca %struct.intel_gvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.gvt_mmio_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_gvt* %0, %struct.intel_gvt** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %11 = call i64 @intel_gvt_get_device_type(%struct.intel_gvt* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %13 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.gvt_mmio_block*, %struct.gvt_mmio_block** %14, align 8
  store %struct.gvt_mmio_block* %15, %struct.gvt_mmio_block** %7, align 8
  %16 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %17 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %53, %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.gvt_mmio_block*, %struct.gvt_mmio_block** %7, align 8
  %27 = getelementptr inbounds %struct.gvt_mmio_block, %struct.gvt_mmio_block* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = and i64 %25, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %53

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.gvt_mmio_block*, %struct.gvt_mmio_block** %7, align 8
  %35 = getelementptr inbounds %struct.gvt_mmio_block, %struct.gvt_mmio_block* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i915_mmio_reg_offset(i32 %36)
  %38 = icmp uge i32 %33, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.gvt_mmio_block*, %struct.gvt_mmio_block** %7, align 8
  %42 = getelementptr inbounds %struct.gvt_mmio_block, %struct.gvt_mmio_block* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @i915_mmio_reg_offset(i32 %43)
  %45 = load %struct.gvt_mmio_block*, %struct.gvt_mmio_block** %7, align 8
  %46 = getelementptr inbounds %struct.gvt_mmio_block, %struct.gvt_mmio_block* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add i32 %44, %47
  %49 = icmp ult i32 %40, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load %struct.gvt_mmio_block*, %struct.gvt_mmio_block** %7, align 8
  store %struct.gvt_mmio_block* %51, %struct.gvt_mmio_block** %3, align 8
  br label %59

52:                                               ; preds = %39, %32
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = load %struct.gvt_mmio_block*, %struct.gvt_mmio_block** %7, align 8
  %57 = getelementptr inbounds %struct.gvt_mmio_block, %struct.gvt_mmio_block* %56, i32 1
  store %struct.gvt_mmio_block* %57, %struct.gvt_mmio_block** %7, align 8
  br label %20

58:                                               ; preds = %20
  store %struct.gvt_mmio_block* null, %struct.gvt_mmio_block** %3, align 8
  br label %59

59:                                               ; preds = %58, %50
  %60 = load %struct.gvt_mmio_block*, %struct.gvt_mmio_block** %3, align 8
  ret %struct.gvt_mmio_block* %60
}

declare dso_local i64 @intel_gvt_get_device_type(%struct.intel_gvt*) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
