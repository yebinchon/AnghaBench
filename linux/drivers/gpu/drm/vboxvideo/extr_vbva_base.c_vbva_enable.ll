; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbva_buf_ctx = type { %struct.vbva_buffer*, i64 }
%struct.gen_pool = type { i32 }
%struct.vbva_buffer = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbva_enable(%struct.vbva_buf_ctx* %0, %struct.gen_pool* %1, %struct.vbva_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.vbva_buf_ctx*, align 8
  %6 = alloca %struct.gen_pool*, align 8
  %7 = alloca %struct.vbva_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vbva_buf_ctx* %0, %struct.vbva_buf_ctx** %5, align 8
  store %struct.gen_pool* %1, %struct.gen_pool** %6, align 8
  store %struct.vbva_buffer* %2, %struct.vbva_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.vbva_buffer*, %struct.vbva_buffer** %7, align 8
  %11 = call i32 @memset(%struct.vbva_buffer* %10, i32 0, i32 16)
  %12 = load %struct.vbva_buffer*, %struct.vbva_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %12, i32 0, i32 0
  store i32 256, i32* %13, align 8
  %14 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %16, 16
  %18 = load %struct.vbva_buffer*, %struct.vbva_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.vbva_buffer, %struct.vbva_buffer* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.vbva_buffer*, %struct.vbva_buffer** %7, align 8
  %21 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %21, i32 0, i32 0
  store %struct.vbva_buffer* %20, %struct.vbva_buffer** %22, align 8
  %23 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %5, align 8
  %24 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @vbva_inform_host(%struct.vbva_buf_ctx* %23, %struct.gen_pool* %24, i32 %25, i32 1)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %4
  %30 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %5, align 8
  %31 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @vbva_disable(%struct.vbva_buf_ctx* %30, %struct.gen_pool* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %4
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.vbva_buffer*, i32, i32) #1

declare dso_local i32 @vbva_inform_host(%struct.vbva_buf_ctx*, %struct.gen_pool*, i32, i32) #1

declare dso_local i32 @vbva_disable(%struct.vbva_buf_ctx*, %struct.gen_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
