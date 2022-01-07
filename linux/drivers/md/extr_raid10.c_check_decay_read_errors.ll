; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_check_decay_read_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_check_decay_read_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32 }
%struct.md_rdev = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.md_rdev*)* @check_decay_read_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_decay_read_errors(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %8 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %9 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %8, i32 0, i32 1
  %10 = call i32 @atomic_read(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = call i64 (...) @ktime_get_seconds()
  store i64 %11, i64* %5, align 8
  %12 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %13 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %19 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %44

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = sdiv i64 %25, 3600
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %29 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp uge i64 %30, 32
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %34 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %33, i32 0, i32 1
  %35 = call i32 @atomic_set(i32* %34, i32 0)
  br label %44

36:                                               ; preds = %20
  %37 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %38 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %37, i32 0, i32 1
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %6, align 8
  %41 = trunc i64 %40 to i32
  %42 = lshr i32 %39, %41
  %43 = call i32 @atomic_set(i32* %38, i32 %42)
  br label %44

44:                                               ; preds = %16, %36, %32
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
