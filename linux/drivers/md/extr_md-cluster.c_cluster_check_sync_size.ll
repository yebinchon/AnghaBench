; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_cluster_check_sync_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_cluster_check_sync_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.mddev*)* }
%struct.mddev = type { %struct.bitmap*, %struct.TYPE_7__ }
%struct.bitmap = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.dlm_lock_resource = type { i32 }

@md_cluster_ops = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"can't get bitmap from slot %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bitmap%04d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"md-cluster: Cannot initialize %s\0A\00", align 1
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@DLM_LOCK_PW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @cluster_check_sync_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_check_sync_size(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bitmap*, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @md_cluster_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %19, align 8
  %21 = load %struct.mddev*, %struct.mddev** %3, align 8
  %22 = call i32 %20(%struct.mddev* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.mddev*, %struct.mddev** %3, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 0
  %25 = load %struct.bitmap*, %struct.bitmap** %24, align 8
  store %struct.bitmap* %25, %struct.bitmap** %11, align 8
  %26 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_9__* @kmap_atomic(i32 %29)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = call i32 @kunmap_atomic(%struct.TYPE_9__* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %114, %1
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %117

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %114

45:                                               ; preds = %40
  %46 = load %struct.mddev*, %struct.mddev** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call %struct.bitmap* @get_bitmap_from_slot(%struct.mddev* %46, i32 %47)
  store %struct.bitmap* %48, %struct.bitmap** %11, align 8
  %49 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %50 = call i64 @IS_ERR(%struct.bitmap* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 -1, i32* %2, align 4
  br label %123

55:                                               ; preds = %45
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @snprintf(i8* %56, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.mddev*, %struct.mddev** %3, align 8
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %61 = call %struct.dlm_lock_resource* @lockres_init(%struct.mddev* %59, i8* %60, i32* null, i32 1)
  store %struct.dlm_lock_resource* %61, %struct.dlm_lock_resource** %13, align 8
  %62 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %63 = icmp ne %struct.dlm_lock_resource* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %68 = call i32 @md_bitmap_free(%struct.bitmap* %67)
  store i32 -1, i32* %2, align 4
  br label %123

69:                                               ; preds = %55
  %70 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %71 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %72 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %76 = load i32, i32* @DLM_LOCK_PW, align 4
  %77 = call i32 @dlm_lock_sync(%struct.dlm_lock_resource* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %69
  %81 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %82 = call i32 @md_bitmap_update_sb(%struct.bitmap* %81)
  br label %83

83:                                               ; preds = %80, %69
  %84 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %13, align 8
  %85 = call i32 @lockres_free(%struct.dlm_lock_resource* %84)
  %86 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %87 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.TYPE_9__* @kmap_atomic(i32 %89)
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %6, align 8
  %91 = load i64, i64* %8, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %8, align 8
  br label %109

97:                                               ; preds = %83
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = call i32 @kunmap_atomic(%struct.TYPE_9__* %104)
  %106 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %107 = call i32 @md_bitmap_free(%struct.bitmap* %106)
  store i32 -1, i32* %2, align 4
  br label %123

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %93
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %111 = call i32 @kunmap_atomic(%struct.TYPE_9__* %110)
  %112 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %113 = call i32 @md_bitmap_free(%struct.bitmap* %112)
  br label %114

114:                                              ; preds = %109, %44
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %36

117:                                              ; preds = %36
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %8, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 0, i32 -1
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %117, %103, %64, %52
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_9__* @kmap_atomic(i32) #1

declare dso_local i32 @kunmap_atomic(%struct.TYPE_9__*) #1

declare dso_local %struct.bitmap* @get_bitmap_from_slot(%struct.mddev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bitmap*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dlm_lock_resource* @lockres_init(%struct.mddev*, i8*, i32*, i32) #1

declare dso_local i32 @md_bitmap_free(%struct.bitmap*) #1

declare dso_local i32 @dlm_lock_sync(%struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @md_bitmap_update_sb(%struct.bitmap*) #1

declare dso_local i32 @lockres_free(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
