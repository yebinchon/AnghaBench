; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_rdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_rdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_rdev_init(%struct.md_rdev* %0) #0 {
  %2 = alloca %struct.md_rdev*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %2, align 8
  %3 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %4 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %3, i32 0, i32 0
  store i32 -1, i32* %4, align 8
  %5 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %6 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %5, i32 0, i32 1
  store i32 -1, i32* %6, align 4
  %7 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %8 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %7, i32 0, i32 2
  store i32 -1, i32* %8, align 8
  %9 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %10 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %9, i32 0, i32 15
  store i64 0, i64* %10, align 8
  %11 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %12 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %11, i32 0, i32 14
  store i64 0, i64* %12, align 8
  %13 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 13
  store i64 0, i64* %14, align 8
  %15 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %16 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %15, i32 0, i32 12
  store i64 0, i64* %16, align 8
  %17 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %18 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %17, i32 0, i32 11
  store i64 0, i64* %18, align 8
  %19 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %20 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %19, i32 0, i32 10
  store i64 0, i64* %20, align 8
  %21 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 9
  store i32* null, i32** %22, align 8
  %23 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %24 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %23, i32 0, i32 8
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 7
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  %29 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %30 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %29, i32 0, i32 6
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %33 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %32, i32 0, i32 5
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %36 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %35, i32 0, i32 4
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %39 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %38, i32 0, i32 3
  %40 = call i32 @badblocks_init(i32* %39, i32 0)
  ret i32 %40
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @badblocks_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
