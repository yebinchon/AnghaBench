; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_sdma_7322_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_sdma_7322_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32 }

@SDma = common dso_local global i32 0, align 4
@SDmaIdle = common dso_local global i32 0, align 4
@SDmaProgress = common dso_local global i32 0, align 4
@SDmaCleanupDone = common dso_local global i32 0, align 4
@qib_sdma_event_e20_hw_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i32)* @sdma_7322_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_7322_intr(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca %struct.qib_pportdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 0
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %12 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i64 0
  store %struct.qib_pportdata* %12, %struct.qib_pportdata** %5, align 8
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %14, align 8
  %16 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %15, i64 1
  store %struct.qib_pportdata* %16, %struct.qib_pportdata** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SDma, align 4
  %19 = call i32 @INT_MASK_P(i32 %18, i32 0)
  %20 = load i32, i32* @SDmaIdle, align 4
  %21 = call i32 @INT_MASK_P(i32 %20, i32 0)
  %22 = or i32 %19, %21
  %23 = load i32, i32* @SDmaProgress, align 4
  %24 = call i32 @INT_MASK_P(i32 %23, i32 0)
  %25 = or i32 %22, %24
  %26 = and i32 %17, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SDma, align 4
  %29 = call i32 @INT_MASK_P(i32 %28, i32 1)
  %30 = load i32, i32* @SDmaIdle, align 4
  %31 = call i32 @INT_MASK_P(i32 %30, i32 1)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @SDmaProgress, align 4
  %34 = call i32 @INT_MASK_P(i32 %33, i32 1)
  %35 = or i32 %32, %34
  %36 = and i32 %27, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %41 = call i32 @qib_sdma_intr(%struct.qib_pportdata* %40)
  br label %42

42:                                               ; preds = %39, %2
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %47 = call i32 @qib_sdma_intr(%struct.qib_pportdata* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SDmaCleanupDone, align 4
  %51 = call i32 @INT_MASK_PM(i32 %50, i32 0)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %56 = load i32, i32* @qib_sdma_event_e20_hw_started, align 4
  %57 = call i32 @qib_sdma_process_event(%struct.qib_pportdata* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @SDmaCleanupDone, align 4
  %61 = call i32 @INT_MASK_PM(i32 %60, i32 1)
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %66 = load i32, i32* @qib_sdma_event_e20_hw_started, align 4
  %67 = call i32 @qib_sdma_process_event(%struct.qib_pportdata* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %58
  ret void
}

declare dso_local i32 @INT_MASK_P(i32, i32) #1

declare dso_local i32 @qib_sdma_intr(%struct.qib_pportdata*) #1

declare dso_local i32 @INT_MASK_PM(i32, i32) #1

declare dso_local i32 @qib_sdma_process_event(%struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
