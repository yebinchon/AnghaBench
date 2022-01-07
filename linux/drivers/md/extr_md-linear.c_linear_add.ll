; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-linear.c_linear_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-linear.c_linear_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32, i32, i32 }
%struct.md_rdev = type { i64, i64 }
%struct.linear_conf = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"copied raid_disks doesn't match mddev->raid_disks\00", align 1
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @linear_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_add(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.linear_conf*, align 8
  %7 = alloca %struct.linear_conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %8 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %9 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %85

18:                                               ; preds = %2
  %19 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %20 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 0
  store i64 -1, i64* %25, align 8
  %26 = load %struct.mddev*, %struct.mddev** %4, align 8
  %27 = load %struct.mddev*, %struct.mddev** %4, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = call %struct.linear_conf* @linear_conf(%struct.mddev* %26, i64 %30)
  store %struct.linear_conf* %31, %struct.linear_conf** %6, align 8
  %32 = load %struct.linear_conf*, %struct.linear_conf** %6, align 8
  %33 = icmp ne %struct.linear_conf* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %18
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %85

37:                                               ; preds = %18
  %38 = load %struct.mddev*, %struct.mddev** %4, align 8
  %39 = call i32 @mddev_suspend(%struct.mddev* %38)
  %40 = load %struct.mddev*, %struct.mddev** %4, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mddev*, %struct.mddev** %4, align 8
  %44 = getelementptr inbounds %struct.mddev, %struct.mddev* %43, i32 0, i32 4
  %45 = call i32 @lockdep_is_held(i32* %44)
  %46 = call %struct.linear_conf* @rcu_dereference_protected(i32 %42, i32 %45)
  store %struct.linear_conf* %46, %struct.linear_conf** %7, align 8
  %47 = load %struct.mddev*, %struct.mddev** %4, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.mddev*, %struct.mddev** %4, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.linear_conf*, %struct.linear_conf** %6, align 8
  %55 = getelementptr inbounds %struct.linear_conf, %struct.linear_conf* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ONCE(i32 %58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.mddev*, %struct.mddev** %4, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.linear_conf*, %struct.linear_conf** %6, align 8
  %64 = call i32 @rcu_assign_pointer(i32 %62, %struct.linear_conf* %63)
  %65 = load %struct.mddev*, %struct.mddev** %4, align 8
  %66 = load %struct.mddev*, %struct.mddev** %4, align 8
  %67 = call i32 @linear_size(%struct.mddev* %66, i32 0, i32 0)
  %68 = call i32 @md_set_array_sectors(%struct.mddev* %65, i32 %67)
  %69 = load %struct.mddev*, %struct.mddev** %4, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mddev*, %struct.mddev** %4, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @set_capacity(i32 %71, i32 %74)
  %76 = load %struct.mddev*, %struct.mddev** %4, align 8
  %77 = call i32 @mddev_resume(%struct.mddev* %76)
  %78 = load %struct.mddev*, %struct.mddev** %4, align 8
  %79 = getelementptr inbounds %struct.mddev, %struct.mddev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @revalidate_disk(i32 %80)
  %82 = load %struct.linear_conf*, %struct.linear_conf** %7, align 8
  %83 = load i32, i32* @rcu, align 4
  %84 = call i32 @kfree_rcu(%struct.linear_conf* %82, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %37, %34, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.linear_conf* @linear_conf(%struct.mddev*, i64) #1

declare dso_local i32 @mddev_suspend(%struct.mddev*) #1

declare dso_local %struct.linear_conf* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.linear_conf*) #1

declare dso_local i32 @md_set_array_sectors(%struct.mddev*, i32) #1

declare dso_local i32 @linear_size(%struct.mddev*, i32, i32) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @mddev_resume(%struct.mddev*) #1

declare dso_local i32 @revalidate_disk(i32) #1

declare dso_local i32 @kfree_rcu(%struct.linear_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
