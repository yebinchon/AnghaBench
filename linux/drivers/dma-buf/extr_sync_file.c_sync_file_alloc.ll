; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_file = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sync_file\00", align 1
@sync_file_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sync_file* ()* @sync_file_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sync_file* @sync_file_alloc() #0 {
  %1 = alloca %struct.sync_file*, align 8
  %2 = alloca %struct.sync_file*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.sync_file* @kzalloc(i32 12, i32 %3)
  store %struct.sync_file* %4, %struct.sync_file** %2, align 8
  %5 = load %struct.sync_file*, %struct.sync_file** %2, align 8
  %6 = icmp ne %struct.sync_file* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.sync_file* null, %struct.sync_file** %1, align 8
  br label %31

8:                                                ; preds = %0
  %9 = load %struct.sync_file*, %struct.sync_file** %2, align 8
  %10 = call i32 @anon_inode_getfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* @sync_file_fops, %struct.sync_file* %9, i32 0)
  %11 = load %struct.sync_file*, %struct.sync_file** %2, align 8
  %12 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.sync_file*, %struct.sync_file** %2, align 8
  %14 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %28

19:                                               ; preds = %8
  %20 = load %struct.sync_file*, %struct.sync_file** %2, align 8
  %21 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %20, i32 0, i32 1
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load %struct.sync_file*, %struct.sync_file** %2, align 8
  %24 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.sync_file*, %struct.sync_file** %2, align 8
  store %struct.sync_file* %27, %struct.sync_file** %1, align 8
  br label %31

28:                                               ; preds = %18
  %29 = load %struct.sync_file*, %struct.sync_file** %2, align 8
  %30 = call i32 @kfree(%struct.sync_file* %29)
  store %struct.sync_file* null, %struct.sync_file** %1, align 8
  br label %31

31:                                               ; preds = %28, %19, %7
  %32 = load %struct.sync_file*, %struct.sync_file** %1, align 8
  ret %struct.sync_file* %32
}

declare dso_local %struct.sync_file* @kzalloc(i32, i32) #1

declare dso_local i32 @anon_inode_getfile(i8*, i32*, %struct.sync_file*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.sync_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
