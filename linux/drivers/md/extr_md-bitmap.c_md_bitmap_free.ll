; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i64 }
%struct.bitmap = type { i64, %struct.bitmap*, i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_6__ = type { i64, %struct.bitmap_page* }
%struct.bitmap_page = type { i64, %struct.bitmap_page*, i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_7__*, i64 }

@md_cluster_ops = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_bitmap_free(%struct.bitmap* %0) #0 {
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bitmap_page*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %2, align 8
  %6 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %7 = icmp ne %struct.bitmap* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %109

9:                                                ; preds = %1
  %10 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %11 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %16 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @sysfs_put(i64 %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %21 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %20, i32 0, i32 7
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call i64 @mddev_is_clustered(%struct.TYPE_7__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 7
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %34 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @md_cluster_ops, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %37, align 8
  %39 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %40 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %39, i32 0, i32 7
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i64 %38(%struct.TYPE_7__* %41)
  %43 = icmp eq i64 %35, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %46 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %45, i32 0, i32 7
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i32 @md_cluster_stop(%struct.TYPE_7__* %47)
  br label %49

49:                                               ; preds = %44, %32, %25, %19
  %50 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %51 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %54 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %53, i32 0, i32 5
  %55 = call i64 @atomic_read(i32* %54)
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @wait_event(i32 %52, i32 %57)
  %59 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %60 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %59, i32 0, i32 4
  %61 = call i32 @md_bitmap_file_unmap(i32* %60)
  %62 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %63 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.bitmap_page*, %struct.bitmap_page** %64, align 8
  store %struct.bitmap_page* %65, %struct.bitmap_page** %5, align 8
  %66 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %67 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %4, align 8
  %70 = load %struct.bitmap_page*, %struct.bitmap_page** %5, align 8
  %71 = icmp ne %struct.bitmap_page* %70, null
  br i1 %71, label %72, label %103

72:                                               ; preds = %49
  store i64 0, i64* %3, align 8
  br label %73

73:                                               ; preds = %99, %72
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load %struct.bitmap_page*, %struct.bitmap_page** %5, align 8
  %79 = load i64, i64* %3, align 8
  %80 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %78, i64 %79
  %81 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %80, i32 0, i32 1
  %82 = load %struct.bitmap_page*, %struct.bitmap_page** %81, align 8
  %83 = icmp ne %struct.bitmap_page* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %77
  %85 = load %struct.bitmap_page*, %struct.bitmap_page** %5, align 8
  %86 = load i64, i64* %3, align 8
  %87 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %85, i64 %86
  %88 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load %struct.bitmap_page*, %struct.bitmap_page** %5, align 8
  %93 = load i64, i64* %3, align 8
  %94 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %92, i64 %93
  %95 = getelementptr inbounds %struct.bitmap_page, %struct.bitmap_page* %94, i32 0, i32 1
  %96 = load %struct.bitmap_page*, %struct.bitmap_page** %95, align 8
  %97 = call i32 @kfree(%struct.bitmap_page* %96)
  br label %98

98:                                               ; preds = %91, %84, %77
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %3, align 8
  br label %73

102:                                              ; preds = %73
  br label %103

103:                                              ; preds = %102, %49
  %104 = load %struct.bitmap_page*, %struct.bitmap_page** %5, align 8
  %105 = call i32 @kfree(%struct.bitmap_page* %104)
  %106 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %107 = bitcast %struct.bitmap* %106 to %struct.bitmap_page*
  %108 = call i32 @kfree(%struct.bitmap_page* %107)
  br label %109

109:                                              ; preds = %103, %8
  ret void
}

declare dso_local i32 @sysfs_put(i64) #1

declare dso_local i64 @mddev_is_clustered(%struct.TYPE_7__*) #1

declare dso_local i32 @md_cluster_stop(%struct.TYPE_7__*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @md_bitmap_file_unmap(i32*) #1

declare dso_local i32 @kfree(%struct.bitmap_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
