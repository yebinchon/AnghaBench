; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_resync_info_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_resync_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.resync_info = type { i32 }
%struct.cluster_msg = type { i8*, i8*, i32, i32 }

@DLM_LOCK_PW = common dso_local global i32 0, align 4
@RESYNCING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32, i32)* @resync_info_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resync_info_update(%struct.mddev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.md_cluster_info*, align 8
  %9 = alloca %struct.resync_info, align 4
  %10 = alloca %struct.cluster_msg, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mddev*, %struct.mddev** %5, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = load %struct.md_cluster_info*, %struct.md_cluster_info** %12, align 8
  store %struct.md_cluster_info* %13, %struct.md_cluster_info** %8, align 8
  %14 = bitcast %struct.cluster_msg* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load %struct.md_cluster_info*, %struct.md_cluster_info** %8, align 8
  %19 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(%struct.resync_info* %9, i32 %23, i32 4)
  %25 = getelementptr inbounds %struct.resync_info, %struct.resync_info* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le64_to_cpu(i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %63

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.md_cluster_info*, %struct.md_cluster_info** %8, align 8
  %33 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @add_resync_info(%struct.TYPE_5__* %34, i32 %35, i32 %36)
  %38 = load %struct.md_cluster_info*, %struct.md_cluster_info** %8, align 8
  %39 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* @DLM_LOCK_PW, align 4
  %42 = call i32 @dlm_lock_sync(%struct.TYPE_5__* %40, i32 %41)
  %43 = load i32, i32* @RESYNCING, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = getelementptr inbounds %struct.cluster_msg, %struct.cluster_msg* %10, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @cpu_to_le64(i32 %46)
  %48 = getelementptr inbounds %struct.cluster_msg, %struct.cluster_msg* %10, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i8* @cpu_to_le64(i32 %49)
  %51 = getelementptr inbounds %struct.cluster_msg, %struct.cluster_msg* %10, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %31
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.md_cluster_info*, %struct.md_cluster_info** %8, align 8
  %59 = call i32 @sendmsg(%struct.md_cluster_info* %58, %struct.cluster_msg* %10, i32 1)
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %54, %31
  %61 = load %struct.md_cluster_info*, %struct.md_cluster_info** %8, align 8
  %62 = call i32 @sendmsg(%struct.md_cluster_info* %61, %struct.cluster_msg* %10, i32 0)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %57, %29
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.resync_info*, i32, i32) #2

declare dso_local i64 @le64_to_cpu(i32) #2

declare dso_local i32 @add_resync_info(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @dlm_lock_sync(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i8* @cpu_to_le64(i32) #2

declare dso_local i32 @sendmsg(%struct.md_cluster_info*, %struct.cluster_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
