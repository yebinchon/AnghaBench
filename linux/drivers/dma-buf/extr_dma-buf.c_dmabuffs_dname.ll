; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dmabuffs_dname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dmabuffs_dname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__, %struct.dma_buf* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_buf = type { i32, i64 }

@DMA_BUF_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"/%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, i8*, i32)* @dmabuffs_dname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dmabuffs_dname(%struct.dentry* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_buf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @DMA_BUF_NAME_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load %struct.dma_buf*, %struct.dma_buf** %16, align 8
  store %struct.dma_buf* %17, %struct.dma_buf** %7, align 8
  %18 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  %19 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  %22 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  %27 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @DMA_BUF_NAME_LEN, align 4
  %30 = call i64 @strlcpy(i8* %14, i64 %28, i32 %29)
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %25, %3
  %32 = load %struct.dma_buf*, %struct.dma_buf** %7, align 8
  %33 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %46

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %44
  %47 = phi i8* [ %14, %44 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %45 ]
  %48 = call i8* @dynamic_dname(%struct.dentry* %35, i8* %36, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %47)
  %49 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i8* %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @strlcpy(i8*, i64, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i8* @dynamic_dname(%struct.dentry*, i8*, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
