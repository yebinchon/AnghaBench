; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_finish_reshape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_finish_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i32, i32, i32, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }

@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @raid5_finish_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5_finish_reshape(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %6 = load %struct.mddev*, %struct.mddev** %2, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 7
  %8 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  store %struct.r5conf* %8, %struct.r5conf** %3, align 8
  %9 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %10 = load %struct.mddev*, %struct.mddev** %2, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 6
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %100, label %14

14:                                               ; preds = %1
  %15 = load %struct.mddev*, %struct.mddev** %2, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %14
  %20 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %21 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %20, i32 0, i32 4
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %24 = call i32 @raid5_calc_degraded(%struct.r5conf* %23)
  %25 = load %struct.mddev*, %struct.mddev** %2, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 4
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %31 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %78, %19
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %37 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load %struct.mddev*, %struct.mddev** %2, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = icmp slt i64 %35, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %33
  %46 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load %struct.md_rdev*, %struct.md_rdev** %52, align 8
  store %struct.md_rdev* %53, %struct.md_rdev** %5, align 8
  %54 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %55 = icmp ne %struct.md_rdev* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load i32, i32* @In_sync, align 4
  %58 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %59 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %58, i32 0, i32 0
  %60 = call i32 @clear_bit(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %56, %45
  %62 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %63 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.md_rdev*, %struct.md_rdev** %68, align 8
  store %struct.md_rdev* %69, %struct.md_rdev** %5, align 8
  %70 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %71 = icmp ne %struct.md_rdev* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load i32, i32* @In_sync, align 4
  %74 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %75 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %74, i32 0, i32 0
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  br label %77

77:                                               ; preds = %72, %61
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %33

81:                                               ; preds = %33
  br label %82

82:                                               ; preds = %81, %14
  %83 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %84 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mddev*, %struct.mddev** %2, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %89 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mddev*, %struct.mddev** %2, align 8
  %92 = getelementptr inbounds %struct.mddev, %struct.mddev* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @MaxSector, align 4
  %94 = load %struct.mddev*, %struct.mddev** %2, align 8
  %95 = getelementptr inbounds %struct.mddev, %struct.mddev* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.mddev*, %struct.mddev** %2, align 8
  %97 = getelementptr inbounds %struct.mddev, %struct.mddev* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load %struct.mddev*, %struct.mddev** %2, align 8
  %99 = getelementptr inbounds %struct.mddev, %struct.mddev* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %82, %1
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @raid5_calc_degraded(%struct.r5conf*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
