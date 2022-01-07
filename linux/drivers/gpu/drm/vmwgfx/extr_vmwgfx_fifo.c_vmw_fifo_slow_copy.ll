; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_slow_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_slow_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_fifo_state = type { i64*, i64* }

@SVGA_FIFO_NEXT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_fifo_state*, i32*, i64, i64, i64, i64)* @vmw_fifo_slow_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_fifo_slow_copy(%struct.vmw_fifo_state* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.vmw_fifo_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.vmw_fifo_state* %0, %struct.vmw_fifo_state** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %7, align 8
  %15 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %7, align 8
  %20 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  br label %26

22:                                               ; preds = %6
  %23 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %7, align 8
  %24 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i64* [ %21, %18 ], [ %25, %22 ]
  store i64* %27, i64** %13, align 8
  br label %28

28:                                               ; preds = %50, %26
  %29 = load i64, i64* %12, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = load i64*, i64** %13, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %13, align 8
  %34 = load i64, i64* %32, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = ashr i64 %36, 2
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @vmw_mmio_write(i64 %34, i32* %38)
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 8
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %48, %31
  %51 = call i32 (...) @mb()
  %52 = load i64, i64* %9, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @SVGA_FIFO_NEXT_CMD, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @vmw_mmio_write(i64 %52, i32* %56)
  %58 = call i32 (...) @mb()
  %59 = load i64, i64* %12, align 8
  %60 = sub i64 %59, 8
  store i64 %60, i64* %12, align 8
  br label %28

61:                                               ; preds = %28
  ret void
}

declare dso_local i32 @vmw_mmio_write(i64, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
