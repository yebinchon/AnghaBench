; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-core.c_uclogic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-core.c_uclogic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.uclogic_drvdata = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @uclogic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uclogic_remove(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.uclogic_drvdata*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = call %struct.uclogic_drvdata* @hid_get_drvdata(%struct.hid_device* %4)
  store %struct.uclogic_drvdata* %5, %struct.uclogic_drvdata** %3, align 8
  %6 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.uclogic_drvdata, %struct.uclogic_drvdata* %6, i32 0, i32 2
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %10 = call i32 @hid_hw_stop(%struct.hid_device* %9)
  %11 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %3, align 8
  %12 = getelementptr inbounds %struct.uclogic_drvdata, %struct.uclogic_drvdata* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kfree(i32 %13)
  %15 = load %struct.uclogic_drvdata*, %struct.uclogic_drvdata** %3, align 8
  %16 = getelementptr inbounds %struct.uclogic_drvdata, %struct.uclogic_drvdata* %15, i32 0, i32 0
  %17 = call i32 @uclogic_params_cleanup(i32* %16)
  ret void
}

declare dso_local %struct.uclogic_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @uclogic_params_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
