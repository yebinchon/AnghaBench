; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_journal_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_journal_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@R5C_JOURNAL_MODE_WRITE_THROUGH = common dso_local global i32 0, align 4
@R5C_JOURNAL_MODE_WRITE_BACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"md/raid:%s: setting r5c cache mode to %d: %s\0A\00", align 1
@r5c_journal_mode_str = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r5c_journal_mode_set(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r5conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @R5C_JOURNAL_MODE_WRITE_THROUGH, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @R5C_JOURNAL_MODE_WRITE_BACK, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %61

17:                                               ; preds = %10
  %18 = load %struct.mddev*, %struct.mddev** %4, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 0
  %20 = load %struct.r5conf*, %struct.r5conf** %19, align 8
  store %struct.r5conf* %20, %struct.r5conf** %6, align 8
  %21 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %22 = icmp ne %struct.r5conf* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %25 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %17
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %61

31:                                               ; preds = %23
  %32 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %33 = call i64 @raid5_calc_degraded(%struct.r5conf* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @R5C_JOURNAL_MODE_WRITE_BACK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %61

42:                                               ; preds = %35, %31
  %43 = load %struct.mddev*, %struct.mddev** %4, align 8
  %44 = call i32 @mddev_suspend(%struct.mddev* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.mddev*, %struct.mddev** %4, align 8
  %51 = call i32 @mddev_resume(%struct.mddev* %50)
  %52 = load %struct.mddev*, %struct.mddev** %4, align 8
  %53 = call i32 @mdname(%struct.mddev* %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** @r5c_journal_mode_str, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %42, %39, %28, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @raid5_calc_degraded(%struct.r5conf*) #1

declare dso_local i32 @mddev_suspend(%struct.mddev*) #1

declare dso_local i32 @mddev_resume(%struct.mddev*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
