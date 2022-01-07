; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_recover_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_recover_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_slot = type { i64, i32 }
%struct.mddev = type { %struct.TYPE_2__, %struct.md_cluster_info* }
%struct.TYPE_2__ = type { i32 }
%struct.md_cluster_info = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"md-cluster: %s Node %d/%d down. My slot: %d. Initiating recovery.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dlm_slot*)* @recover_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recover_slot(i8* %0, %struct.dlm_slot* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dlm_slot*, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca %struct.md_cluster_info*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dlm_slot* %1, %struct.dlm_slot** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mddev*
  store %struct.mddev* %8, %struct.mddev** %5, align 8
  %9 = load %struct.mddev*, %struct.mddev** %5, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 1
  %11 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  store %struct.md_cluster_info* %11, %struct.md_cluster_info** %6, align 8
  %12 = load %struct.mddev*, %struct.mddev** %5, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dlm_slot*, %struct.dlm_slot** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dlm_slot*, %struct.dlm_slot** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %23 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i64 %21, i32 %24)
  %26 = load %struct.mddev*, %struct.mddev** %5, align 8
  %27 = load %struct.dlm_slot*, %struct.dlm_slot** %4, align 8
  %28 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i32 @__recover_slot(%struct.mddev* %26, i64 %30)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @__recover_slot(%struct.mddev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
