; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_do_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_do_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_run = type { i32, i32, i32, %struct.ipu_image_convert_ctx* }
%struct.ipu_image_convert_ctx = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.ipu_image_convert_chan* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ipu_image_convert_chan = type { %struct.ipu_image_convert_run*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_image_convert_run*)* @do_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_run(%struct.ipu_image_convert_run* %0) #0 {
  %2 = alloca %struct.ipu_image_convert_run*, align 8
  %3 = alloca %struct.ipu_image_convert_ctx*, align 8
  %4 = alloca %struct.ipu_image_convert_chan*, align 8
  store %struct.ipu_image_convert_run* %0, %struct.ipu_image_convert_run** %2, align 8
  %5 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %2, align 8
  %6 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %5, i32 0, i32 3
  %7 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %6, align 8
  store %struct.ipu_image_convert_ctx* %7, %struct.ipu_image_convert_ctx** %3, align 8
  %8 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %8, i32 0, i32 4
  %10 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %9, align 8
  store %struct.ipu_image_convert_chan* %10, %struct.ipu_image_convert_chan** %4, align 8
  %11 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %4, align 8
  %12 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %11, i32 0, i32 1
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %2, align 8
  %15 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %2, align 8
  %22 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %2, align 8
  %33 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %32, i32 0, i32 0
  %34 = call i32 @list_del(i32* %33)
  %35 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %2, align 8
  %36 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %4, align 8
  %37 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %36, i32 0, i32 0
  store %struct.ipu_image_convert_run* %35, %struct.ipu_image_convert_run** %37, align 8
  %38 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %2, align 8
  %39 = call i32 @convert_start(%struct.ipu_image_convert_run* %38, i32 0)
  ret i32 %39
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @convert_start(%struct.ipu_image_convert_run*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
