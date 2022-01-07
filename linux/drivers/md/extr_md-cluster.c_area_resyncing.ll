; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_area_resyncing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_area_resyncing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { i64, i64, i32, i32 }

@READ = common dso_local global i32 0, align 4
@MD_CLUSTER_SUSPEND_READ_BALANCING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32, i64, i64)* @area_resyncing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @area_resyncing(%struct.mddev* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.md_cluster_info*, align 8
  %11 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.mddev*, %struct.mddev** %6, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 0
  %14 = load %struct.md_cluster_info*, %struct.md_cluster_info** %13, align 8
  store %struct.md_cluster_info* %14, %struct.md_cluster_info** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @READ, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* @MD_CLUSTER_SUSPEND_READ_BALANCING, align 4
  %20 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %21 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %20, i32 0, i32 3
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %46

25:                                               ; preds = %18, %4
  %26 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %27 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %26, i32 0, i32 2
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %31 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %37 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %34, %25
  %42 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %43 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %24
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
