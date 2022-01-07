; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_resync_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_resync_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, i32*, i32*)* @resync_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resync_info_get(%struct.mddev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.md_cluster_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 0
  %10 = load %struct.md_cluster_info*, %struct.md_cluster_info** %9, align 8
  store %struct.md_cluster_info* %10, %struct.md_cluster_info** %7, align 8
  %11 = load %struct.md_cluster_info*, %struct.md_cluster_info** %7, align 8
  %12 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.md_cluster_info*, %struct.md_cluster_info** %7, align 8
  %15 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.md_cluster_info*, %struct.md_cluster_info** %7, align 8
  %19 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.md_cluster_info*, %struct.md_cluster_info** %7, align 8
  %23 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_irq(i32* %23)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
