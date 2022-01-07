; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_free_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_free_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*)* @free_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dev(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  %3 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %2, align 8
  %4 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %5 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @disk_devt(i32 %6)
  %8 = call i32 @MINOR(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %10 = call i32 @unlock_fs(%struct.mapped_device* %9)
  %11 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %12 = call i32 @cleanup_mapped_device(%struct.mapped_device* %11)
  %13 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %14 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %13, i32 0, i32 1
  %15 = call i32 @free_table_devices(i32* %14)
  %16 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %17 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %16, i32 0, i32 0
  %18 = call i32 @dm_stats_cleanup(i32* %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @free_minor(i32 %19)
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = call i32 @module_put(i32 %21)
  %23 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %24 = call i32 @kvfree(%struct.mapped_device* %23)
  ret void
}

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @disk_devt(i32) #1

declare dso_local i32 @unlock_fs(%struct.mapped_device*) #1

declare dso_local i32 @cleanup_mapped_device(%struct.mapped_device*) #1

declare dso_local i32 @free_table_devices(i32*) #1

declare dso_local i32 @dm_stats_cleanup(i32*) #1

declare dso_local i32 @free_minor(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kvfree(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
