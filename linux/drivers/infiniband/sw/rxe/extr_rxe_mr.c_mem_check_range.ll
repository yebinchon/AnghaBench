; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_mem_check_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_mem_check_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_mem = type { i32, i64, i64 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_check_range(%struct.rxe_mem* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_mem*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rxe_mem* %0, %struct.rxe_mem** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.rxe_mem*, %struct.rxe_mem** %5, align 8
  %9 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %40 [
    i32 130, label %11
    i32 128, label %12
    i32 129, label %12
  ]

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

12:                                               ; preds = %3, %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.rxe_mem*, %struct.rxe_mem** %5, align 8
  %15 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %36, label %18

18:                                               ; preds = %12
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.rxe_mem*, %struct.rxe_mem** %5, align 8
  %21 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.rxe_mem*, %struct.rxe_mem** %5, align 8
  %27 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rxe_mem*, %struct.rxe_mem** %5, align 8
  %30 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %28, %31
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %32, %33
  %35 = icmp ugt i64 %25, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24, %18, %12
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %39, %36, %11
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
