; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_hot_remove_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_hot_remove_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mddev*, %struct.md_rdev*)* }
%struct.mddev = type { i64, i32, i32 }
%struct.md_rdev = type { i64, i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@Blocked = common dso_local global i32 0, align 4
@md_cluster_ops = common dso_local global %struct.TYPE_2__* null, align 8
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"md: cannot remove active disk %s from %s ...\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32)* @hot_remove_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hot_remove_disk(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.md_rdev*, align 8
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @BDEVNAME_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.mddev*, %struct.mddev** %4, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %93

21:                                               ; preds = %2
  %22 = load %struct.mddev*, %struct.mddev** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.md_rdev* @find_rdev(%struct.mddev* %22, i32 %23)
  store %struct.md_rdev* %24, %struct.md_rdev** %8, align 8
  %25 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %26 = icmp ne %struct.md_rdev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %93

30:                                               ; preds = %21
  %31 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %50

36:                                               ; preds = %30
  %37 = load i32, i32* @Blocked, align 4
  %38 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %39 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %38, i32 0, i32 2
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load %struct.mddev*, %struct.mddev** %4, align 8
  %42 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %43 = call i32 @remove_and_add_spares(%struct.mddev* %41, %struct.md_rdev* %42)
  %44 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %45 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %83

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %35
  %51 = load %struct.mddev*, %struct.mddev** %4, align 8
  %52 = call i64 @mddev_is_clustered(%struct.mddev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md_cluster_ops, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.mddev*, %struct.md_rdev*)** %56, align 8
  %58 = load %struct.mddev*, %struct.mddev** %4, align 8
  %59 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %60 = call i32 %57(%struct.mddev* %58, %struct.md_rdev* %59)
  br label %61

61:                                               ; preds = %54, %50
  %62 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %63 = call i32 @md_kick_rdev_from_array(%struct.md_rdev* %62)
  %64 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %65 = load %struct.mddev*, %struct.mddev** %4, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 1
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load %struct.mddev*, %struct.mddev** %4, align 8
  %69 = getelementptr inbounds %struct.mddev, %struct.mddev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.mddev*, %struct.mddev** %4, align 8
  %74 = getelementptr inbounds %struct.mddev, %struct.mddev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @md_wakeup_thread(i64 %75)
  br label %80

77:                                               ; preds = %61
  %78 = load %struct.mddev*, %struct.mddev** %4, align 8
  %79 = call i32 @md_update_sb(%struct.mddev* %78, i32 1)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.mddev*, %struct.mddev** %4, align 8
  %82 = call i32 @md_new_event(%struct.mddev* %81)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %93

83:                                               ; preds = %48
  %84 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %85 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @bdevname(i32 %86, i8* %13)
  %88 = load %struct.mddev*, %struct.mddev** %4, align 8
  %89 = call i32 @mdname(%struct.mddev* %88)
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %89)
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %93

93:                                               ; preds = %83, %80, %27, %18
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.md_rdev* @find_rdev(%struct.mddev*, i32) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @remove_and_add_spares(%struct.mddev*, %struct.md_rdev*) #2

declare dso_local i64 @mddev_is_clustered(%struct.mddev*) #2

declare dso_local i32 @md_kick_rdev_from_array(%struct.md_rdev*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @md_wakeup_thread(i64) #2

declare dso_local i32 @md_update_sb(%struct.mddev*, i32) #2

declare dso_local i32 @md_new_event(%struct.mddev*) #2

declare dso_local i32 @pr_debug(i8*, i32, i32) #2

declare dso_local i32 @bdevname(i32, i8*) #2

declare dso_local i32 @mdname(%struct.mddev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
