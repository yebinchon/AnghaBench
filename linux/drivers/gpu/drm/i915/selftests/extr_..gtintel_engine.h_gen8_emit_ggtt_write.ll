; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..gtintel_engine.h_gen8_emit_ggtt_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..gtintel_engine.h_gen8_emit_ggtt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MI_FLUSH_DW = common dso_local global i32 0, align 4
@MI_FLUSH_DW_OP_STOREDW = common dso_local global i32 0, align 4
@MI_FLUSH_DW_USE_GTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32)* @gen8_emit_ggtt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gen8_emit_ggtt_write(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = and i32 %9, 32
  %11 = call i32 @GEM_BUG_ON(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @IS_ALIGNED(i32 %12, i32 8)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @GEM_BUG_ON(i32 %16)
  %18 = load i32, i32* @MI_FLUSH_DW, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @MI_FLUSH_DW_OP_STOREDW, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MI_FLUSH_DW_USE_GTT, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  store i32 0, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  ret i32* %36
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
