; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vmw_private = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@VMW_IRQTHREAD_FENCE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@VMW_IRQTHREAD_CMDBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vmw_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.drm_device*
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %10)
  store %struct.vmw_private* %11, %struct.vmw_private** %6, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @VMW_IRQTHREAD_FENCE, align 4
  %14 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @test_and_clear_bit(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %21 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vmw_fences_update(i32 %22)
  %24 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %25 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %24, i32 0, i32 2
  %26 = call i32 @wake_up_all(i32* %25)
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %19, %2
  %29 = load i32, i32* @VMW_IRQTHREAD_CMDBUF, align 4
  %30 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %31 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @test_and_clear_bit(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %37 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @vmw_cmdbuf_irqthread(i32 %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %28
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @vmw_fences_update(i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @vmw_cmdbuf_irqthread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
