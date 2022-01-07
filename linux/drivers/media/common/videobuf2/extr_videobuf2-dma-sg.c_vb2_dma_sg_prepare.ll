; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_dma_sg_buf = type { i32, i32, i64, %struct.sg_table* }
%struct.sg_table = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vb2_dma_sg_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vb2_dma_sg_prepare(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vb2_dma_sg_buf*, align 8
  %4 = alloca %struct.sg_table*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vb2_dma_sg_buf*
  store %struct.vb2_dma_sg_buf* %6, %struct.vb2_dma_sg_buf** %3, align 8
  %7 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %7, i32 0, i32 3
  %9 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  store %struct.sg_table* %9, %struct.sg_table** %4, align 8
  %10 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %11 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %17 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %20 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %23 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %26 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dma_sync_sg_for_device(i32 %18, i32 %21, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @dma_sync_sg_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
