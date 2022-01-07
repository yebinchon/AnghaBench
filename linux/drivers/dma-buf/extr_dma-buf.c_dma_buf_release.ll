; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.dma_buf* }
%struct.dma_buf = type { i32, i32, %struct.dma_resv*, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.dma_resv = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.dma_buf*)* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@db_list = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dma_buf_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_buf_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dma_buf*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = call i32 @is_dma_buf_file(%struct.file* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %67

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.dma_buf*, %struct.dma_buf** %15, align 8
  store %struct.dma_buf* %16, %struct.dma_buf** %6, align 8
  %17 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %18 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %22 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %13
  %27 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %28 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %26, %13
  %33 = phi i1 [ true, %13 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %37 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %36, i32 0, i32 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32 (%struct.dma_buf*)*, i32 (%struct.dma_buf*)** %39, align 8
  %41 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %42 = call i32 %40(%struct.dma_buf* %41)
  %43 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @db_list, i32 0, i32 0))
  %44 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %45 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %44, i32 0, i32 3
  %46 = call i32 @list_del(i32* %45)
  %47 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @db_list, i32 0, i32 0))
  %48 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %49 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %48, i32 0, i32 2
  %50 = load %struct.dma_resv*, %struct.dma_resv** %49, align 8
  %51 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %52 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %51, i64 1
  %53 = bitcast %struct.dma_buf* %52 to %struct.dma_resv*
  %54 = icmp eq %struct.dma_resv* %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %32
  %56 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %57 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %56, i32 0, i32 2
  %58 = load %struct.dma_resv*, %struct.dma_resv** %57, align 8
  %59 = call i32 @dma_resv_fini(%struct.dma_resv* %58)
  br label %60

60:                                               ; preds = %55, %32
  %61 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %62 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @module_put(i32 %63)
  %65 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %66 = call i32 @kfree(%struct.dma_buf* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %10
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @is_dma_buf_file(%struct.file*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_resv_fini(%struct.dma_resv*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
