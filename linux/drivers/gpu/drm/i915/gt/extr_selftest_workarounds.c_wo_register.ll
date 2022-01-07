; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_workarounds.c_wo_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_workarounds.c_wo_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.intel_engine_cs = type { i32 }
%struct.TYPE_5__ = type { i32 }

@RING_FORCE_TO_NONPRIV_ACCESS_MASK = common dso_local global i64 0, align 8
@RING_FORCE_TO_NONPRIV_ACCESS_WR = common dso_local global i64 0, align 8
@wo_registers = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*, i64)* @wo_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wo_register(%struct.intel_engine_cs* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_5__* @INTEL_INFO(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @RING_FORCE_TO_NONPRIV_ACCESS_MASK, align 8
  %16 = and i64 %14, %15
  %17 = load i64, i64* @RING_FORCE_TO_NONPRIV_ACCESS_WR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wo_registers, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wo_registers, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wo_registers, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %50

45:                                               ; preds = %35, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %21

49:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_5__* @INTEL_INFO(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
