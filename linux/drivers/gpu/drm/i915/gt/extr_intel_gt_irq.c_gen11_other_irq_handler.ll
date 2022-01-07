; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen11_other_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen11_other_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OTHER_GUC_INSTANCE = common dso_local global i64 0, align 8
@OTHER_GTPM_INSTANCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"unhandled other interrupt instance=0x%x, iir=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*, i64, i32)* @gen11_other_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen11_other_irq_handler(%struct.intel_gt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @OTHER_GUC_INSTANCE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %12 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  call void @guc_irq_handler(i32* %13, i32 %14)
  br label %26

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @OTHER_GTPM_INSTANCE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %21 = load i32, i32* %6, align 4
  call void @gen11_rps_irq_handler(%struct.intel_gt* %20, i32 %21)
  br label %26

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %19, %10
  ret void
}

declare dso_local void @guc_irq_handler(i32*, i32) #1

declare dso_local void @gen11_rps_irq_handler(%struct.intel_gt*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
