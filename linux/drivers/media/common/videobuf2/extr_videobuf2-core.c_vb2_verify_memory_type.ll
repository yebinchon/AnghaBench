; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_verify_memory_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_verify_memory_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }

@VB2_MEMORY_MMAP = common dso_local global i32 0, align 4
@VB2_MEMORY_USERPTR = common dso_local global i32 0, align 4
@VB2_MEMORY_DMABUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unsupported memory type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"requested type is incorrect\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"MMAP for current setup unsupported\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"USERPTR for current setup unsupported\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"DMABUF for current setup unsupported\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"file io in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_verify_memory_type(%struct.vb2_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @VB2_MEMORY_MMAP, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @VB2_MEMORY_USERPTR, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @VB2_MEMORY_DMABUF, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %78

23:                                               ; preds = %15, %11, %3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %26 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %78

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @VB2_MEMORY_MMAP, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %39 = call i64 @__verify_mmap_ops(%struct.vb2_queue* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %78

45:                                               ; preds = %37, %33
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @VB2_MEMORY_USERPTR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %51 = call i64 @__verify_userptr_ops(%struct.vb2_queue* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %78

57:                                               ; preds = %49, %45
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @VB2_MEMORY_DMABUF, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %63 = call i64 @__verify_dmabuf_ops(%struct.vb2_queue* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %78

69:                                               ; preds = %61, %57
  %70 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %71 = call i64 @vb2_fileio_is_active(%struct.vb2_queue* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %73, %65, %53, %41, %29, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i64 @__verify_mmap_ops(%struct.vb2_queue*) #1

declare dso_local i64 @__verify_userptr_ops(%struct.vb2_queue*) #1

declare dso_local i64 @__verify_dmabuf_ops(%struct.vb2_queue*) #1

declare dso_local i64 @vb2_fileio_is_active(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
