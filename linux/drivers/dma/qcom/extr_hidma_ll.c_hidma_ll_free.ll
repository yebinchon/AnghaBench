; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i64, i32, %struct.hidma_tre* }
%struct.hidma_tre = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid TRE number in free:%d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"trying to free an unused TRE:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hidma_ll_free(%struct.hidma_lldev* %0, i64 %1) #0 {
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hidma_tre*, align 8
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %8 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp uge i64 %6, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %13 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %19 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %18, i32 0, i32 2
  %20 = load %struct.hidma_tre*, %struct.hidma_tre** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %20, i64 %21
  store %struct.hidma_tre* %22, %struct.hidma_tre** %5, align 8
  %23 = load %struct.hidma_tre*, %struct.hidma_tre** %5, align 8
  %24 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %23, i32 0, i32 0
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %29 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %37

33:                                               ; preds = %17
  %34 = load %struct.hidma_tre*, %struct.hidma_tre** %5, align 8
  %35 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %34, i32 0, i32 0
  %36 = call i32 @atomic_set(i32* %35, i32 0)
  br label %37

37:                                               ; preds = %33, %27, %11
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
