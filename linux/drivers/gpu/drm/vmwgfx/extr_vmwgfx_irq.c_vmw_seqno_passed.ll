; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_seqno_passed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_seqno_passed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64, i32, %struct.vmw_fifo_state }
%struct.vmw_fifo_state = type { i32 }

@VMW_FENCE_WRAP = common dso_local global i64 0, align 8
@SVGA_FIFO_CAP_FENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_seqno_passed(%struct.vmw_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmw_fifo_state*, align 8
  %7 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %9 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = sub nsw i64 %10, %11
  %13 = load i64, i64* @VMW_FENCE_WRAP, align 8
  %14 = icmp slt i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %21 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %20, i32 0, i32 2
  store %struct.vmw_fifo_state* %21, %struct.vmw_fifo_state** %6, align 8
  %22 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %23 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %6, align 8
  %24 = call i32 @vmw_update_seqno(%struct.vmw_private* %22, %struct.vmw_fifo_state* %23)
  %25 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %26 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i64, i64* @VMW_FENCE_WRAP, align 8
  %31 = icmp slt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %59

36:                                               ; preds = %19
  %37 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %6, align 8
  %38 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SVGA_FIFO_CAP_FENCE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @vmw_fifo_idle(%struct.vmw_private* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %59

49:                                               ; preds = %43, %36
  %50 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %51 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %50, i32 0, i32 1
  %52 = call i64 @atomic_read(i32* %51)
  %53 = load i64, i64* %5, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64, i64* @VMW_FENCE_WRAP, align 8
  %56 = icmp sgt i64 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %49, %48, %35, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vmw_update_seqno(%struct.vmw_private*, %struct.vmw_fifo_state*) #1

declare dso_local i64 @vmw_fifo_idle(%struct.vmw_private*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
