; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_get_descq_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_get_descq_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdma_descq_cnt = common dso_local global i32 0, align 4
@SDMA_DESCQ_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdma_get_descq_cnt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @sdma_descq_cnt, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @SDMA_DESCQ_CNT, align 4
  store i32 %7, i32* %1, align 4
  br label %24

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @is_power_of_2(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @SDMA_DESCQ_CNT, align 4
  store i32 %13, i32* %1, align 4
  br label %24

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 64
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp sgt i32 %18, 32768
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @SDMA_DESCQ_CNT, align 4
  store i32 %21, i32* %1, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %20, %12, %6
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @is_power_of_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
