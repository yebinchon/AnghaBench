; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32, i32, %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.md_rdev = type { i32, i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@Blocked = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"md/raid10:%s: Disk failure on %s, disabling device.\0Amd/raid10:%s: Operation continuing on %d devices.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.md_rdev*)* @raid10_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_error(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.r10conf*, align 8
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
  %16 = load %struct.r10conf*, %struct.r10conf** %15, align 8
  store %struct.r10conf* %16, %struct.r10conf** %7, align 8
  %17 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %18 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %17, i32 0, i32 1
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @In_sync, align 4
  %22 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load %struct.mddev*, %struct.mddev** %3, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %33 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %34 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @enough(%struct.r10conf* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %40 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  store i32 1, i32* %9, align 4
  br label %96

43:                                               ; preds = %31, %26, %2
  %44 = load i32, i32* @In_sync, align 4
  %45 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %46 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %45, i32 0, i32 1
  %47 = call i64 @test_and_clear_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.mddev*, %struct.mddev** %3, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %56 = load %struct.mddev*, %struct.mddev** %3, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 2
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load i32, i32* @Blocked, align 4
  %60 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %61 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %60, i32 0, i32 1
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load i32, i32* @Faulty, align 4
  %64 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %65 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %64, i32 0, i32 1
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  %67 = load %struct.mddev*, %struct.mddev** %3, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 1
  %69 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %70 = call i32 @BIT(i32 %69)
  %71 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = or i32 %70, %72
  %74 = call i32 @set_mask_bits(i32* %68, i32 0, i32 %73)
  %75 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %76 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %75, i32 0, i32 1
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.mddev*, %struct.mddev** %3, align 8
  %80 = call i32 @mdname(%struct.mddev* %79)
  %81 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %82 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @bdevname(i32 %83, i8* %13)
  %85 = load %struct.mddev*, %struct.mddev** %3, align 8
  %86 = call i32 @mdname(%struct.mddev* %85)
  %87 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %88 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.mddev*, %struct.mddev** %3, align 8
  %92 = getelementptr inbounds %struct.mddev, %struct.mddev* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = call i32 @pr_crit(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %84, i32 %86, i64 %94)
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %54, %38
  %97 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %9, align 4
  switch i32 %98, label %100 [
    i32 0, label %99
    i32 1, label %99
  ]

99:                                               ; preds = %96, %96
  ret void

100:                                              ; preds = %96
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @enough(%struct.r10conf*, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i64 @test_and_clear_bit(i32, i32*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @set_mask_bits(i32*, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @pr_crit(i8*, i32, i32, i32, i64) #2

declare dso_local i32 @mdname(%struct.mddev*) #2

declare dso_local i32 @bdevname(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
