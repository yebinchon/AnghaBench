; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_unmap_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_unmap_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_dma_sg_buf = type { %struct.sg_table*, i32, %struct.TYPE_2__*, i32* }
%struct.sg_table = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"trying to unpin a not attached buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"dmabuf buffer is already unpinned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vb2_dma_sg_unmap_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vb2_dma_sg_unmap_dmabuf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vb2_dma_sg_buf*, align 8
  %4 = alloca %struct.sg_table*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vb2_dma_sg_buf*
  store %struct.vb2_dma_sg_buf* %6, %struct.vb2_dma_sg_buf** %3, align 8
  %7 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %7, i32 0, i32 0
  %9 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  store %struct.sg_table* %9, %struct.sg_table** %4, align 8
  %10 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %11 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %57

20:                                               ; preds = %1
  %21 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %22 = icmp ne %struct.sg_table* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %57

29:                                               ; preds = %20
  %30 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %31 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %36 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %41 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @dma_buf_vunmap(i32 %39, i32* %42)
  %44 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %45 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %34, %29
  %47 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %48 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %51 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %52 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dma_buf_unmap_attachment(%struct.TYPE_2__* %49, %struct.sg_table* %50, i32 %53)
  %55 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %56 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %55, i32 0, i32 0
  store %struct.sg_table* null, %struct.sg_table** %56, align 8
  br label %57

57:                                               ; preds = %46, %27, %18
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dma_buf_vunmap(i32, i32*) #1

declare dso_local i32 @dma_buf_unmap_attachment(%struct.TYPE_2__*, %struct.sg_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
