; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_lock_all_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_lock_all_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_5__, %struct.md_cluster_info* }
%struct.TYPE_5__ = type { i32 }
%struct.md_cluster_info = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"md: can't alloc mem for other bitmap locks\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bitmap%04d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@DLM_LOCK_PW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @lock_all_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_all_bitmaps(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca %struct.md_cluster_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.mddev*, %struct.mddev** %3, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 1
  %13 = load %struct.md_cluster_info*, %struct.md_cluster_info** %12, align 8
  store %struct.md_cluster_info* %13, %struct.md_cluster_info** %10, align 8
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_6__** @kcalloc(i32 %18, i32 8, i32 %19)
  %21 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %22 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %21, i32 0, i32 0
  store %struct.TYPE_6__** %20, %struct.TYPE_6__*** %22, align 8
  %23 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %24 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = icmp ne %struct.TYPE_6__** %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %102

29:                                               ; preds = %1
  %30 = load %struct.mddev*, %struct.mddev** %3, align 8
  %31 = call i32 @slot_number(%struct.mddev* %30)
  store i32 %31, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %97, %29
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.mddev*, %struct.mddev** %3, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %100

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %97

44:                                               ; preds = %39
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %46 = call i32 @memset(i8* %45, i8 signext 0, i32 64)
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @snprintf(i8* %47, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.mddev*, %struct.mddev** %3, align 8
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %52 = call %struct.TYPE_6__* @lockres_init(%struct.mddev* %50, i8* %51, i32* null, i32 1)
  %53 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %54 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %57
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %58, align 8
  %59 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %60 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %44
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %102

70:                                               ; preds = %44
  %71 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %72 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %73 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %74, i64 %76
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %71
  store i32 %81, i32* %79, align 4
  %82 = load %struct.md_cluster_info*, %struct.md_cluster_info** %10, align 8
  %83 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* @DLM_LOCK_PW, align 4
  %90 = call i32 @dlm_lock_sync(%struct.TYPE_6__* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %70
  store i32 -1, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %70
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %94, %43
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %32

100:                                              ; preds = %32
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %67, %27
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_6__** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @slot_number(%struct.mddev*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @lockres_init(%struct.mddev*, i8*, i32*, i32) #1

declare dso_local i32 @dlm_lock_sync(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
