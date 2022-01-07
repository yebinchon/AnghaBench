; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_r1_sync_page_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_r1_sync_page_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@WriteErrorSeen = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i32, i32, %struct.page*, i32)* @r1_sync_page_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r1_sync_page_io(%struct.md_rdev* %0, i32 %1, i32 %2, %struct.page* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.page* %3, %struct.page** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = shl i32 %14, 9
  %16 = load %struct.page*, %struct.page** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @sync_page_io(%struct.md_rdev* %12, i32 %13, i32 %15, %struct.page* %16, i32 %17, i32 0, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %56

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @WRITE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i32, i32* @WriteErrorSeen, align 4
  %27 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %28 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %27, i32 0, i32 1
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  %30 = load i32, i32* @WantReplacement, align 4
  %31 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 1
  %33 = call i32 @test_and_set_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %37 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %38 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @set_bit(i32 %36, i32* %40)
  br label %42

42:                                               ; preds = %35, %25
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @rdev_set_badblocks(%struct.md_rdev* %44, i32 %45, i32 %46, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %54 = call i32 @md_error(%struct.TYPE_2__* %52, %struct.md_rdev* %53)
  br label %55

55:                                               ; preds = %49, %43
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @sync_page_io(%struct.md_rdev*, i32, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @md_error(%struct.TYPE_2__*, %struct.md_rdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
