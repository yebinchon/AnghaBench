; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, i32, %struct.vb2_buffer**, i64 }
%struct.vb2_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vm_area_struct = type { i64, i32, i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VB2_MEMORY_MMAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"queue is not currently set up for mmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid vma flags, VM_SHARED needed\0A\00", align 1
@VM_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid vma flags, VM_WRITE needed\0A\00", align 1
@VM_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"invalid vma flags, VM_READ needed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"mmap: file io in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"MMAP invalid, as it would overflow buffer length\0A\00", align 1
@mmap = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"buffer %d, plane %d successfully mapped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_mmap(%struct.vb2_queue* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vb2_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = shl i64 %14, %15
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VB2_MEMORY_MMAP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %141

26:                                               ; preds = %2
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VM_SHARED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %141

37:                                               ; preds = %26
  %38 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %39 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @VM_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %141

53:                                               ; preds = %42
  br label %66

54:                                               ; preds = %37
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VM_READ, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %141

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %53
  %67 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %68 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %67, i32 0, i32 1
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %71 = call i64 @vb2_fileio_is_active(%struct.vb2_queue* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %129

77:                                               ; preds = %66
  %78 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @__find_plane_by_offset(%struct.vb2_queue* %78, i64 %79, i32* %8, i32* %9)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %129

84:                                               ; preds = %77
  %85 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %86 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %85, i32 0, i32 2
  %87 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %87, i64 %89
  %91 = load %struct.vb2_buffer*, %struct.vb2_buffer** %90, align 8
  store %struct.vb2_buffer* %91, %struct.vb2_buffer** %7, align 8
  %92 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %93 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @PAGE_ALIGN(i32 %99)
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %106 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = sub i64 %104, %107
  %109 = icmp ult i64 %101, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %84
  %111 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %10, align 4
  br label %129

114:                                              ; preds = %84
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %116 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %118 = load i32, i32* @mmap, align 4
  %119 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %120 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %128 = call i32 @call_memop(%struct.vb2_buffer* %117, i32 %118, i32 %126, %struct.vm_area_struct* %127)
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %114, %110, %83, %73
  %130 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %131 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %130, i32 0, i32 1
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %3, align 4
  br label %141

137:                                              ; preds = %129
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %138, i32 %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %135, %61, %49, %33, %22
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vb2_fileio_is_active(%struct.vb2_queue*) #1

declare dso_local i32 @__find_plane_by_offset(%struct.vb2_queue*, i64, i32*, i32*) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @call_memop(%struct.vb2_buffer*, i32, i32, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
