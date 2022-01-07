; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_res_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_res_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_fifo_state = type { i32*, i32* }

@SVGA_FIFO_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_fifo_state*, i32*, i32, i32, i32, i32)* @vmw_fifo_res_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_fifo_res_copy(%struct.vmw_fifo_state* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vmw_fifo_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.vmw_fifo_state* %0, %struct.vmw_fifo_state** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %7, align 8
  %20 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %7, align 8
  %25 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  br label %31

27:                                               ; preds = %6
  %28 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %7, align 8
  %29 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32* [ %26, %23 ], [ %30, %27 ]
  store i32* %32, i32** %15, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @SVGA_FIFO_RESERVED, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @vmw_mmio_write(i32 %39, i32* %43)
  %45 = call i32 (...) @mb()
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @memcpy(i32* %50, i32* %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %38
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = ashr i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %13, align 4
  %67 = ashr i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @memcpy(i32* %64, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %59, %38
  ret void
}

declare dso_local i32 @vmw_mmio_write(i32, i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
