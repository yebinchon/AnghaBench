; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_main.c_usnic_ib_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_main.c_usnic_ib_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_dev = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Unregistering %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usnic_ib_dev*)* @usnic_ib_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usnic_ib_device_remove(%struct.usnic_ib_dev* %0) #0 {
  %2 = alloca %struct.usnic_ib_dev*, align 8
  store %struct.usnic_ib_dev* %0, %struct.usnic_ib_dev** %2, align 8
  %3 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %2, align 8
  %4 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i32 @dev_name(i32* %5)
  %7 = call i32 @usnic_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %2, align 8
  %9 = call i32 @usnic_ib_sysfs_unregister_usdev(%struct.usnic_ib_dev* %8)
  %10 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %2, align 8
  %11 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usnic_fwd_dev_free(i32 %12)
  %14 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %2, align 8
  %15 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %14, i32 0, i32 0
  %16 = call i32 @ib_unregister_device(%struct.TYPE_3__* %15)
  %17 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %2, align 8
  %18 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %17, i32 0, i32 0
  %19 = call i32 @ib_dealloc_device(%struct.TYPE_3__* %18)
  ret void
}

declare dso_local i32 @usnic_info(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @usnic_ib_sysfs_unregister_usdev(%struct.usnic_ib_dev*) #1

declare dso_local i32 @usnic_fwd_dev_free(i32) #1

declare dso_local i32 @ib_unregister_device(%struct.TYPE_3__*) #1

declare dso_local i32 @ib_dealloc_device(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
