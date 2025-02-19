; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen10_init_indirectctx_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_gen10_init_indirectctx_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }

@PIPE_CONTROL_CS_STALL = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i8* null, align 8
@CACHELINE_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.intel_engine_cs*, i32*)* @gen10_init_indirectctx_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gen10_init_indirectctx_bb(%struct.intel_engine_cs* %0, i32* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @PIPE_CONTROL_CS_STALL, align 4
  %8 = call i32* @gen8_emit_pipe_control(i32* %6, i32 %7, i32 0)
  store i32* %8, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %17, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i8*, i8** @MI_NOOP, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %9

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %27, %20
  %22 = load i32*, i32** %4, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = load i64, i64* @CACHELINE_BYTES, align 8
  %25 = urem i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i8*, i8** @MI_NOOP, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  br label %21

32:                                               ; preds = %21
  %33 = load i32*, i32** %4, align 8
  ret i32* %33
}

declare dso_local i32* @gen8_emit_pipe_control(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
