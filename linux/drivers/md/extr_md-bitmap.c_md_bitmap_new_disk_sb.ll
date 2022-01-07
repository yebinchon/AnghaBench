; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_new_disk_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_new_disk_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i64, %struct.TYPE_11__*, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BITMAP_MAGIC = common dso_local global i64 0, align 8
@BITMAP_MAJOR_HI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"bitmap chunksize not a power of 2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Choosing daemon_sleep default (5 sec)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@COUNTER_MAX = common dso_local global i64 0, align 8
@BITMAP_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap*)* @md_bitmap_new_disk_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_bitmap_new_disk_sb(%struct.bitmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* @__GFP_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.TYPE_13__* @alloc_page(i32 %10)
  %12 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %13 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %14, align 8
  %15 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %16 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %167

23:                                               ; preds = %1
  %24 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %25 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %30 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = call %struct.TYPE_12__* @kmap_atomic(%struct.TYPE_13__* %32)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %4, align 8
  %34 = load i64, i64* @BITMAP_MAGIC, align 8
  %35 = call i8* @cpu_to_le32(i64 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* @BITMAP_MAJOR_HI, align 8
  %39 = call i8* @cpu_to_le32(i64 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %43 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @is_power_of_2(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %23
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = call i32 @kunmap_atomic(%struct.TYPE_12__* %57)
  %59 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %167

62:                                               ; preds = %23
  %63 = load i64, i64* %5, align 8
  %64 = call i8* @cpu_to_le32(i64 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %68 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %62
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75, %62
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @HZ, align 4
  %82 = mul nsw i32 5, %81
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %79, %75
  %85 = load i64, i64* %6, align 8
  %86 = call i8* @cpu_to_le32(i64 %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %91 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  store i64 %89, i64* %94, align 8
  %95 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %96 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @COUNTER_MAX, align 8
  %103 = icmp ugt i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %84
  %105 = load i64, i64* @COUNTER_MAX, align 8
  %106 = udiv i64 %105, 2
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %104, %84
  %108 = load i64, i64* %7, align 8
  %109 = call i8* @cpu_to_le32(i64 %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %114 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  store i64 %112, i64* %117, align 8
  %118 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %119 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @cpu_to_le64(i32 %122)
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %130 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @memcpy(i32 %128, i32 %133, i32 16)
  %135 = load i32, i32* @BITMAP_STALE, align 4
  %136 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %137 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %136, i32 0, i32 0
  %138 = call i32 @set_bit(i32 %135, i64* %137)
  %139 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %140 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i8* @cpu_to_le32(i64 %141)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %146 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %145, i32 0, i32 1
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %151 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %153 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @cpu_to_le64(i32 %156)
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %161 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 3
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = call i32 @kunmap_atomic(%struct.TYPE_12__* %165)
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %107, %56, %20
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_13__* @alloc_page(i32) #1

declare dso_local %struct.TYPE_12__* @kmap_atomic(%struct.TYPE_13__*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @kunmap_atomic(%struct.TYPE_12__*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
