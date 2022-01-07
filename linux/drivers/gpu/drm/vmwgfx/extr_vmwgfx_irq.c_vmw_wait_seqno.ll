; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_wait_seqno.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_wait_seqno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64, i32, i32, %struct.vmw_fifo_state }
%struct.vmw_fifo_state = type { i32 }

@VMW_FENCE_WRAP = common dso_local global i64 0, align 8
@SVGA_SYNC_GENERIC = common dso_local global i32 0, align 4
@SVGA_FIFO_CAP_FENCE = common dso_local global i32 0, align 4
@SVGA_CAP_IRQMASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_wait_seqno(%struct.vmw_private* %0, i32 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vmw_fifo_state*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 3
  store %struct.vmw_fifo_state* %15, %struct.vmw_fifo_state** %13, align 8
  %16 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %17 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load i64, i64* @VMW_FENCE_WRAP, align 8
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %110

27:                                               ; preds = %5
  %28 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @vmw_seqno_passed(%struct.vmw_private* %28, i64 %29)
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %110

34:                                               ; preds = %27
  %35 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %36 = load i32, i32* @SVGA_SYNC_GENERIC, align 4
  %37 = call i32 @vmw_fifo_ping_host(%struct.vmw_private* %35, i32 %36)
  %38 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %13, align 8
  %39 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SVGA_FIFO_CAP_FENCE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %34
  %45 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @vmw_fallback_wait(%struct.vmw_private* %45, i32 %46, i32 1, i64 %47, i32 %48, i64 %49)
  store i32 %50, i32* %6, align 4
  br label %110

51:                                               ; preds = %34
  %52 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %53 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SVGA_CAP_IRQMASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @vmw_fallback_wait(%struct.vmw_private* %59, i32 %60, i32 0, i64 %61, i32 %62, i64 %63)
  store i32 %64, i32* %6, align 4
  br label %110

65:                                               ; preds = %51
  %66 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %67 = call i32 @vmw_seqno_waiter_add(%struct.vmw_private* %66)
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %72 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @vmw_seqno_passed(%struct.vmw_private* %74, i64 %75)
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @wait_event_interruptible_timeout(i32 %73, i32 %76, i64 %77)
  store i64 %78, i64* %12, align 8
  br label %88

79:                                               ; preds = %65
  %80 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %81 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @vmw_seqno_passed(%struct.vmw_private* %83, i64 %84)
  %86 = load i64, i64* %11, align 8
  %87 = call i64 @wait_event_timeout(i32 %82, i32 %85, i64 %86)
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %79, %70
  %89 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %90 = call i32 @vmw_seqno_waiter_remove(%struct.vmw_private* %89)
  %91 = load i64, i64* %12, align 8
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i64, i64* @EBUSY, align 8
  %98 = sub nsw i64 0, %97
  store i64 %98, i64* %12, align 8
  br label %107

99:                                               ; preds = %88
  %100 = load i64, i64* %12, align 8
  %101 = icmp sgt i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i64 @likely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i64 0, i64* %12, align 8
  br label %106

106:                                              ; preds = %105, %99
  br label %107

107:                                              ; preds = %106, %96
  %108 = load i64, i64* %12, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %58, %44, %33, %26
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vmw_seqno_passed(%struct.vmw_private*, i64) #1

declare dso_local i32 @vmw_fifo_ping_host(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_fallback_wait(%struct.vmw_private*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @vmw_seqno_waiter_add(%struct.vmw_private*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @vmw_seqno_waiter_remove(%struct.vmw_private*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
