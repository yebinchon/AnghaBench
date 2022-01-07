; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_rdev_init_wb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_rdev_init_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@WBCollisionCheck = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*)* @rdev_init_wb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdev_init_wb(%struct.md_rdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.md_rdev*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %3, align 8
  %4 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %5 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %4, i32 0, i32 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %15 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %14, i32 0, i32 3
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %18 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %17, i32 0, i32 2
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %21 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %20, i32 0, i32 1
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load i32, i32* @WBCollisionCheck, align 4
  %24 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
