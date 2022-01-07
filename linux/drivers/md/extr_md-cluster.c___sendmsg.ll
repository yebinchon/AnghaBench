; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c___sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c___sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_cluster_info = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cluster_msg = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"md-cluster: failed to get EX on MESSAGE (%d)\0A\00", align 1
@DLM_LOCK_CW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"md-cluster: failed to convert EX to CW on MESSAGE(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"md-cluster: failed to convert CR to EX on ACK(%d)\0A\00", align 1
@DLM_LOCK_CR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"md-cluster: failed to convert EX to CR on ACK(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"md-cluster: failed convert to NL on MESSAGE(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_cluster_info*, %struct.cluster_msg*)* @__sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sendmsg(%struct.md_cluster_info* %0, %struct.cluster_msg* %1) #0 {
  %3 = alloca %struct.md_cluster_info*, align 8
  %4 = alloca %struct.cluster_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.md_cluster_info* %0, %struct.md_cluster_info** %3, align 8
  store %struct.cluster_msg* %1, %struct.cluster_msg** %4, align 8
  %7 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %8 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @cpu_to_le32(i32 %11)
  %13 = load %struct.cluster_msg*, %struct.cluster_msg** %4, align 8
  %14 = getelementptr inbounds %struct.cluster_msg, %struct.cluster_msg* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %16 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i32, i32* @DLM_LOCK_EX, align 4
  %19 = call i32 @dlm_lock_sync(%struct.TYPE_5__* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %82

25:                                               ; preds = %2
  %26 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %27 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cluster_msg*, %struct.cluster_msg** %4, align 8
  %33 = bitcast %struct.cluster_msg* %32 to i8*
  %34 = call i32 @memcpy(i32 %31, i8* %33, i32 4)
  %35 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %36 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* @DLM_LOCK_CW, align 4
  %39 = call i32 @dlm_lock_sync(%struct.TYPE_5__* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %68

45:                                               ; preds = %25
  %46 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %47 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* @DLM_LOCK_EX, align 4
  %50 = call i32 @dlm_lock_sync(%struct.TYPE_5__* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %68

56:                                               ; preds = %45
  %57 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %58 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* @DLM_LOCK_CR, align 4
  %61 = call i32 @dlm_lock_sync(%struct.TYPE_5__* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %78, %67, %64, %53, %42
  %69 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %70 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = call i32 @dlm_unlock_sync(%struct.TYPE_5__* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %68

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %22
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dlm_lock_sync(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @dlm_unlock_sync(%struct.TYPE_5__*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
