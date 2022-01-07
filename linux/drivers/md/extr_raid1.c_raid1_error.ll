; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, %struct.r1conf* }
%struct.r1conf = type { i32, i32, i32 }
%struct.md_rdev = type { i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Blocked = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"md/raid1:%s: Disk failure on %s, disabling device.\0Amd/raid1:%s: Operation continuing on %d devices.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.md_rdev*)* @raid1_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid1_error(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.r1conf*, align 8
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
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 5
  %16 = load %struct.r1conf*, %struct.r1conf** %15, align 8
  store %struct.r1conf* %16, %struct.r1conf** %7, align 8
  %17 = load %struct.r1conf*, %struct.r1conf** %7, align 8
  %18 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %17, i32 0, i32 1
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @In_sync, align 4
  %22 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %2
  %27 = load %struct.mddev*, %struct.mddev** %3, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %26
  %32 = load %struct.r1conf*, %struct.r1conf** %7, align 8
  %33 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mddev*, %struct.mddev** %3, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.mddev*, %struct.mddev** %3, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.r1conf*, %struct.r1conf** %7, align 8
  %45 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.r1conf*, %struct.r1conf** %7, align 8
  %47 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %46, i32 0, i32 1
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store i32 1, i32* %9, align 4
  br label %102

50:                                               ; preds = %31, %26, %2
  %51 = load i32, i32* @Blocked, align 4
  %52 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %53 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %52, i32 0, i32 1
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load i32, i32* @In_sync, align 4
  %56 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %57 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %56, i32 0, i32 1
  %58 = call i64 @test_and_clear_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.mddev*, %struct.mddev** %3, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %50
  %66 = load i32, i32* @Faulty, align 4
  %67 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 1
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  %70 = load %struct.r1conf*, %struct.r1conf** %7, align 8
  %71 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %70, i32 0, i32 1
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %75 = load %struct.mddev*, %struct.mddev** %3, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 2
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  %78 = load %struct.mddev*, %struct.mddev** %3, align 8
  %79 = getelementptr inbounds %struct.mddev, %struct.mddev* %78, i32 0, i32 1
  %80 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %83 = call i32 @BIT(i32 %82)
  %84 = or i32 %81, %83
  %85 = call i32 @set_mask_bits(i32* %79, i32 0, i32 %84)
  %86 = load %struct.mddev*, %struct.mddev** %3, align 8
  %87 = call i32 @mdname(%struct.mddev* %86)
  %88 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %89 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bdevname(i32 %90, i8* %13)
  %92 = load %struct.mddev*, %struct.mddev** %3, align 8
  %93 = call i32 @mdname(%struct.mddev* %92)
  %94 = load %struct.r1conf*, %struct.r1conf** %7, align 8
  %95 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mddev*, %struct.mddev** %3, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %96, %99
  %101 = call i32 @pr_crit(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %91, i32 %93, i32 %100)
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %65, %40
  %103 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %9, align 4
  switch i32 %104, label %106 [
    i32 0, label %105
    i32 1, label %105
  ]

105:                                              ; preds = %102, %102
  ret void

106:                                              ; preds = %102
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i64 @test_and_clear_bit(i32, i32*) #2

declare dso_local i32 @set_mask_bits(i32*, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @pr_crit(i8*, i32, i32, i32, i32) #2

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
