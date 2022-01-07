; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.fb_info* }
%struct.fb_info = type { i32, %struct.vmw_fb_par* }
%struct.vmw_fb_par = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_fb_off(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vmw_fb_par*, align 8
  %6 = alloca i64, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %7 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 0
  %9 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %10 = icmp ne %struct.fb_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %16 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %15, i32 0, i32 0
  %17 = load %struct.fb_info*, %struct.fb_info** %16, align 8
  store %struct.fb_info* %17, %struct.fb_info** %4, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %19, align 8
  store %struct.vmw_fb_par* %20, %struct.vmw_fb_par** %5, align 8
  %21 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %22 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %27 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %30 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = call i32 @flush_delayed_work(i32* %35)
  %37 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %38 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %37, i32 0, i32 0
  %39 = call i32 @flush_delayed_work(i32* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %14, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
