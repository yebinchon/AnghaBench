; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_reserve_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_reserve_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@screen_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EFI_BOOT = common dso_local global i32 0, align 4
@__u32 = common dso_local global i32 0, align 4
@fb_mmio = common dso_local global i64 0, align 8
@hyperv_mmio = common dso_local global i32 0, align 4
@fb_mmio_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vmbus_reserve_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_reserve_fb() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @screen_info, i32 0, i32 0), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %35

4:                                                ; preds = %0
  %5 = load i32, i32* @EFI_BOOT, align 4
  %6 = call i64 @efi_enabled(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i32, i32* @__u32, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @screen_info, i32 0, i32 1), align 8
  %11 = call i32 @max_t(i32 %9, i32 %10, i32 8388608)
  store i32 %11, i32* %1, align 4
  br label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @__u32, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @screen_info, i32 0, i32 1), align 8
  %15 = call i32 @max_t(i32 %13, i32 %14, i32 67108864)
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %12, %8
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i64, i64* @fb_mmio, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = icmp sge i32 %21, 1048576
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %34

25:                                               ; preds = %23
  %26 = load i32, i32* @hyperv_mmio, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @screen_info, i32 0, i32 0), align 8
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @fb_mmio_name, align 4
  %30 = call i64 @__request_region(i32 %26, i64 %27, i32 %28, i32 %29, i32 0)
  store i64 %30, i64* @fb_mmio, align 8
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %1, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %17

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %0
  ret void
}

declare dso_local i64 @efi_enabled(i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i64 @__request_region(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
