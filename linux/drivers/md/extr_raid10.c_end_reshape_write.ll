; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_end_reshape_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_end_reshape_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64 }
%struct.r10bio = type { %struct.mddev* }
%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @end_reshape_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_reshape_write(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.r10bio*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.r10conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = call %struct.r10bio* @get_resync_r10bio(%struct.bio* %10)
  store %struct.r10bio* %11, %struct.r10bio** %3, align 8
  %12 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %13 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %12, i32 0, i32 0
  %14 = load %struct.mddev*, %struct.mddev** %13, align 8
  store %struct.mddev* %14, %struct.mddev** %4, align 8
  %15 = load %struct.mddev*, %struct.mddev** %4, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load %struct.r10conf*, %struct.r10conf** %16, align 8
  store %struct.r10conf* %17, %struct.r10conf** %5, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %9, align 8
  %18 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %19 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = call i32 @find_bio_disk(%struct.r10conf* %18, %struct.r10bio* %19, %struct.bio* %20, i32* %7, i32* %8)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %26 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.md_rdev*, %struct.md_rdev** %31, align 8
  store %struct.md_rdev* %32, %struct.md_rdev** %9, align 8
  br label %33

33:                                               ; preds = %24, %1
  %34 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %35 = icmp ne %struct.md_rdev* %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = call i32 (...) @smp_mb()
  %38 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %39 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.md_rdev*, %struct.md_rdev** %44, align 8
  store %struct.md_rdev* %45, %struct.md_rdev** %9, align 8
  br label %46

46:                                               ; preds = %36, %33
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.mddev*, %struct.mddev** %4, align 8
  %53 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %54 = call i32 @md_error(%struct.mddev* %52, %struct.md_rdev* %53)
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %57 = load %struct.mddev*, %struct.mddev** %4, align 8
  %58 = call i32 @rdev_dec_pending(%struct.md_rdev* %56, %struct.mddev* %57)
  %59 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %60 = call i32 @end_reshape_request(%struct.r10bio* %59)
  ret void
}

declare dso_local %struct.r10bio* @get_resync_r10bio(%struct.bio*) #1

declare dso_local i32 @find_bio_disk(%struct.r10conf*, %struct.r10bio*, %struct.bio*, i32*, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @end_reshape_request(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
