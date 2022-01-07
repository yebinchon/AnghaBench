; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_job_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_job_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_queue*, i32, i64, i64)* @job_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @job_finished(%struct.spu_queue* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spu_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.spu_queue* %0, %struct.spu_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %9, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %38

24:                                               ; preds = %18, %13
  br label %37

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %9, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  store i32 1, i32* %5, align 4
  br label %38

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %24
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %35, %23
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
