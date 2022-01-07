; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-memops.c_vb2_create_framevec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-memops.c_vb2_create_framevec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_vector = type { i32 }

@FOLL_FORCE = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_vector* @vb2_create_framevec(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.frame_vector*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.frame_vector*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @FOLL_FORCE, align 4
  %13 = load i32, i32* @FOLL_WRITE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %18, %19
  %21 = sub i64 %20, 1
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 %24, %25
  %27 = add i64 %26, 1
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call %struct.frame_vector* @frame_vector_create(i64 %28)
  store %struct.frame_vector* %29, %struct.frame_vector** %10, align 8
  %30 = load %struct.frame_vector*, %struct.frame_vector** %10, align 8
  %31 = icmp ne %struct.frame_vector* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.frame_vector* @ERR_PTR(i32 %34)
  store %struct.frame_vector* %35, %struct.frame_vector** %3, align 8
  br label %65

36:                                               ; preds = %2
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @PAGE_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.frame_vector*, %struct.frame_vector** %10, align 8
  %43 = call i32 @get_vaddr_frames(i64 %39, i64 %40, i32 %41, %struct.frame_vector* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %60

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load %struct.frame_vector*, %struct.frame_vector** %10, align 8
  store %struct.frame_vector* %56, %struct.frame_vector** %3, align 8
  br label %65

57:                                               ; preds = %52
  %58 = load %struct.frame_vector*, %struct.frame_vector** %10, align 8
  %59 = call i32 @put_vaddr_frames(%struct.frame_vector* %58)
  br label %60

60:                                               ; preds = %57, %46
  %61 = load %struct.frame_vector*, %struct.frame_vector** %10, align 8
  %62 = call i32 @frame_vector_destroy(%struct.frame_vector* %61)
  %63 = load i32, i32* %6, align 4
  %64 = call %struct.frame_vector* @ERR_PTR(i32 %63)
  store %struct.frame_vector* %64, %struct.frame_vector** %3, align 8
  br label %65

65:                                               ; preds = %60, %55, %32
  %66 = load %struct.frame_vector*, %struct.frame_vector** %3, align 8
  ret %struct.frame_vector* %66
}

declare dso_local %struct.frame_vector* @frame_vector_create(i64) #1

declare dso_local %struct.frame_vector* @ERR_PTR(i32) #1

declare dso_local i32 @get_vaddr_frames(i64, i64, i32, %struct.frame_vector*) #1

declare dso_local i32 @put_vaddr_frames(%struct.frame_vector*) #1

declare dso_local i32 @frame_vector_destroy(%struct.frame_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
