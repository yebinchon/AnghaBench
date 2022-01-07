; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_buffer_place_data_at.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_buffer_place_data_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbva_buf_ctx = type { %struct.vbva_buffer* }
%struct.vbva_buffer = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vbva_buf_ctx*, i8*, i64, i64)* @vbva_buffer_place_data_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbva_buffer_place_data_at(%struct.vbva_buf_ctx* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vbva_buf_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vbva_buffer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.vbva_buf_ctx* %0, %struct.vbva_buf_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %13, i32 0, i32 0
  %15 = load %struct.vbva_buffer*, %struct.vbva_buffer** %14, align 8
  store %struct.vbva_buffer* %15, %struct.vbva_buffer** %9, align 8
  %16 = load %struct.vbva_buffer*, %struct.vbva_buffer** %9, align 8
  %17 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* %10, align 8
  %21 = load %struct.vbva_buffer*, %struct.vbva_buffer** %9, align 8
  %22 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %11, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy(i8* %32, i8* %33, i64 %34)
  br label %50

36:                                               ; preds = %4
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load %struct.vbva_buffer*, %struct.vbva_buffer** %9, align 8
  %42 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr i8, i8* %45, i64 %46
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @memcpy(i8* %44, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
