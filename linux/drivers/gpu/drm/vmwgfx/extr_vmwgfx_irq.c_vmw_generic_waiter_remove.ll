; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_generic_waiter_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_generic_waiter_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32 }

@SVGA_REG_IRQMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_generic_waiter_remove(%struct.vmw_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %18 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %22 = load i32, i32* @SVGA_REG_IRQMASK, align 4
  %23 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %24 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vmw_write(%struct.vmw_private* %21, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %14, %3
  %28 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %29 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @vmw_write(%struct.vmw_private*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
