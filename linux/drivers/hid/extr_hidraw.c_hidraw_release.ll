; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hidraw.c_hidraw_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hidraw.c_hidraw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.hidraw_list* }
%struct.hidraw_list = type { i32 }

@minors_lock = common dso_local global i32 0, align 4
@hidraw_table = common dso_local global %struct.TYPE_3__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hidraw_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidraw_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hidraw_list*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.hidraw_list*, %struct.hidraw_list** %11, align 8
  store %struct.hidraw_list* %12, %struct.hidraw_list** %6, align 8
  %13 = call i32 @mutex_lock(i32* @minors_lock)
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hidraw_table, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.hidraw_list*, %struct.hidraw_list** %6, align 8
  %23 = getelementptr inbounds %struct.hidraw_list, %struct.hidraw_list* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hidraw_table, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.hidraw_list*, %struct.hidraw_list** %6, align 8
  %34 = call i32 @kfree(%struct.hidraw_list* %33)
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hidraw_table, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %35, i64 %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @drop_ref(%struct.TYPE_3__* %39, i32 0)
  %41 = call i32 @mutex_unlock(i32* @minors_lock)
  ret i32 0
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.hidraw_list*) #1

declare dso_local i32 @drop_ref(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
