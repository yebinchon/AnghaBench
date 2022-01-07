; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_setup_vupdate_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_setup_vupdate_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.timing_generator* }
%struct.timing_generator = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.timing_generator*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_setup_vupdate_interrupt(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %5 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.timing_generator*, %struct.timing_generator** %7, align 8
  store %struct.timing_generator* %8, %struct.timing_generator** %3, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %10 = call i32 @get_vupdate_offset_from_vsync(%struct.pipe_ctx* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %16 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.timing_generator*, i32)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %23 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.timing_generator*, i32)*, i32 (%struct.timing_generator*, i32)** %25, align 8
  %27 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 %26(%struct.timing_generator* %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %14
  ret void
}

declare dso_local i32 @get_vupdate_offset_from_vsync(%struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
