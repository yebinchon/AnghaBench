; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_endwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_endwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, i32, %struct.TYPE_7__, i64, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"dec write-behind count %d/%lu\0A\00", align 1
@NEEDED_MASK = common dso_local global i32 0, align 4
@COUNTER_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_bitmap_endwrite(%struct.bitmap* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bitmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %15 = icmp ne %struct.bitmap* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %151

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %22 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %21, i32 0, i32 7
  %23 = call i64 @atomic_dec_and_test(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 8
  %28 = call i32 @wake_up(i32* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %31 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %30, i32 0, i32 7
  %32 = call i32 @atomic_read(i32* %31)
  %33 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %34 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %33, i32 0, i32 6
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %29, %17
  br label %41

41:                                               ; preds = %150, %40
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %151

44:                                               ; preds = %41
  %45 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %46 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %51 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %50, i32 0, i32 2
  %52 = load i64, i64* %7, align 8
  %53 = call i32* @md_bitmap_get_counter(%struct.TYPE_7__* %51, i64 %52, i64* %11, i32 0)
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %44
  %57 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %58 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %151

62:                                               ; preds = %44
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %67 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %66, i32 0, i32 6
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %65
  %73 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %74 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %77 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %76, i32 0, i32 6
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %75, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %72
  %83 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %84 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %83, i32 0, i32 6
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %89 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %91 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %90, i32 0, i32 1
  store i32 1, i32* %91, align 8
  %92 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %93 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @sysfs_notify_dirent_safe(i32 %94)
  br label %96

96:                                               ; preds = %82, %72, %65, %62
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @NEEDED(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @NEEDED_MASK, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %104, %99, %96
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @COUNTER(i32 %111)
  %113 = load i64, i64* @COUNTER_MAX, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %117 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %116, i32 0, i32 4
  %118 = call i32 @wake_up(i32* %117)
  br label %119

119:                                              ; preds = %115, %109
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 4
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp sle i32 %124, 2
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %128 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %127, i32 0, i32 2
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @md_bitmap_set_pending(%struct.TYPE_7__* %128, i64 %129)
  %131 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %132 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %126, %119
  %134 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %135 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i64, i64* %12, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %7, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %7, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %11, align 8
  %144 = icmp ugt i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %133
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %8, align 8
  %148 = sub i64 %147, %146
  store i64 %148, i64* %8, align 8
  br label %150

149:                                              ; preds = %133
  store i64 0, i64* %8, align 8
  br label %150

150:                                              ; preds = %149, %145
  br label %41

151:                                              ; preds = %16, %56, %41
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32* @md_bitmap_get_counter(%struct.TYPE_7__*, i64, i64*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @NEEDED(i32) #1

declare dso_local i64 @COUNTER(i32) #1

declare dso_local i32 @md_bitmap_set_pending(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
