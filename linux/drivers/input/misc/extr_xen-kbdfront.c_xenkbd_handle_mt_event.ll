; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_handle_mt_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_handle_mt_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenkbd_info = type { i64, i32 }
%struct.xenkbd_mtouch = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenkbd_info*, %struct.xenkbd_mtouch*)* @xenkbd_handle_mt_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenkbd_handle_mt_event(%struct.xenkbd_info* %0, %struct.xenkbd_mtouch* %1) #0 {
  %3 = alloca %struct.xenkbd_info*, align 8
  %4 = alloca %struct.xenkbd_mtouch*, align 8
  store %struct.xenkbd_info* %0, %struct.xenkbd_info** %3, align 8
  store %struct.xenkbd_mtouch* %1, %struct.xenkbd_mtouch** %4, align 8
  %5 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %6 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %112

14:                                               ; preds = %2
  %15 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %4, align 8
  %16 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %19 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %4, align 8
  %24 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %27 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %29 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %4, align 8
  %32 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @input_mt_slot(i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %22, %14
  %36 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %4, align 8
  %37 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %112 [
    i32 133, label %39
    i32 132, label %45
    i32 130, label %66
    i32 131, label %87
    i32 128, label %97
    i32 129, label %103
  ]

39:                                               ; preds = %35
  %40 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %41 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MT_TOOL_FINGER, align 4
  %44 = call i32 @input_mt_report_slot_state(i32 %42, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %35, %39
  %46 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %47 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %50 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %4, align 8
  %51 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @input_report_abs(i32 %48, i32 %49, i32 %54)
  %56 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %57 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %60 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %4, align 8
  %61 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @input_report_abs(i32 %58, i32 %59, i32 %64)
  br label %112

66:                                               ; preds = %35
  %67 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %68 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %71 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %4, align 8
  %72 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @input_report_abs(i32 %69, i32 %70, i32 %75)
  %77 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %78 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %81 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %4, align 8
  %82 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @input_report_abs(i32 %79, i32 %80, i32 %85)
  br label %112

87:                                               ; preds = %35
  %88 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %89 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %92 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %4, align 8
  %93 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @input_report_abs(i32 %90, i32 %91, i32 %95)
  br label %112

97:                                               ; preds = %35
  %98 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %99 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MT_TOOL_FINGER, align 4
  %102 = call i32 @input_mt_report_slot_state(i32 %100, i32 %101, i32 0)
  br label %112

103:                                              ; preds = %35
  %104 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %105 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @input_mt_sync_frame(i32 %106)
  %108 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %109 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @input_sync(i32 %110)
  br label %112

112:                                              ; preds = %13, %35, %103, %97, %87, %66, %45
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @input_mt_slot(i32, i64) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
