; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-core.c_cec_devnode_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-core.c_cec_devnode_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cec_devnode = type { i32 }

@cec_devnode_lock = common dso_local global i32 0, align 4
@cec_devnode_nums = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @cec_devnode_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_devnode_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.cec_devnode*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.cec_devnode* @to_cec_devnode(%struct.device* %4)
  store %struct.cec_devnode* %5, %struct.cec_devnode** %3, align 8
  %6 = call i32 @mutex_lock(i32* @cec_devnode_lock)
  %7 = load %struct.cec_devnode*, %struct.cec_devnode** %3, align 8
  %8 = getelementptr inbounds %struct.cec_devnode, %struct.cec_devnode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @cec_devnode_nums, align 4
  %11 = call i32 @clear_bit(i32 %9, i32 %10)
  %12 = call i32 @mutex_unlock(i32* @cec_devnode_lock)
  %13 = load %struct.cec_devnode*, %struct.cec_devnode** %3, align 8
  %14 = call i32 @to_cec_adapter(%struct.cec_devnode* %13)
  %15 = call i32 @cec_delete_adapter(i32 %14)
  ret void
}

declare dso_local %struct.cec_devnode* @to_cec_devnode(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cec_delete_adapter(i32) #1

declare dso_local i32 @to_cec_adapter(%struct.cec_devnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
