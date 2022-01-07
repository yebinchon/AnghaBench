; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dma_buf* }
%struct.dma_buf = type { i64 }

@EBADF = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @dma_buf_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_buf_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_buf*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call i32 @is_dma_buf_file(%struct.file* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* @EBADF, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %4, align 8
  br label %46

16:                                               ; preds = %3
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load %struct.dma_buf*, %struct.dma_buf** %18, align 8
  store %struct.dma_buf* %19, %struct.dma_buf** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SEEK_END, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.dma_buf*, %struct.dma_buf** %8, align 8
  %25 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  br label %36

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %35

32:                                               ; preds = %27
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %46

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %4, align 8
  br label %46

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %42, %39, %32, %13
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @is_dma_buf_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
