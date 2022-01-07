; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenkbd_info = type { i32 }
%union.xenkbd_in_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenkbd_info*, %union.xenkbd_in_event*)* @xenkbd_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenkbd_handle_event(%struct.xenkbd_info* %0, %union.xenkbd_in_event* %1) #0 {
  %3 = alloca %struct.xenkbd_info*, align 8
  %4 = alloca %union.xenkbd_in_event*, align 8
  store %struct.xenkbd_info* %0, %struct.xenkbd_info** %3, align 8
  store %union.xenkbd_in_event* %1, %union.xenkbd_in_event** %4, align 8
  %5 = load %union.xenkbd_in_event*, %union.xenkbd_in_event** %4, align 8
  %6 = bitcast %union.xenkbd_in_event* %5 to i32*
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %28 [
    i32 130, label %8
    i32 131, label %13
    i32 128, label %18
    i32 129, label %23
  ]

8:                                                ; preds = %2
  %9 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %10 = load %union.xenkbd_in_event*, %union.xenkbd_in_event** %4, align 8
  %11 = bitcast %union.xenkbd_in_event* %10 to i32*
  %12 = call i32 @xenkbd_handle_motion_event(%struct.xenkbd_info* %9, i32* %11)
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %15 = load %union.xenkbd_in_event*, %union.xenkbd_in_event** %4, align 8
  %16 = bitcast %union.xenkbd_in_event* %15 to i32*
  %17 = call i32 @xenkbd_handle_key_event(%struct.xenkbd_info* %14, i32* %16)
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %20 = load %union.xenkbd_in_event*, %union.xenkbd_in_event** %4, align 8
  %21 = bitcast %union.xenkbd_in_event* %20 to i32*
  %22 = call i32 @xenkbd_handle_position_event(%struct.xenkbd_info* %19, i32* %21)
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %25 = load %union.xenkbd_in_event*, %union.xenkbd_in_event** %4, align 8
  %26 = bitcast %union.xenkbd_in_event* %25 to i32*
  %27 = call i32 @xenkbd_handle_mt_event(%struct.xenkbd_info* %24, i32* %26)
  br label %28

28:                                               ; preds = %2, %23, %18, %13, %8
  ret void
}

declare dso_local i32 @xenkbd_handle_motion_event(%struct.xenkbd_info*, i32*) #1

declare dso_local i32 @xenkbd_handle_key_event(%struct.xenkbd_info*, i32*) #1

declare dso_local i32 @xenkbd_handle_position_event(%struct.xenkbd_info*, i32*) #1

declare dso_local i32 @xenkbd_handle_mt_event(%struct.xenkbd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
