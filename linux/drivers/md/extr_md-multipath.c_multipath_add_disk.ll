; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_add_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, %struct.mpconf* }
%struct.mpconf = type { i32, %struct.multipath_info* }
%struct.multipath_info = type { i32* }
%struct.md_rdev = type { i32, i32, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @multipath_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_add_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.mpconf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.multipath_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %11 = load %struct.mddev*, %struct.mddev** %3, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 3
  %13 = load %struct.mpconf*, %struct.mpconf** %12, align 8
  store %struct.mpconf* %13, %struct.mpconf** %5, align 8
  %14 = load i32, i32* @EEXIST, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.mddev*, %struct.mddev** %3, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  %20 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %21 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %26 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %30 = call i32 @print_multipath_conf(%struct.mpconf* %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %88, %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %91

36:                                               ; preds = %32
  %37 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %38 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %37, i32 0, i32 1
  %39 = load %struct.multipath_info*, %struct.multipath_info** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %39, i64 %41
  store %struct.multipath_info* %42, %struct.multipath_info** %8, align 8
  %43 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %87

46:                                               ; preds = %36
  %47 = load %struct.mddev*, %struct.mddev** %3, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %54 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 9
  %57 = call i32 @disk_stack_limits(i32 %49, i32 %52, i32 %56)
  %58 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %59 = load %struct.mddev*, %struct.mddev** %3, align 8
  %60 = call i32 @md_integrity_add_rdev(%struct.md_rdev* %58, %struct.mddev* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %91

64:                                               ; preds = %46
  %65 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %66 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %65, i32 0, i32 0
  %67 = call i32 @spin_lock_irq(i32* %66)
  %68 = load %struct.mddev*, %struct.mddev** %3, align 8
  %69 = getelementptr inbounds %struct.mddev, %struct.mddev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %74 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @In_sync, align 4
  %76 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %77 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %76, i32 0, i32 2
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  %79 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %80 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load %struct.multipath_info*, %struct.multipath_info** %8, align 8
  %83 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %86 = call i32 @rcu_assign_pointer(i32* %84, %struct.md_rdev* %85)
  store i32 0, i32* %6, align 4
  br label %91

87:                                               ; preds = %36
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %32

91:                                               ; preds = %64, %63, %32
  %92 = load %struct.mpconf*, %struct.mpconf** %5, align 8
  %93 = call i32 @print_multipath_conf(%struct.mpconf* %92)
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @print_multipath_conf(%struct.mpconf*) #1

declare dso_local i32 @disk_stack_limits(i32, i32, i32) #1

declare dso_local i32 @md_integrity_add_rdev(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.md_rdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
