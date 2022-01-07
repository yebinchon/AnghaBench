; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_emit_lri.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_emit_lri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lri = type { i32, i32 }

@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.lri*, i32)* @emit_lri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @emit_lri(i32* %0, %struct.lri* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lri*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.lri* %1, %struct.lri** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ugt i32 %10, 63
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i1 [ true, %3 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @GEM_BUG_ON(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @MI_LOAD_REGISTER_IMM(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  br label %20

20:                                               ; preds = %32, %12
  %21 = load %struct.lri*, %struct.lri** %5, align 8
  %22 = getelementptr inbounds %struct.lri, %struct.lri* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @i915_mmio_reg_offset(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  %27 = load %struct.lri*, %struct.lri** %5, align 8
  %28 = getelementptr inbounds %struct.lri, %struct.lri* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  br label %32

32:                                               ; preds = %20
  %33 = load %struct.lri*, %struct.lri** %5, align 8
  %34 = getelementptr inbounds %struct.lri, %struct.lri* %33, i32 1
  store %struct.lri* %34, %struct.lri** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %20, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @MI_NOOP, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32*, i32** %4, align 8
  ret i32* %42
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
