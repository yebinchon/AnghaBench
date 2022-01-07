; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen11_engine_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen11_engine_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.intel_engine_cs*** }
%struct.intel_engine_cs = type { i32 }

@MAX_ENGINE_INSTANCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"unhandled engine interrupt class=0x%x, instance=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*, i64, i64, i32)* @gen11_engine_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen11_engine_irq_handler(%struct.intel_gt* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_gt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_engine_cs*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @MAX_ENGINE_INSTANCE, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load %struct.intel_gt*, %struct.intel_gt** %5, align 8
  %15 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %14, i32 0, i32 0
  %16 = load %struct.intel_engine_cs***, %struct.intel_engine_cs**** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.intel_engine_cs**, %struct.intel_engine_cs*** %16, i64 %17
  %19 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %19, i64 %20
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %21, align 8
  store %struct.intel_engine_cs* %22, %struct.intel_engine_cs** %9, align 8
  br label %24

23:                                               ; preds = %4
  store %struct.intel_engine_cs* null, %struct.intel_engine_cs** %9, align 8
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %9, align 8
  %26 = call i64 @likely(%struct.intel_engine_cs* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %9, align 8
  %30 = load i32, i32* %8, align 4
  call void @cs_irq_handler(%struct.intel_engine_cs* %29, i32 %30)
  br label %35

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %28
  ret void
}

declare dso_local i64 @likely(%struct.intel_engine_cs*) #1

declare dso_local void @cs_irq_handler(%struct.intel_engine_cs*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
