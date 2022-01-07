; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen11_gt_identity_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen11_gt_identity_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32 }

@COPY_ENGINE_CLASS = common dso_local global i64 0, align 8
@OTHER_CLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"unknown interrupt class=0x%x, instance=0x%x, intr=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*, i32)* @gen11_gt_identity_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen11_gt_identity_handler(%struct.intel_gt* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @GEN11_INTR_ENGINE_CLASS(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @GEN11_INTR_ENGINE_INSTANCE(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @GEN11_INTR_ENGINE_INTR(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %43

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @COPY_ENGINE_CLASS, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %7, align 4
  call void @gen11_engine_irq_handler(%struct.intel_gt* %26, i64 %27, i64 %28, i32 %29)
  br label %43

30:                                               ; preds = %21
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @OTHER_CLASS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  call void @gen11_other_irq_handler(%struct.intel_gt* %35, i64 %36, i32 %37)
  br label %43

38:                                               ; preds = %30
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %34, %25, %20
  ret void
}

declare dso_local i64 @GEN11_INTR_ENGINE_CLASS(i32) #1

declare dso_local i64 @GEN11_INTR_ENGINE_INSTANCE(i32) #1

declare dso_local i32 @GEN11_INTR_ENGINE_INTR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local void @gen11_engine_irq_handler(%struct.intel_gt*, i64, i64, i32) #1

declare dso_local void @gen11_other_irq_handler(%struct.intel_gt*, i64, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
