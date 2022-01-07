; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_rdev_set_badblocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_rdev_set_badblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { %struct.mddev*, i32, i32, i32, i32, i64, i64 }
%struct.mddev = type { i32, i32 }

@ExternalBbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unacknowledged_bad_blocks\00", align 1
@MD_SB_CHANGE_CLEAN = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdev_set_badblocks(%struct.md_rdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_rdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mddev*, align 8
  %11 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %13 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %12, i32 0, i32 0
  %14 = load %struct.mddev*, %struct.mddev** %13, align 8
  store %struct.mddev* %14, %struct.mddev** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %19 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  br label %33

25:                                               ; preds = %4
  %26 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %25, %17
  %34 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %35 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %34, i32 0, i32 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @badblocks_set(i32* %35, i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %33
  %42 = load i32, i32* @ExternalBbl, align 4
  %43 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %44 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %43, i32 0, i32 3
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %49 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %48, i32 0, i32 2
  %50 = call i32 @sysfs_notify(i32* %49, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %53 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sysfs_notify_dirent_safe(i32 %54)
  %56 = load %struct.mddev*, %struct.mddev** %10, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 1
  %58 = load i32, i32* @MD_SB_CHANGE_CLEAN, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = or i32 %59, %61
  %63 = call i32 @set_mask_bits(i32* %57, i32 0, i32 %62)
  %64 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %65 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %64, i32 0, i32 0
  %66 = load %struct.mddev*, %struct.mddev** %65, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @md_wakeup_thread(i32 %68)
  store i32 1, i32* %5, align 4
  br label %71

70:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %51
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @badblocks_set(i32*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @set_mask_bits(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
