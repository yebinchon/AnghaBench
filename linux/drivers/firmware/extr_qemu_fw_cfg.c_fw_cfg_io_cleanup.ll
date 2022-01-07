; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_io_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_io_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fw_cfg_is_mmio = common dso_local global i64 0, align 8
@fw_cfg_dev_base = common dso_local global i32 0, align 4
@fw_cfg_p_base = common dso_local global i32 0, align 4
@fw_cfg_p_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fw_cfg_io_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_cfg_io_cleanup() #0 {
  %1 = load i64, i64* @fw_cfg_is_mmio, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, i32* @fw_cfg_dev_base, align 4
  %5 = call i32 @iounmap(i32 %4)
  %6 = load i32, i32* @fw_cfg_p_base, align 4
  %7 = load i32, i32* @fw_cfg_p_size, align 4
  %8 = call i32 @release_mem_region(i32 %6, i32 %7)
  br label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @fw_cfg_dev_base, align 4
  %11 = call i32 @ioport_unmap(i32 %10)
  %12 = load i32, i32* @fw_cfg_p_base, align 4
  %13 = load i32, i32* @fw_cfg_p_size, align 4
  %14 = call i32 @release_region(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %9, %3
  ret void
}

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @ioport_unmap(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
