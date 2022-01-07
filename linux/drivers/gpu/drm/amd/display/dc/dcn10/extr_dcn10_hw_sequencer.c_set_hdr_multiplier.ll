; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_set_hdr_multiplier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_set_hdr_multiplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.fixed31_32 = type { i32 }
%struct.custom_float_format = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_hdr_multiplier(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.fixed31_32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.custom_float_format, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dc_fixpt_from_fraction(i32 %10, i32 80)
  %12 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  store i32 126976, i32* %4, align 4
  %13 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %5, i32 0, i32 0
  store i32 6, i32* %13, align 4
  %14 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %5, i32 0, i32 1
  store i32 12, i32* %14, align 4
  %15 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %5, i32 0, i32 2
  store i32 1, i32* %15, align 4
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 80
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @convert_to_custom_float_format(i32 %24, %struct.custom_float_format* %5, i32* %4)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %33, align 8
  %35 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 %34(%struct.TYPE_8__* %38, i32 %39)
  ret void
}

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i32 @convert_to_custom_float_format(i32, %struct.custom_float_format*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
