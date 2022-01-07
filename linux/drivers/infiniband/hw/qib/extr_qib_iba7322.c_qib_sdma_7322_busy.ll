; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_sdma_7322_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_sdma_7322_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32 }

@krp_senddmastatus = common dso_local global i32 0, align 4
@SendDmaStatus_0 = common dso_local global i32 0, align 4
@ScoreBoardDrainInProg = common dso_local global i32 0, align 4
@HaltInProg = common dso_local global i32 0, align 4
@InternalSDmaHalt = common dso_local global i32 0, align 4
@ScbEmpty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*)* @qib_sdma_7322_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_sdma_7322_busy(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %4 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %5 = load i32, i32* @krp_senddmastatus, align 4
  %6 = call i32 @qib_read_kreg_port(%struct.qib_pportdata* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SendDmaStatus_0, align 4
  %9 = load i32, i32* @ScoreBoardDrainInProg, align 4
  %10 = call i32 @SYM_MASK(i32 %8, i32 %9)
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SendDmaStatus_0, align 4
  %16 = load i32, i32* @HaltInProg, align 4
  %17 = call i32 @SYM_MASK(i32 %15, i32 %16)
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SendDmaStatus_0, align 4
  %23 = load i32, i32* @InternalSDmaHalt, align 4
  %24 = call i32 @SYM_MASK(i32 %22, i32 %23)
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SendDmaStatus_0, align 4
  %30 = load i32, i32* @ScbEmpty, align 4
  %31 = call i32 @SYM_MASK(i32 %29, i32 %30)
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %27, %20, %13, %1
  %36 = phi i1 [ true, %20 ], [ true, %13 ], [ true, %1 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @qib_read_kreg_port(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @SYM_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
