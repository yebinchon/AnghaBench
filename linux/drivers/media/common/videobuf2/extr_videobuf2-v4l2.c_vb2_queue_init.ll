; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@V4L2_BUF_FLAG_TIMESTAMP_MASK = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_UNKNOWN = common dso_local global i32 0, align 4
@VB2_MEMORY_MMAP = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@VB2_MEMORY_USERPTR = common dso_local global i32 0, align 4
@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@VB2_MEMORY_DMABUF = common dso_local global i32 0, align 4
@V4L2_MEMORY_DMABUF = common dso_local global i64 0, align 8
@v4l2_buf_ops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_COPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_queue_init(%struct.vb2_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_queue*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %5 = icmp ne %struct.vb2_queue* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MASK, align 4
  %15 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %10, %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %97

24:                                               ; preds = %10
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %26 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_UNKNOWN, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = load i32, i32* @VB2_MEMORY_MMAP, align 4
  %35 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp ne i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %24
  %42 = load i32, i32* @VB2_MEMORY_USERPTR, align 4
  %43 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %44 = trunc i64 %43 to i32
  %45 = icmp ne i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @VB2_MEMORY_DMABUF, align 4
  %51 = load i64, i64* @V4L2_MEMORY_DMABUF, align 8
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49, %41, %24
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %97

60:                                               ; preds = %49
  %61 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %62 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %67 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %66, i32 0, i32 1
  store i32 4, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %70 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %69, i32 0, i32 7
  store i32* @v4l2_buf_ops, i32** %70, align 8
  %71 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %72 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @V4L2_TYPE_IS_MULTIPLANAR(i32 %73)
  %75 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %76 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %78 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @V4L2_TYPE_IS_OUTPUT(i32 %79)
  %81 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %82 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %84 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_COPY, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %92 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %94 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %93, i32 0, i32 3
  store i32 1, i32* %94, align 4
  %95 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %96 = call i32 @vb2_core_queue_init(%struct.vb2_queue* %95)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %68, %57, %21
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @V4L2_TYPE_IS_MULTIPLANAR(i32) #1

declare dso_local i32 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @vb2_core_queue_init(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
