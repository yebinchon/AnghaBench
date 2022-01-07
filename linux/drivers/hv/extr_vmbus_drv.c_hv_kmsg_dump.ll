; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_hv_kmsg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_hv_kmsg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmsg_dumper = type { i32 }

@KMSG_DUMP_PANIC = common dso_local global i32 0, align 4
@sysctl_record_panic_msg = common dso_local global i32 0, align 4
@hv_panic_page = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmsg_dumper*, i32)* @hv_kmsg_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_kmsg_dump(%struct.kmsg_dumper* %0, i32 %1) #0 {
  %3 = alloca %struct.kmsg_dumper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kmsg_dumper* %0, %struct.kmsg_dumper** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @KMSG_DUMP_PANIC, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @sysctl_record_panic_msg, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  br label %27

14:                                               ; preds = %10
  %15 = load i32, i32* @hv_panic_page, align 4
  %16 = call i32 @virt_to_phys(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.kmsg_dumper*, %struct.kmsg_dumper** %3, align 8
  %18 = load i32, i32* @hv_panic_page, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i32 @kmsg_dump_get_buffer(%struct.kmsg_dumper* %17, i32 1, i32 %18, i32 %19, i64* %5)
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @hyperv_report_panic_msg(i32 %24, i64 %25)
  br label %27

27:                                               ; preds = %13, %23, %14
  ret void
}

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @kmsg_dump_get_buffer(%struct.kmsg_dumper*, i32, i32, i32, i64*) #1

declare dso_local i32 @hyperv_report_panic_msg(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
