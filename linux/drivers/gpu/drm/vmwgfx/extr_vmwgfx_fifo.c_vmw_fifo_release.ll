; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, i32, i32, i32* }
%struct.vmw_fifo_state = type { i32*, i32*, i32 }

@SVGA_REG_SYNC = common dso_local global i32 0, align 4
@SVGA_SYNC_GENERIC = common dso_local global i32 0, align 4
@SVGA_REG_BUSY = common dso_local global i32 0, align 4
@SVGA_FIFO_FENCE = common dso_local global i32 0, align 4
@SVGA_REG_CONFIG_DONE = common dso_local global i32 0, align 4
@SVGA_REG_ENABLE = common dso_local global i32 0, align 4
@SVGA_REG_TRACES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_fifo_release(%struct.vmw_private* %0, %struct.vmw_fifo_state* %1) #0 {
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.vmw_fifo_state*, align 8
  %5 = alloca i32*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  store %struct.vmw_fifo_state* %1, %struct.vmw_fifo_state** %4, align 8
  %6 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %10 = load i32, i32* @SVGA_REG_SYNC, align 4
  %11 = load i32, i32* @SVGA_SYNC_GENERIC, align 4
  %12 = call i32 @vmw_write(%struct.vmw_private* %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %18, %2
  %14 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %15 = load i32, i32* @SVGA_REG_BUSY, align 4
  %16 = call i64 @vmw_read(%struct.vmw_private* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %13

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @SVGA_FIFO_FENCE, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @vmw_mmio_read(i32* %23)
  %25 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %26 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %28 = load i32, i32* @SVGA_REG_CONFIG_DONE, align 4
  %29 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %30 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @vmw_write(%struct.vmw_private* %27, i32 %28, i32 %31)
  %33 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %34 = load i32, i32* @SVGA_REG_ENABLE, align 4
  %35 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %36 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vmw_write(%struct.vmw_private* %33, i32 %34, i32 %37)
  %39 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %40 = load i32, i32* @SVGA_REG_TRACES, align 4
  %41 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %42 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vmw_write(%struct.vmw_private* %39, i32 %40, i32 %43)
  %45 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %4, align 8
  %46 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %45, i32 0, i32 2
  %47 = call i32 @vmw_marker_queue_takedown(i32* %46)
  %48 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %4, align 8
  %49 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %19
  %56 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %4, align 8
  %57 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @vfree(i32* %58)
  %60 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %4, align 8
  %61 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %55, %19
  %63 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %4, align 8
  %64 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %4, align 8
  %72 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @vfree(i32* %73)
  %75 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %4, align 8
  %76 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %70, %62
  ret void
}

declare dso_local i32 @vmw_write(%struct.vmw_private*, i32, i32) #1

declare dso_local i64 @vmw_read(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_mmio_read(i32*) #1

declare dso_local i32 @vmw_marker_queue_takedown(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
