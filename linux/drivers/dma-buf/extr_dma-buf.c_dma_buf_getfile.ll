; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_getfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_getfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.file = type { i32, %struct.TYPE_6__, %struct.dma_buf*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.dma_buf* }
%struct.dma_buf = type { i32 }
%struct.inode = type { i32, %struct.TYPE_6__, %struct.dma_buf*, i32 }

@dma_buf_mnt = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"dmabuf\00", align 1
@dma_buf_fops = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.dma_buf*, i32)* @dma_buf_getfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @dma_buf_getfile(%struct.dma_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dma_buf_mnt, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.inode* @alloc_anon_inode(i32 %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = call i64 @IS_ERR(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call %struct.inode* @ERR_CAST(%struct.inode* %16)
  %18 = bitcast %struct.inode* %17 to %struct.file*
  store %struct.file* %18, %struct.file** %3, align 8
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %21 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %27 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @inode_set_bytes(%struct.inode* %25, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dma_buf_mnt, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.inode* @alloc_file_pseudo(%struct.inode* %30, %struct.TYPE_7__* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %32, i32* @dma_buf_fops)
  %34 = bitcast %struct.inode* %33 to %struct.file*
  store %struct.file* %34, %struct.file** %6, align 8
  %35 = load %struct.file*, %struct.file** %6, align 8
  %36 = bitcast %struct.file* %35 to %struct.inode*
  %37 = call i64 @IS_ERR(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %58

40:                                               ; preds = %19
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @O_ACCMODE, align 4
  %43 = load i32, i32* @O_NONBLOCK, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = load %struct.file*, %struct.file** %6, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %49 = load %struct.file*, %struct.file** %6, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 2
  store %struct.dma_buf* %48, %struct.dma_buf** %50, align 8
  %51 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %52 = load %struct.file*, %struct.file** %6, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store %struct.dma_buf* %51, %struct.dma_buf** %56, align 8
  %57 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %57, %struct.file** %3, align 8
  br label %62

58:                                               ; preds = %39
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = call i32 @iput(%struct.inode* %59)
  %61 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %61, %struct.file** %3, align 8
  br label %62

62:                                               ; preds = %58, %40, %15
  %63 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %63
}

declare dso_local %struct.inode* @alloc_anon_inode(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

declare dso_local %struct.inode* @alloc_file_pseudo(%struct.inode*, %struct.TYPE_7__*, i8*, i32, i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
