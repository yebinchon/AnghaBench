; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_map_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_map_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_dma_sg_buf = type { i32, i32*, i32, i32 }
%struct.sg_table = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"trying to pin a non attached buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"dmabuf buffer is already pinned\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error getting dmabuf scatterlist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vb2_dma_sg_map_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2_dma_sg_map_dmabuf(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vb2_dma_sg_buf*, align 8
  %5 = alloca %struct.sg_table*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.vb2_dma_sg_buf*
  store %struct.vb2_dma_sg_buf* %7, %struct.vb2_dma_sg_buf** %4, align 8
  %8 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %4, align 8
  %9 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %4, align 8
  %22 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

28:                                               ; preds = %20
  %29 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %4, align 8
  %30 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %4, align 8
  %33 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.sg_table* @dma_buf_map_attachment(i32 %31, i32 %34)
  store %struct.sg_table* %35, %struct.sg_table** %5, align 8
  %36 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %37 = call i64 @IS_ERR(%struct.sg_table* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %50

43:                                               ; preds = %28
  %44 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %45 = ptrtoint %struct.sg_table* %44 to i32
  %46 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %4, align 8
  %47 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %4, align 8
  %49 = getelementptr inbounds %struct.vb2_dma_sg_buf, %struct.vb2_dma_sg_buf* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %39, %26, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.sg_table* @dma_buf_map_attachment(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
