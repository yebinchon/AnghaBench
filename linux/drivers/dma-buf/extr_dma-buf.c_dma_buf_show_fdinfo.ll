; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_show_fdinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_show_fdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.file = type { %struct.dma_buf* }
%struct.dma_buf = type { i32, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"size:\09%zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"count:\09%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"exp_name:\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"name:\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.file*)* @dma_buf_show_fdinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_buf_show_fdinfo(%struct.seq_file* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  store %struct.dma_buf* %8, %struct.dma_buf** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %11 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %16 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @file_count(i32 %17)
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %23 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %27 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %30 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %36 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %33, %2
  %40 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %41 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @file_count(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
