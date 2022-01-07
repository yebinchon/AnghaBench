; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_use_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_use_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.bio = type { %struct.dm_buffer*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@bio_complete = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*, i32, i32, i32, i32)* @use_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @use_bio(%struct.dm_buffer* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dm_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dm_buffer* %0, %struct.dm_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = ashr i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = load i64, i64* @SECTOR_SHIFT, align 8
  %31 = sub nsw i64 %29, %30
  %32 = icmp slt i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* %13, align 4
  %38 = add i32 %37, 2
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %36, %5
  %40 = load i32, i32* @GFP_NOWAIT, align 4
  %41 = load i32, i32* @__GFP_NORETRY, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @__GFP_NOWARN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %13, align 4
  %46 = call %struct.bio* @bio_kmalloc(i32 %44, i32 %45)
  store %struct.bio* %46, %struct.bio** %11, align 8
  %47 = load %struct.bio*, %struct.bio** %11, align 8
  %48 = icmp ne %struct.bio* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %105, %49
  %51 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @use_dmio(%struct.dm_buffer* %51, i32 %52, i32 %53, i32 %54, i32 %55)
  br label %122

57:                                               ; preds = %39
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.bio*, %struct.bio** %11, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.bio*, %struct.bio** %11, align 8
  %63 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bio_set_dev(%struct.bio* %62, i32 %67)
  %69 = load %struct.bio*, %struct.bio** %11, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @bio_set_op_attrs(%struct.bio* %69, i32 %70, i32 0)
  %72 = load i32, i32* @bio_complete, align 4
  %73 = load %struct.bio*, %struct.bio** %11, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %76 = load %struct.bio*, %struct.bio** %11, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 0
  store %struct.dm_buffer* %75, %struct.dm_buffer** %77, align 8
  %78 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %79 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8* %84, i8** %12, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i64, i64* @SECTOR_SHIFT, align 8
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %85, %87
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %116, %57
  %90 = load i64, i64* @PAGE_SIZE, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i64 @offset_in_page(i8* %91)
  %93 = sub nsw i64 %90, %92
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @min(i32 %94, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load %struct.bio*, %struct.bio** %11, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @virt_to_page(i8* %98)
  %100 = load i32, i32* %15, align 4
  %101 = load i8*, i8** %12, align 8
  %102 = call i64 @offset_in_page(i8* %101)
  %103 = call i32 @bio_add_page(%struct.bio* %97, i32 %99, i32 %100, i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %89
  %106 = load %struct.bio*, %struct.bio** %11, align 8
  %107 = call i32 @bio_put(%struct.bio* %106)
  br label %50

108:                                              ; preds = %89
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %14, align 4
  %111 = sub i32 %110, %109
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %12, align 8
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %14, align 4
  %118 = icmp ugt i32 %117, 0
  br i1 %118, label %89, label %119

119:                                              ; preds = %116
  %120 = load %struct.bio*, %struct.bio** %11, align 8
  %121 = call i32 @submit_bio(%struct.bio* %120)
  br label %122

122:                                              ; preds = %119, %50
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.bio* @bio_kmalloc(i32, i32) #1

declare dso_local i32 @use_dmio(%struct.dm_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @offset_in_page(i8*) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i64) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
