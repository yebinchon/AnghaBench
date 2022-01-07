; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_new_ph.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_new_ph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i64, i32 }

@W_L1CMD_RST = common dso_local global i64 0, align 8
@W_L1CMD_DRC = common dso_local global i32 0, align 4
@FLG_PHCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_hw*)* @W6692_new_ph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692_new_ph(%struct.w6692_hw* %0) #0 {
  %2 = alloca %struct.w6692_hw*, align 8
  store %struct.w6692_hw* %0, %struct.w6692_hw** %2, align 8
  %3 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %4 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @W_L1CMD_RST, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %10 = load i32, i32* @W_L1CMD_DRC, align 4
  %11 = call i32 @ph_command(%struct.w6692_hw* %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %14 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %13, i32 0, i32 1
  %15 = load i32, i32* @FLG_PHCHANGE, align 4
  %16 = call i32 @schedule_event(i32* %14, i32 %15)
  ret void
}

declare dso_local i32 @ph_command(%struct.w6692_hw*, i32) #1

declare dso_local i32 @schedule_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
