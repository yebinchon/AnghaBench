; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i64, i64, i32, i32 }
%struct.md_rdev = type { i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"raid456: error called\0A\00", align 1
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@Blocked = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"md/raid:%s: Disk failure on %s, disabling device.\0Amd/raid:%s: Operation continuing on %d devices.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.md_rdev*)* @raid5_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5_error(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.r5conf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %10 = load i32, i32* @BDEVNAME_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 4
  %16 = load %struct.r5conf*, %struct.r5conf** %15, align 8
  store %struct.r5conf* %16, %struct.r5conf** %7, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %19 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %18, i32 0, i32 2
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* @In_sync, align 4
  %23 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %24 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %2
  %28 = load %struct.mddev*, %struct.mddev** %3, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %32 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load %struct.mddev*, %struct.mddev** %3, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %40 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %42 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %41, i32 0, i32 2
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 1, i32* %9, align 4
  br label %97

45:                                               ; preds = %27, %2
  %46 = load i32, i32* @Faulty, align 4
  %47 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 1
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load i32, i32* @In_sync, align 4
  %51 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 1
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  %54 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %55 = call i64 @raid5_calc_degraded(%struct.r5conf* %54)
  %56 = load %struct.mddev*, %struct.mddev** %3, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %59 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %58, i32 0, i32 2
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %63 = load %struct.mddev*, %struct.mddev** %3, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 2
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load i32, i32* @Blocked, align 4
  %67 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 1
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  %70 = load %struct.mddev*, %struct.mddev** %3, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 1
  %72 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %75 = call i32 @BIT(i32 %74)
  %76 = or i32 %73, %75
  %77 = call i32 @set_mask_bits(i32* %71, i32 0, i32 %76)
  %78 = load %struct.mddev*, %struct.mddev** %3, align 8
  %79 = call i32 @mdname(%struct.mddev* %78)
  %80 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %81 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bdevname(i32 %82, i8* %13)
  %84 = load %struct.mddev*, %struct.mddev** %3, align 8
  %85 = call i32 @mdname(%struct.mddev* %84)
  %86 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %87 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.mddev*, %struct.mddev** %3, align 8
  %90 = getelementptr inbounds %struct.mddev, %struct.mddev* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = call i32 @pr_crit(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %83, i32 %85, i64 %92)
  %94 = load %struct.mddev*, %struct.mddev** %3, align 8
  %95 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %96 = call i32 @r5c_update_on_rdev_error(%struct.mddev* %94, %struct.md_rdev* %95)
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %45, %35
  %98 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %9, align 4
  switch i32 %99, label %101 [
    i32 0, label %100
    i32 1, label %100
  ]

100:                                              ; preds = %97, %97
  ret void

101:                                              ; preds = %97
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i64 @raid5_calc_degraded(%struct.r5conf*) #2

declare dso_local i32 @set_mask_bits(i32*, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @pr_crit(i8*, i32, i32, i32, i64) #2

declare dso_local i32 @mdname(%struct.mddev*) #2

declare dso_local i32 @bdevname(i32, i8*) #2

declare dso_local i32 @r5c_update_on_rdev_error(%struct.mddev*, %struct.md_rdev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
