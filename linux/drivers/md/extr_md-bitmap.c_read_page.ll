; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.bitmap = type { i32, i32, i32 }
%struct.page = type { i64 }
%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head*, %struct.bitmap*, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"read bitmap file (%dB @ %llu)\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@end_bitmap_write = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@BITMAP_WRITE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"md: bitmap read error: (%dB @ %llu): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, %struct.bitmap*, i64, %struct.page*)* @read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_page(%struct.file* %0, i64 %1, %struct.bitmap* %2, i64 %3, %struct.page* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bitmap*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.bitmap* %2, %struct.bitmap** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.page* %4, %struct.page** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = call %struct.inode* @file_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %12, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %21)
  %23 = load %struct.page*, %struct.page** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %12, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 1, %26
  %28 = call %struct.buffer_head* @alloc_page_buffers(%struct.page* %23, i32 %27, i32 0)
  store %struct.buffer_head* %28, %struct.buffer_head** %13, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %30 = icmp ne %struct.buffer_head* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %137

34:                                               ; preds = %5
  %35 = load %struct.page*, %struct.page** %10, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %37 = call i32 @attach_page_buffers(%struct.page* %35, %struct.buffer_head* %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = load %struct.inode*, %struct.inode** %12, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = sub i64 %39, %43
  %45 = shl i64 %38, %44
  store i64 %45, i64* %14, align 8
  br label %46

46:                                               ; preds = %109, %34
  %47 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %48 = icmp ne %struct.buffer_head* %47, null
  br i1 %48, label %49, label %115

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %109

55:                                               ; preds = %49
  %56 = load %struct.inode*, %struct.inode** %12, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i64 @bmap(%struct.inode* %56, i64 %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %137

68:                                               ; preds = %55
  %69 = load %struct.inode*, %struct.inode** %12, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.inode*, %struct.inode** %12, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 1, %79
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %76, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  store i64 0, i64* %9, align 8
  br label %92

84:                                               ; preds = %68
  %85 = load %struct.inode*, %struct.inode** %12, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 1, %87
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %9, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %9, align 8
  br label %92

92:                                               ; preds = %84, %83
  %93 = load i32, i32* @end_bitmap_write, align 4
  %94 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.bitmap*, %struct.bitmap** %8, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 2
  store %struct.bitmap* %96, %struct.bitmap** %98, align 8
  %99 = load %struct.bitmap*, %struct.bitmap** %8, align 8
  %100 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %99, i32 0, i32 1
  %101 = call i32 @atomic_inc(i32* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %103 = call i32 @set_buffer_locked(%struct.buffer_head* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %105 = call i32 @set_buffer_mapped(%struct.buffer_head* %104)
  %106 = load i32, i32* @REQ_OP_READ, align 4
  %107 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %108 = call i32 @submit_bh(i32 %106, i32 0, %struct.buffer_head* %107)
  br label %109

109:                                              ; preds = %92, %52
  %110 = load i64, i64* %14, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %14, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %113 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %112, i32 0, i32 1
  %114 = load %struct.buffer_head*, %struct.buffer_head** %113, align 8
  store %struct.buffer_head* %114, %struct.buffer_head** %13, align 8
  br label %46

115:                                              ; preds = %46
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.page*, %struct.page** %10, align 8
  %118 = getelementptr inbounds %struct.page, %struct.page* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.bitmap*, %struct.bitmap** %8, align 8
  %120 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bitmap*, %struct.bitmap** %8, align 8
  %123 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %122, i32 0, i32 1
  %124 = call i64 @atomic_read(i32* %123)
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @wait_event(i32 %121, i32 %126)
  %128 = load i32, i32* @BITMAP_WRITE_ERROR, align 4
  %129 = load %struct.bitmap*, %struct.bitmap** %8, align 8
  %130 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %129, i32 0, i32 0
  %131 = call i64 @test_bit(i32 %128, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %115
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %133, %115
  br label %137

137:                                              ; preds = %136, %65, %31
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i64, i64* @PAGE_SIZE, align 8
  %142 = trunc i64 %141 to i32
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @PAGE_SHIFT, align 8
  %145 = shl i64 %143, %144
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %142, i64 %145, i32 %146)
  br label %148

148:                                              ; preds = %140, %137
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local %struct.buffer_head* @alloc_page_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @attach_page_buffers(%struct.page*, %struct.buffer_head*) #1

declare dso_local i64 @bmap(%struct.inode*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
