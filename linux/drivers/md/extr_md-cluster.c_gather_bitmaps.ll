; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_gather_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_gather_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, %struct.mddev* }
%struct.mddev = type { i64, %struct.TYPE_2__, %struct.md_cluster_info* }
%struct.TYPE_2__ = type { i32 }
%struct.md_cluster_info = type { i32 }
%struct.cluster_msg = type { i8*, i8*, i32 }

@RE_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"md-cluster: Could not gather bitmaps from slot %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*)* @gather_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather_bitmaps(%struct.md_rdev* %0) #0 {
  %2 = alloca %struct.md_rdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cluster_msg, align 8
  %8 = alloca %struct.mddev*, align 8
  %9 = alloca %struct.md_cluster_info*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %2, align 8
  %10 = bitcast %struct.cluster_msg* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %12 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %11, i32 0, i32 1
  %13 = load %struct.mddev*, %struct.mddev** %12, align 8
  store %struct.mddev* %13, %struct.mddev** %8, align 8
  %14 = load %struct.mddev*, %struct.mddev** %8, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 2
  %16 = load %struct.md_cluster_info*, %struct.md_cluster_info** %15, align 8
  store %struct.md_cluster_info* %16, %struct.md_cluster_info** %9, align 8
  %17 = load i32, i32* @RE_ADD, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = getelementptr inbounds %struct.cluster_msg, %struct.cluster_msg* %7, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load %struct.md_rdev*, %struct.md_rdev** %2, align 8
  %21 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = getelementptr inbounds %struct.cluster_msg, %struct.cluster_msg* %7, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load %struct.md_cluster_info*, %struct.md_cluster_info** %9, align 8
  %26 = call i32 @sendmsg(%struct.md_cluster_info* %25, %struct.cluster_msg* %7, i32 1)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %73

30:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %69, %30
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.mddev*, %struct.mddev** %8, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.md_cluster_info*, %struct.md_cluster_info** %9, align 8
  %41 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %69

46:                                               ; preds = %38
  %47 = load %struct.mddev*, %struct.mddev** %8, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @md_bitmap_copy_from_slot(%struct.mddev* %47, i32 %48, i64* %5, i64* %6, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %73

55:                                               ; preds = %46
  %56 = load i64, i64* %6, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.mddev*, %struct.mddev** %8, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.mddev*, %struct.mddev** %8, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %58, %55
  br label %69

69:                                               ; preds = %68, %45
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %31

72:                                               ; preds = %31
  br label %73

73:                                               ; preds = %72, %52, %29
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @sendmsg(%struct.md_cluster_info*, %struct.cluster_msg*, i32) #2

declare dso_local i32 @md_bitmap_copy_from_slot(%struct.mddev*, i32, i64*, i64*, i32) #2

declare dso_local i32 @pr_warn(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
