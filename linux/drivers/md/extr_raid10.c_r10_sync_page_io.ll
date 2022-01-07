; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_r10_sync_page_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_r10_sync_page_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@READ = common dso_local global i32 0, align 4
@WriteErrorSeen = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i32, i32, %struct.page*, i32)* @r10_sync_page_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r10_sync_page_io(%struct.md_rdev* %0, i32 %1, i32 %2, %struct.page* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.page* %3, %struct.page** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @is_badblock(%struct.md_rdev* %14, i32 %15, i32 %16, i32* %12, i32* %13)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @READ, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @WriteErrorSeen, align 4
  %25 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %26 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %25, i32 0, i32 1
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %19
  store i32 -1, i32* %6, align 4
  br label %75

30:                                               ; preds = %23, %5
  %31 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 9
  %35 = load %struct.page*, %struct.page** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @sync_page_io(%struct.md_rdev* %31, i32 %32, i32 %34, %struct.page* %35, i32 %36, i32 0, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %75

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @WRITE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32, i32* @WriteErrorSeen, align 4
  %46 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 1
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load i32, i32* @WantReplacement, align 4
  %50 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 1
  %52 = call i32 @test_and_set_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %56 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %57 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %55, i32* %59)
  br label %61

61:                                               ; preds = %54, %44
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @rdev_set_badblocks(%struct.md_rdev* %63, i32 %64, i32 %65, i32 0)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %70 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %73 = call i32 @md_error(%struct.TYPE_2__* %71, %struct.md_rdev* %72)
  br label %74

74:                                               ; preds = %68, %62
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %39, %29
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i64 @is_badblock(%struct.md_rdev*, i32, i32, i32*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

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
