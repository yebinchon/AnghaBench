; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_rfd77402.c_rfd77402_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_rfd77402.c_rfd77402_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfd77402_data = type { i32 }

@RFD77402_CMD_STANDBY = common dso_local global i32 0, align 4
@RFD77402_STATUS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfd77402_data*)* @rfd77402_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfd77402_powerdown(%struct.rfd77402_data* %0) #0 {
  %2 = alloca %struct.rfd77402_data*, align 8
  store %struct.rfd77402_data* %0, %struct.rfd77402_data** %2, align 8
  %3 = load %struct.rfd77402_data*, %struct.rfd77402_data** %2, align 8
  %4 = load i32, i32* @RFD77402_CMD_STANDBY, align 4
  %5 = load i32, i32* @RFD77402_STATUS_STANDBY, align 4
  %6 = call i32 @rfd77402_set_state(%struct.rfd77402_data* %3, i32 %4, i32 %5)
  ret i32 %6
}

declare dso_local i32 @rfd77402_set_state(%struct.rfd77402_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
