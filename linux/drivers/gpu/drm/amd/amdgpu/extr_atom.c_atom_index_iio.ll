; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_index_iio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_index_iio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ATOM_IIO_START = common dso_local global i64 0, align 8
@ATOM_IIO_END = common dso_local global i64 0, align 8
@atom_iio_len = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atom_context*, i32)* @atom_index_iio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atom_index_iio(%struct.atom_context* %0, i32 %1) #0 {
  %3 = alloca %struct.atom_context*, align 8
  %4 = alloca i32, align 4
  store %struct.atom_context* %0, %struct.atom_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32* @kzalloc(i32 512, i32 %5)
  %7 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %8 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %7, i32 0, i32 0
  store i32* %6, i32** %8, align 8
  %9 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %10 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %50

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %47, %14
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @CU8(i32 %16)
  %18 = load i64, i64* @ATOM_IIO_START, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 2
  %23 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %24 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i64 @CU8(i32 %27)
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %22, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %37, %20
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @CU8(i32 %33)
  %35 = load i64, i64* @ATOM_IIO_END, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i64*, i64** @atom_iio_len, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @CU8(i32 %39)
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 3
  store i32 %49, i32* %4, align 4
  br label %15

50:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @CU8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
