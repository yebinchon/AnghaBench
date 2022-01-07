; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_process_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i64, i64, i32, %struct.hgpk_data* }
%struct.hgpk_data = type { i64, i64, i32 }

@PSMOUSE_BAD_DATA = common dso_local global i32 0, align 4
@HGPK_MODE_MOUSE = common dso_local global i64 0, align 8
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"packet inside calibration window, queueing another recalibration\0A\00", align 1
@post_interrupt_delay = common dso_local global i32 0, align 4
@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @hgpk_process_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.hgpk_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 3
  %7 = load %struct.hgpk_data*, %struct.hgpk_data** %6, align 8
  store %struct.hgpk_data* %7, %struct.hgpk_data** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @hgpk_is_byte_valid(%struct.psmouse* %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %15, i32* %2, align 4
  br label %64

16:                                               ; preds = %1
  %17 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %18 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %26 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HGPK_MODE_MOUSE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %32 = call i32 @hgpk_process_simple_packet(%struct.psmouse* %31)
  br label %36

33:                                               ; preds = %24
  %34 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %35 = call i32 @hgpk_process_advanced_packet(%struct.psmouse* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %37, i32* %2, align 4
  br label %64

38:                                               ; preds = %16
  %39 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %40 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %46 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @time_before(i32 %44, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %52 = call i32 @psmouse_dbg(%struct.psmouse* %51, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %54 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %55 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %54, i32 0, i32 2
  %56 = load i32, i32* @post_interrupt_delay, align 4
  %57 = call i32 @msecs_to_jiffies(i32 %56)
  %58 = call i32 @psmouse_queue_work(%struct.psmouse* %53, i32* %55, i32 %57)
  br label %59

59:                                               ; preds = %50, %43
  %60 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %61 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %38
  %63 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %36, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @hgpk_is_byte_valid(%struct.psmouse*, i32) #1

declare dso_local i32 @hgpk_process_simple_packet(%struct.psmouse*) #1

declare dso_local i32 @hgpk_process_advanced_packet(%struct.psmouse*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*) #1

declare dso_local i32 @psmouse_queue_work(%struct.psmouse*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
