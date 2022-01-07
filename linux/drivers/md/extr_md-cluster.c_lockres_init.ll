; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_lockres_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_lockres_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32, void (i8*, i32)*, %struct.dlm_lock_resource*, %struct.TYPE_2__, i32, i32, %struct.mddev*, i32, i32 }
%struct.TYPE_2__ = type { %struct.dlm_lock_resource* }
%struct.mddev = type { %struct.md_cluster_info* }
%struct.md_cluster_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"md-cluster: Unable to allocate resource name for resource %s\0A\00", align 1
@LVB_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"md-cluster: Unable to allocate LVB for resource %s\0A\00", align 1
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@DLM_LKF_EXPEDITE = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"md-cluster: Unable to lock NL on new lock resource %s\0A\00", align 1
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dlm_lock_resource* (%struct.mddev*, i8*, void (i8*, i32)*, i32)* @lockres_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dlm_lock_resource* @lockres_init(%struct.mddev* %0, i8* %1, void (i8*, i32)* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (i8*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_lock_resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.md_cluster_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %6, align 8
  store i8* %1, i8** %7, align 8
  store void (i8*, i32)* %2, void (i8*, i32)** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %10, align 8
  %14 = load %struct.mddev*, %struct.mddev** %6, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  %16 = load %struct.md_cluster_info*, %struct.md_cluster_info** %15, align 8
  store %struct.md_cluster_info* %16, %struct.md_cluster_info** %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 56, i32 %17)
  %19 = bitcast i8* %18 to %struct.dlm_lock_resource*
  store %struct.dlm_lock_resource* %19, %struct.dlm_lock_resource** %10, align 8
  %20 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %21 = icmp ne %struct.dlm_lock_resource* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %5, align 8
  br label %132

23:                                               ; preds = %4
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 8
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %28 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.md_cluster_info*, %struct.md_cluster_info** %13, align 8
  %30 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %33 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mddev*, %struct.mddev** %6, align 8
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %36 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %35, i32 0, i32 6
  store %struct.mddev* %34, %struct.mddev** %36, align 8
  %37 = load i32, i32* @DLM_LOCK_IV, align 4
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %39 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 %43, i32 %44)
  %46 = bitcast i8* %45 to %struct.dlm_lock_resource*
  %47 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %48 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %47, i32 0, i32 2
  store %struct.dlm_lock_resource* %46, %struct.dlm_lock_resource** %48, align 8
  %49 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %50 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %49, i32 0, i32 2
  %51 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %50, align 8
  %52 = icmp ne %struct.dlm_lock_resource* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %23
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %54)
  br label %120

56:                                               ; preds = %23
  %57 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %58 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %57, i32 0, i32 2
  %59 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @strlcpy(%struct.dlm_lock_resource* %59, i8* %60, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %56
  %67 = load i32, i32* @LVB_SIZE, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kzalloc(i32 %67, i32 %68)
  %70 = bitcast i8* %69 to %struct.dlm_lock_resource*
  %71 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %72 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store %struct.dlm_lock_resource* %70, %struct.dlm_lock_resource** %73, align 8
  %74 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %75 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %76, align 8
  %78 = icmp ne %struct.dlm_lock_resource* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %66
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  br label %120

82:                                               ; preds = %66
  %83 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %84 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %85 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %56
  %87 = load void (i8*, i32)*, void (i8*, i32)** %8, align 8
  %88 = icmp ne void (i8*, i32)* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load void (i8*, i32)*, void (i8*, i32)** %8, align 8
  %91 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %92 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %91, i32 0, i32 1
  store void (i8*, i32)* %90, void (i8*, i32)** %92, align 8
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* @DLM_LKF_EXPEDITE, align 4
  %95 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %96 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %100 = load i32, i32* @DLM_LOCK_NL, align 4
  %101 = call i32 @dlm_lock_sync(%struct.dlm_lock_resource* %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  br label %120

107:                                              ; preds = %93
  %108 = load i32, i32* @DLM_LKF_EXPEDITE, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %111 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %115 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %116 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  store %struct.dlm_lock_resource* %119, %struct.dlm_lock_resource** %5, align 8
  br label %132

120:                                              ; preds = %104, %79, %53
  %121 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %122 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %123, align 8
  %125 = call i32 @kfree(%struct.dlm_lock_resource* %124)
  %126 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %127 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %126, i32 0, i32 2
  %128 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %127, align 8
  %129 = call i32 @kfree(%struct.dlm_lock_resource* %128)
  %130 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %131 = call i32 @kfree(%struct.dlm_lock_resource* %130)
  store %struct.dlm_lock_resource* null, %struct.dlm_lock_resource** %5, align 8
  br label %132

132:                                              ; preds = %120, %107, %22
  %133 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  ret %struct.dlm_lock_resource* %133
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @strlcpy(%struct.dlm_lock_resource*, i8*, i32) #1

declare dso_local i32 @dlm_lock_sync(%struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @kfree(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
