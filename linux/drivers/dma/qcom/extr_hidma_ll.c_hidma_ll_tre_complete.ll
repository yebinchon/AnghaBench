; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_tre_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_tre_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i32 }
%struct.hidma_tre = type { i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @hidma_ll_tre_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidma_ll_tre_complete(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca %struct.hidma_tre*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.hidma_lldev*
  store %struct.hidma_lldev* %6, %struct.hidma_lldev** %3, align 8
  br label %7

7:                                                ; preds = %25, %1
  %8 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %9 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %8, i32 0, i32 0
  %10 = call i64 @kfifo_out(i32* %9, %struct.hidma_tre** %4, i32 1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load %struct.hidma_tre*, %struct.hidma_tre** %4, align 8
  %14 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %13, i32 0, i32 1
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = icmp ne i32 (i32)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.hidma_tre*, %struct.hidma_tre** %4, align 8
  %19 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %18, i32 0, i32 1
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.hidma_tre*, %struct.hidma_tre** %4, align 8
  %22 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %20(i32 %23)
  br label %25

25:                                               ; preds = %17, %12
  br label %7

26:                                               ; preds = %7
  ret void
}

declare dso_local i64 @kfifo_out(i32*, %struct.hidma_tre**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
