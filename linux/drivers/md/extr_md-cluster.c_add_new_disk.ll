; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_add_new_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_add_new_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32, i32 }
%struct.cluster_msg = type { i8*, i32, i8* }
%struct.mdp_superblock_1 = type { i8* }

@NEWDISK = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DLM_LOCK_CR = common dso_local global i32 0, align 4
@MD_CLUSTER_SEND_LOCKED_ALREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @add_new_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_new_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.md_cluster_info*, align 8
  %7 = alloca %struct.cluster_msg, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mdp_superblock_1*, align 8
  %10 = alloca i8*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = load %struct.md_cluster_info*, %struct.md_cluster_info** %12, align 8
  store %struct.md_cluster_info* %13, %struct.md_cluster_info** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %15 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mdp_superblock_1* @page_address(i32 %16)
  store %struct.mdp_superblock_1* %17, %struct.mdp_superblock_1** %9, align 8
  %18 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %9, align 8
  %19 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  %21 = call i32 @memset(%struct.cluster_msg* %7, i32 0, i32 24)
  %22 = load i32, i32* @NEWDISK, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = getelementptr inbounds %struct.cluster_msg, %struct.cluster_msg* %7, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.cluster_msg, %struct.cluster_msg* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @memcpy(i32 %26, i8* %27, i32 16)
  %29 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %30 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.cluster_msg, %struct.cluster_msg* %7, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %35 = call i32 @lock_comm(%struct.md_cluster_info* %34, i32 1)
  %36 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %37 = call i32 @__sendmsg(%struct.md_cluster_info* %36, %struct.cluster_msg* %7)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %42 = call i32 @unlock_comm(%struct.md_cluster_info* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %93

44:                                               ; preds = %2
  %45 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %46 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %47 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %53 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* @DLM_LOCK_EX, align 4
  %56 = call i32 @dlm_lock_sync(%struct.TYPE_2__* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %60 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %44
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %44
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %77 = call i32 @unlock_comm(%struct.md_cluster_info* %76)
  br label %91

78:                                               ; preds = %72
  %79 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %80 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* @DLM_LOCK_CR, align 4
  %83 = call i32 @dlm_lock_sync(%struct.TYPE_2__* %81, i32 %82)
  %84 = load i32, i32* @MD_CLUSTER_SEND_LOCKED_ALREADY, align 4
  %85 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %86 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %85, i32 0, i32 1
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  %88 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  %89 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %88, i32 0, i32 0
  %90 = call i32 @wake_up(i32* %89)
  br label %91

91:                                               ; preds = %78, %75
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %40
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.mdp_superblock_1* @page_address(i32) #1

declare dso_local i32 @memset(%struct.cluster_msg*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @lock_comm(%struct.md_cluster_info*, i32) #1

declare dso_local i32 @__sendmsg(%struct.md_cluster_info*, %struct.cluster_msg*) #1

declare dso_local i32 @unlock_comm(%struct.md_cluster_info*) #1

declare dso_local i32 @dlm_lock_sync(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
