; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_init_send_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_init_send_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.intel_gt = type { i32, i32 }

@GEN11_SOFT_SCRATCH_COUNT = common dso_local global i32 0, align 4
@GUC_MAX_MMIO_MSG_LEN = common dso_local global i64 0, align 8
@SOFT_SCRATCH_COUNT = common dso_local global i64 0, align 8
@FW_REG_READ = common dso_local global i32 0, align 4
@FW_REG_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_guc_init_send_regs(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  %6 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %7 = call %struct.intel_gt* @guc_to_gt(%struct.intel_guc* %6)
  store %struct.intel_gt* %7, %struct.intel_gt** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %9 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @INTEL_GEN(i32 %10)
  %12 = icmp sge i32 %11, 11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = call i32 @GEN11_SOFT_SCRATCH(i32 0)
  %15 = call i8* @i915_mmio_reg_offset(i32 %14)
  %16 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %17 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i8* %15, i8** %18, align 8
  %19 = load i32, i32* @GEN11_SOFT_SCRATCH_COUNT, align 4
  %20 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %21 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  br label %39

23:                                               ; preds = %1
  %24 = call i32 @SOFT_SCRATCH(i32 0)
  %25 = call i8* @i915_mmio_reg_offset(i32 %24)
  %26 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %27 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i8* %25, i8** %28, align 8
  %29 = load i64, i64* @GUC_MAX_MMIO_MSG_LEN, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %32 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i64, i64* @GUC_MAX_MMIO_MSG_LEN, align 8
  %35 = load i64, i64* @SOFT_SCRATCH_COUNT, align 8
  %36 = icmp sgt i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUILD_BUG_ON(i32 %37)
  br label %39

39:                                               ; preds = %23, %13
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %43 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %40
  %48 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %49 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @guc_send_reg(%struct.intel_guc* %51, i32 %52)
  %54 = load i32, i32* @FW_REG_READ, align 4
  %55 = load i32, i32* @FW_REG_WRITE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @intel_uncore_forcewake_for_reg(i32 %50, i32 %53, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %40

63:                                               ; preds = %40
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %66 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  ret void
}

declare dso_local %struct.intel_gt* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i8* @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @GEN11_SOFT_SCRATCH(i32) #1

declare dso_local i32 @SOFT_SCRATCH(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @intel_uncore_forcewake_for_reg(i32, i32, i32) #1

declare dso_local i32 @guc_send_reg(%struct.intel_guc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
