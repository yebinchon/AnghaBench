; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_hangcheck.c_engine_stuck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_hangcheck.c_engine_stuck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, i32 }

@ENGINE_DEAD = common dso_local global i32 0, align 4
@RING_CTL = common dso_local global i32 0, align 4
@RING_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"stuck wait on %s\00", align 1
@ENGINE_WAIT_KICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*, i32)* @engine_stuck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @engine_stuck(%struct.intel_engine_cs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @head_stuck(%struct.intel_engine_cs* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ENGINE_DEAD, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %18 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_GEN(i32 %19, i32 2)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ENGINE_DEAD, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %16
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %26 = load i32, i32* @RING_CTL, align 4
  %27 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @RING_WAIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %24
  %33 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %34 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %37 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %40 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @intel_gt_handle_error(i32 %35, i32 %38, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %44 = load i32, i32* @RING_CTL, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @ENGINE_WAIT_KICK, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %24
  %49 = load i32, i32* @ENGINE_DEAD, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %32, %22, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @head_stuck(%struct.intel_engine_cs*, i32) #1

declare dso_local i64 @IS_GEN(i32, i32) #1

declare dso_local i32 @ENGINE_READ(%struct.intel_engine_cs*, i32) #1

declare dso_local i32 @intel_gt_handle_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ENGINE_WRITE(%struct.intel_engine_cs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
