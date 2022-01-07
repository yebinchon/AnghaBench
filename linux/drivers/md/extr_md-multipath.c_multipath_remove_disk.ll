; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_remove_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_remove_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.mpconf* }
%struct.mpconf = type { %struct.multipath_info* }
%struct.multipath_info = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, i32, i32 }

@In_sync = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"hot-remove-disk, slot %d is identified but is still operational!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RemoveSynchronized = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @multipath_remove_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_remove_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.mpconf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.multipath_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  %11 = load %struct.mpconf*, %struct.mpconf** %10, align 8
  store %struct.mpconf* %11, %struct.mpconf** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %13 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %16 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %15, i32 0, i32 0
  %17 = load %struct.multipath_info*, %struct.multipath_info** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %17, i64 %19
  store %struct.multipath_info* %20, %struct.multipath_info** %8, align 8
  %21 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %22 = call i32 @print_multipath_conf(%struct.mpconf* %21)
  %23 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %24 = load %struct.multipath_info*, %struct.multipath_info** %8, align 8
  %25 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %24, i32 0, i32 0
  %26 = load %struct.md_rdev*, %struct.md_rdev** %25, align 8
  %27 = icmp eq %struct.md_rdev* %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %2
  %29 = load i32, i32* @In_sync, align 4
  %30 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %31 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %30, i32 0, i32 2
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %36 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %35, i32 0, i32 1
  %37 = call i64 @atomic_read(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %69

44:                                               ; preds = %34
  %45 = load %struct.multipath_info*, %struct.multipath_info** %8, align 8
  %46 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %45, i32 0, i32 0
  store %struct.md_rdev* null, %struct.md_rdev** %46, align 8
  %47 = load i32, i32* @RemoveSynchronized, align 4
  %48 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %49 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %48, i32 0, i32 2
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %44
  %53 = call i32 (...) @synchronize_rcu()
  %54 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %55 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %54, i32 0, i32 1
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %62 = load %struct.multipath_info*, %struct.multipath_info** %8, align 8
  %63 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %62, i32 0, i32 0
  store %struct.md_rdev* %61, %struct.md_rdev** %63, align 8
  br label %69

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.mddev*, %struct.mddev** %3, align 8
  %67 = call i32 @md_integrity_register(%struct.mddev* %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %2
  br label %69

69:                                               ; preds = %68, %58, %39
  %70 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %71 = call i32 @print_multipath_conf(%struct.mpconf* %70)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @print_multipath_conf(%struct.mpconf*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @md_integrity_register(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
