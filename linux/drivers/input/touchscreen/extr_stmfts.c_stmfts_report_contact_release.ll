; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_report_contact_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_report_contact_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmfts_data = type { i32 }

@STMFTS_MASK_TOUCH_ID = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmfts_data*, i32*)* @stmfts_report_contact_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmfts_report_contact_release(%struct.stmfts_data* %0, i32* %1) #0 {
  %3 = alloca %struct.stmfts_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.stmfts_data* %0, %struct.stmfts_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @STMFTS_MASK_TOUCH_ID, align 4
  %10 = and i32 %8, %9
  %11 = ashr i32 %10, 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %13 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @input_mt_slot(i32 %14, i32 %15)
  %17 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %18 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MT_TOOL_FINGER, align 4
  %21 = call i32 @input_mt_report_slot_state(i32 %19, i32 %20, i32 0)
  %22 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %23 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @input_sync(i32 %24)
  ret void
}

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
