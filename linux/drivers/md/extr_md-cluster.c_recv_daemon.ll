; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_recv_daemon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_recv_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32, %struct.dlm_lock_resource*, %struct.dlm_lock_resource* }
%struct.dlm_lock_resource = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cluster_msg = type { i32 }

@DLM_LOCK_CR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"md/raid1:failed to get CR on MESSAGE\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unlock ack failed return %d\0A\00", align 1
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"lock PR on msg failed return %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"lock CR on ack failed return %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"unlock msg failed return %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md_thread*)* @recv_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_daemon(%struct.md_thread* %0) #0 {
  %2 = alloca %struct.md_thread*, align 8
  %3 = alloca %struct.md_cluster_info*, align 8
  %4 = alloca %struct.dlm_lock_resource*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca %struct.cluster_msg, align 4
  %7 = alloca i32, align 4
  store %struct.md_thread* %0, %struct.md_thread** %2, align 8
  %8 = load %struct.md_thread*, %struct.md_thread** %2, align 8
  %9 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.md_cluster_info*, %struct.md_cluster_info** %11, align 8
  store %struct.md_cluster_info* %12, %struct.md_cluster_info** %3, align 8
  %13 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %14 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %13, i32 0, i32 2
  %15 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %14, align 8
  store %struct.dlm_lock_resource* %15, %struct.dlm_lock_resource** %4, align 8
  %16 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %17 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %16, i32 0, i32 1
  %18 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %17, align 8
  store %struct.dlm_lock_resource* %18, %struct.dlm_lock_resource** %5, align 8
  %19 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %20 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %23 = load i32, i32* @DLM_LOCK_CR, align 4
  %24 = call i32 @dlm_lock_sync(%struct.dlm_lock_resource* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %29 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %95

31:                                               ; preds = %1
  %32 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %33 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(%struct.cluster_msg* %6, i32 %35, i32 4)
  %37 = load %struct.md_thread*, %struct.md_thread** %2, align 8
  %38 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @process_recvd_msg(%struct.TYPE_4__* %39, %struct.cluster_msg* %6)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %80

44:                                               ; preds = %31
  %45 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %46 = call i32 @dlm_unlock_sync(%struct.dlm_lock_resource* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %44
  %56 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %57 = load i32, i32* @DLM_LOCK_PR, align 4
  %58 = call i32 @dlm_lock_sync(%struct.dlm_lock_resource* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %55
  %68 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %4, align 8
  %69 = load i32, i32* @DLM_LOCK_CR, align 4
  %70 = call i32 @dlm_lock_sync(%struct.dlm_lock_resource* %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %67
  br label %80

80:                                               ; preds = %79, %43
  %81 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %82 = call i32 @dlm_unlock_sync(%struct.dlm_lock_resource* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %80
  %92 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %93 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %91, %26
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dlm_lock_sync(%struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.cluster_msg*, i32, i32) #1

declare dso_local i32 @process_recvd_msg(%struct.TYPE_4__*, %struct.cluster_msg*) #1

declare dso_local i32 @dlm_unlock_sync(%struct.dlm_lock_resource*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
