; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_resize_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_resize_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mddev*)* }
%struct.mddev = type { %struct.TYPE_3__, %struct.bitmap* }
%struct.TYPE_3__ = type { i32 }
%struct.bitmap = type { %struct.bitmap_counts }
%struct.bitmap_counts = type { i64 }
%struct.dlm_lock_resource = type { i32 }

@md_cluster_ops = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"can't get bitmap from slot %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bitmap%04d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot initialize %s lock\0A\00", align 1
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@DLM_LOCK_PW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32, i32)* @resize_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize_bitmaps(%struct.mddev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_counts*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca %struct.dlm_lock_resource*, align 8
  %11 = alloca %struct.bitmap*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.mddev*, %struct.mddev** %5, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 1
  %17 = load %struct.bitmap*, %struct.bitmap** %16, align 8
  store %struct.bitmap* %17, %struct.bitmap** %11, align 8
  %18 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %19 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.mddev*, %struct.mddev** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @update_bitmap_size(%struct.mddev* %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %4, align 4
  br label %105

29:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %95, %29
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.mddev*, %struct.mddev** %5, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @md_cluster_ops, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %40, align 8
  %42 = load %struct.mddev*, %struct.mddev** %5, align 8
  %43 = call i32 %41(%struct.mddev* %42)
  %44 = icmp eq i32 %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %95

46:                                               ; preds = %37
  %47 = load %struct.mddev*, %struct.mddev** %5, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call %struct.bitmap* @get_bitmap_from_slot(%struct.mddev* %47, i32 %48)
  store %struct.bitmap* %49, %struct.bitmap** %11, align 8
  %50 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %51 = call i64 @IS_ERR(%struct.bitmap* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %99

56:                                               ; preds = %46
  %57 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %58 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %57, i32 0, i32 0
  store %struct.bitmap_counts* %58, %struct.bitmap_counts** %8, align 8
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @snprintf(i8* %59, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.mddev*, %struct.mddev** %5, align 8
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %64 = call %struct.dlm_lock_resource* @lockres_init(%struct.mddev* %62, i8* %63, i32* null, i32 1)
  store %struct.dlm_lock_resource* %64, %struct.dlm_lock_resource** %10, align 8
  %65 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %66 = icmp ne %struct.dlm_lock_resource* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %99

70:                                               ; preds = %56
  %71 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %72 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %73 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %77 = load i32, i32* @DLM_LOCK_PW, align 4
  %78 = call i32 @dlm_lock_sync(%struct.dlm_lock_resource* %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %70
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.bitmap_counts*, %struct.bitmap_counts** %8, align 8
  %84 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %70
  %86 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %87 = call i32 @lockres_free(%struct.dlm_lock_resource* %86)
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.bitmap_counts*, %struct.bitmap_counts** %8, align 8
  %90 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %99

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %45
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %30

98:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %105

99:                                               ; preds = %93, %67, %53
  %100 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %101 = call i32 @md_bitmap_free(%struct.bitmap* %100)
  %102 = load %struct.mddev*, %struct.mddev** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @update_bitmap_size(%struct.mddev* %102, i32 %103)
  store i32 -1, i32* %4, align 4
  br label %105

105:                                              ; preds = %99, %98, %27
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @update_bitmap_size(%struct.mddev*, i32) #1

declare dso_local %struct.bitmap* @get_bitmap_from_slot(%struct.mddev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bitmap*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dlm_lock_resource* @lockres_init(%struct.mddev*, i8*, i32*, i32) #1

declare dso_local i32 @dlm_lock_sync(%struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @lockres_free(%struct.dlm_lock_resource*) #1

declare dso_local i32 @md_bitmap_free(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
