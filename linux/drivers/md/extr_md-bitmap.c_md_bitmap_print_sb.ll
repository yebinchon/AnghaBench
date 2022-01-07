; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_print_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_print_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: bitmap file superblock:\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"         magic: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"       version: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"          uuid: %08x.%08x.%08x.%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"        events: %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"events cleared: %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"         state: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"     chunksize: %d B\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"  daemon sleep: %ds\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"     sync size: %llu KB\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"max write behind: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_bitmap_print_sb(%struct.bitmap* %0) #0 {
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %2, align 8
  %4 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %5 = icmp ne %struct.bitmap* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %8 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %1
  br label %99

13:                                               ; preds = %6
  %14 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %15 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_6__* @kmap_atomic(i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %3, align 8
  %19 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %20 = call i64 @bmname(%struct.bitmap* %19)
  %21 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 0
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le32_to_cpu(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 4
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @le32_to_cpu(i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 12
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @le32_to_cpu(i32 %58)
  %60 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %38, i64 %45, i64 %52, i64 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @le64_to_cpu(i32 %63)
  %65 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le64_to_cpu(i32 %68)
  %70 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @le32_to_cpu(i32 %73)
  %75 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le32_to_cpu(i32 %78)
  %80 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @le32_to_cpu(i32 %83)
  %85 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @le64_to_cpu(i32 %88)
  %90 = udiv i64 %89, 2
  %91 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i64 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @le32_to_cpu(i32 %94)
  %96 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i64 %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = call i32 @kunmap_atomic(%struct.TYPE_6__* %97)
  br label %99

99:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.TYPE_6__* @kmap_atomic(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i64 @bmname(%struct.bitmap*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
