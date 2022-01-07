; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_file = type { %struct.dma_fence*, i64* }
%struct.dma_fence = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)* }

@.str = private unnamed_addr constant [15 x i8] c"%s-%s%llu-%lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sync_file_get_name(%struct.sync_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.sync_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_fence*, align 8
  store %struct.sync_file* %0, %struct.sync_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %9 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %17 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @strlcpy(i8* %15, i64* %18, i32 %19)
  br label %48

21:                                               ; preds = %3
  %22 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %23 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %22, i32 0, i32 0
  %24 = load %struct.dma_fence*, %struct.dma_fence** %23, align 8
  store %struct.dma_fence* %24, %struct.dma_fence** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %28 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)** %30, align 8
  %32 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %33 = call i8* %31(%struct.dma_fence* %32)
  %34 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %35 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)** %37, align 8
  %39 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %40 = call i8* %38(%struct.dma_fence* %39)
  %41 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %42 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %45 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %21, %14
  %49 = load i8*, i8** %5, align 8
  ret i8* %49
}

declare dso_local i32 @strlcpy(i8*, i64*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
