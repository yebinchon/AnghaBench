; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c_smu_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c_smu_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.smu_private* }
%struct.smu_private = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smu_file_commands = common dso_local global i32 0, align 4
@smu_mutex = common dso_local global i32 0, align 4
@smu_clist_lock = common dso_local global i32 0, align 4
@smu_clist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @smu_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.smu_private*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.smu_private* @kzalloc(i32 16, i32 %8)
  store %struct.smu_private* %9, %struct.smu_private** %6, align 8
  %10 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %11 = icmp eq %struct.smu_private* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %17 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %16, i32 0, i32 3
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load i32, i32* @smu_file_commands, align 4
  %20 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %21 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %23 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %22, i32 0, i32 1
  %24 = call i32 @init_waitqueue_head(i32* %23)
  %25 = call i32 @mutex_lock(i32* @smu_mutex)
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* @smu_clist_lock, i64 %26)
  %28 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %29 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %28, i32 0, i32 0
  %30 = call i32 @list_add(i32* %29, i32* @smu_clist)
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @smu_clist_lock, i64 %31)
  %33 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  store %struct.smu_private* %33, %struct.smu_private** %35, align 8
  %36 = call i32 @mutex_unlock(i32* @smu_mutex)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %15, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.smu_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
