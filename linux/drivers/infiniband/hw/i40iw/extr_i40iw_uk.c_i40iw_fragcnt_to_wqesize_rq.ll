; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_fragcnt_to_wqesize_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_fragcnt_to_wqesize_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I40IW_ERR_INVALID_FRAG_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_fragcnt_to_wqesize_rq(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %13 [
    i32 0, label %7
    i32 1, label %7
    i32 2, label %9
    i32 3, label %9
    i32 4, label %11
    i32 5, label %11
    i32 6, label %11
    i32 7, label %11
  ]

7:                                                ; preds = %2, %2
  %8 = load i32*, i32** %5, align 8
  store i32 32, i32* %8, align 4
  br label %15

9:                                                ; preds = %2, %2
  %10 = load i32*, i32** %5, align 8
  store i32 64, i32* %10, align 4
  br label %15

11:                                               ; preds = %2, %2, %2, %2
  %12 = load i32*, i32** %5, align 8
  store i32 128, i32* %12, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @I40IW_ERR_INVALID_FRAG_COUNT, align 4
  store i32 %14, i32* %3, align 4
  br label %16

15:                                               ; preds = %11, %9, %7
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %13
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
