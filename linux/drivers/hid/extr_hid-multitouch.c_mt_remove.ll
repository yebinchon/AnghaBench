; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt_device = type { i32 }

@mt_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @mt_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt_remove(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.mt_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = call %struct.mt_device* @hid_get_drvdata(%struct.hid_device* %4)
  store %struct.mt_device* %5, %struct.mt_device** %3, align 8
  %6 = load %struct.mt_device*, %struct.mt_device** %3, align 8
  %7 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %6, i32 0, i32 0
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %10 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @sysfs_remove_group(i32* %11, i32* @mt_attribute_group)
  %13 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %14 = call i32 @hid_hw_stop(%struct.hid_device* %13)
  ret void
}

declare dso_local %struct.mt_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
