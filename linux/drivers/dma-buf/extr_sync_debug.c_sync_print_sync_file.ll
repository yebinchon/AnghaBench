; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_debug.c_sync_print_sync_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_debug.c_sync_print_sync_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sync_file = type { i32 }
%struct.dma_fence_array = type { i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"[%p] %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.sync_file*)* @sync_print_sync_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_print_sync_file(%struct.seq_file* %0, %struct.sync_file* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.sync_file*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_fence_array*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.sync_file* %1, %struct.sync_file** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %10 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %12 = call i32 @sync_file_get_name(%struct.sync_file* %10, i8* %11, i32 128)
  %13 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %14 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dma_fence_get_status(i32 %15)
  %17 = call i32 @sync_status_str(i32 %16)
  %18 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.sync_file* %9, i32 %12, i32 %17)
  %19 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %20 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @dma_fence_is_array(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %2
  %25 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %26 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.dma_fence_array* @to_dma_fence_array(i32 %27)
  store %struct.dma_fence_array* %28, %struct.dma_fence_array** %7, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %45, %24
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.dma_fence_array*, %struct.dma_fence_array** %7, align 8
  %32 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.dma_fence_array*, %struct.dma_fence_array** %7, align 8
  %38 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sync_print_fence(%struct.seq_file* %36, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %29

48:                                               ; preds = %29
  br label %55

49:                                               ; preds = %2
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.sync_file*, %struct.sync_file** %4, align 8
  %52 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sync_print_fence(%struct.seq_file* %50, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, %struct.sync_file*, i32, i32) #1

declare dso_local i32 @sync_file_get_name(%struct.sync_file*, i8*, i32) #1

declare dso_local i32 @sync_status_str(i32) #1

declare dso_local i32 @dma_fence_get_status(i32) #1

declare dso_local i64 @dma_fence_is_array(i32) #1

declare dso_local %struct.dma_fence_array* @to_dma_fence_array(i32) #1

declare dso_local i32 @sync_print_fence(%struct.seq_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
