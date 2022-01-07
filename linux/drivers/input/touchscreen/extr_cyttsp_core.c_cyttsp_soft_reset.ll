; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp = type { i32, i32, i32 }

@CY_BL_STATE = common dso_local global i32 0, align 4
@CY_SOFT_RESET_MODE = common dso_local global i32 0, align 4
@CY_DELAY_DFLT = common dso_local global i32 0, align 4
@CY_DELAY_MAX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CY_IDLE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyttsp*)* @cyttsp_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyttsp_soft_reset(%struct.cyttsp* %0) #0 {
  %2 = alloca %struct.cyttsp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.cyttsp* %0, %struct.cyttsp** %2, align 8
  %5 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %6 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %5, i32 0, i32 2
  %7 = call i32 @reinit_completion(i32* %6)
  %8 = load i32, i32* @CY_BL_STATE, align 4
  %9 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %10 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %12 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @enable_irq(i32 %13)
  %15 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %16 = load i32, i32* @CY_SOFT_RESET_MODE, align 4
  %17 = call i32 @ttsp_send_command(%struct.cyttsp* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %23 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %22, i32 0, i32 2
  %24 = load i32, i32* @CY_DELAY_DFLT, align 4
  %25 = load i32, i32* @CY_DELAY_MAX, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 @msecs_to_jiffies(i32 %26)
  %28 = call i64 @wait_for_completion_timeout(i32* %23, i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %20
  %38 = load i32, i32* @CY_IDLE_STATE, align 4
  %39 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %40 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %42 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @disable_irq(i32 %43)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @ttsp_send_command(%struct.cyttsp*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
