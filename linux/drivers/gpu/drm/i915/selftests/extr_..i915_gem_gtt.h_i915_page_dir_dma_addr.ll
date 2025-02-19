; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..i915_gem_gtt.h_i915_page_dir_dma_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..i915_gem_gtt.h_i915_page_dir_dma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ppgtt = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_3__ = type { %struct.i915_page_dma** }
%struct.i915_page_dma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_ppgtt*, i32)* @i915_page_dir_dma_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_page_dir_dma_addr(%struct.i915_ppgtt* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_ppgtt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_page_dma*, align 8
  store %struct.i915_ppgtt* %0, %struct.i915_ppgtt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %7 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.i915_page_dma**, %struct.i915_page_dma*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.i915_page_dma*, %struct.i915_page_dma** %10, i64 %12
  %14 = load %struct.i915_page_dma*, %struct.i915_page_dma** %13, align 8
  store %struct.i915_page_dma* %14, %struct.i915_page_dma** %5, align 8
  %15 = load %struct.i915_page_dma*, %struct.i915_page_dma** %5, align 8
  %16 = icmp ne %struct.i915_page_dma* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %20 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %24 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = call i32 @px_base(i32* %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to %struct.i915_page_dma*
  br label %31

31:                                               ; preds = %18, %17
  %32 = phi %struct.i915_page_dma* [ %15, %17 ], [ %30, %18 ]
  %33 = ptrtoint %struct.i915_page_dma* %32 to i32
  %34 = call i32 @px_dma(i32 %33)
  ret i32 %34
}

declare dso_local i32 @px_dma(i32) #1

declare dso_local i32 @px_base(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
