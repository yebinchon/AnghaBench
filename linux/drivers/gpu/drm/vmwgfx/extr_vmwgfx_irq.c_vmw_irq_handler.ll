; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vmw_private = type { i32, i32, i64, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@VMWGFX_IRQSTATUS_PORT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@SVGA_IRQFLAG_FIFO_PROGRESS = common dso_local global i32 0, align 4
@SVGA_IRQFLAG_ANY_FENCE = common dso_local global i32 0, align 4
@SVGA_IRQFLAG_FENCE_GOAL = common dso_local global i32 0, align 4
@VMW_IRQTHREAD_FENCE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@SVGA_IRQFLAG_COMMAND_BUFFER = common dso_local global i32 0, align 4
@SVGA_IRQFLAG_ERROR = common dso_local global i32 0, align 4
@VMW_IRQTHREAD_CMDBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vmw_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.drm_device*
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %13)
  store %struct.vmw_private* %14, %struct.vmw_private** %7, align 8
  %15 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %17 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VMWGFX_IRQSTATUS_PORT, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @inl(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %24 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @READ_ONCE(i32 %25)
  %27 = and i32 %22, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %34 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VMWGFX_IRQSTATUS_PORT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outl(i32 %32, i64 %37)
  br label %39

39:                                               ; preds = %31, %2
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @IRQ_NONE, align 4
  store i32 %43, i32* %3, align 4
  br label %87

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SVGA_IRQFLAG_FIFO_PROGRESS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %51 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %50, i32 0, i32 1
  %52 = call i32 @wake_up_all(i32* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @SVGA_IRQFLAG_ANY_FENCE, align 4
  %56 = load i32, i32* @SVGA_IRQFLAG_FENCE_GOAL, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i32, i32* @VMW_IRQTHREAD_FENCE, align 4
  %62 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %63 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @test_and_set_bit(i32 %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %67, %60, %53
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @SVGA_IRQFLAG_COMMAND_BUFFER, align 4
  %72 = load i32, i32* @SVGA_IRQFLAG_ERROR, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load i32, i32* @VMW_IRQTHREAD_CMDBUF, align 4
  %78 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %79 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @test_and_set_bit(i32 %77, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %83, %76, %69
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %42
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
