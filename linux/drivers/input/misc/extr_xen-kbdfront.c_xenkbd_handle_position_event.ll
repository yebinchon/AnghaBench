; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_handle_position_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_handle_position_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenkbd_info = type { i32 }
%struct.xenkbd_position = type { i32, i32, i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenkbd_info*, %struct.xenkbd_position*)* @xenkbd_handle_position_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenkbd_handle_position_event(%struct.xenkbd_info* %0, %struct.xenkbd_position* %1) #0 {
  %3 = alloca %struct.xenkbd_info*, align 8
  %4 = alloca %struct.xenkbd_position*, align 8
  store %struct.xenkbd_info* %0, %struct.xenkbd_info** %3, align 8
  store %struct.xenkbd_position* %1, %struct.xenkbd_position** %4, align 8
  %5 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %6 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %16 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ABS_X, align 4
  %19 = load %struct.xenkbd_position*, %struct.xenkbd_position** %4, align 8
  %20 = getelementptr inbounds %struct.xenkbd_position, %struct.xenkbd_position* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @input_report_abs(i32 %17, i32 %18, i32 %21)
  %23 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %24 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ABS_Y, align 4
  %27 = load %struct.xenkbd_position*, %struct.xenkbd_position** %4, align 8
  %28 = getelementptr inbounds %struct.xenkbd_position, %struct.xenkbd_position* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @input_report_abs(i32 %25, i32 %26, i32 %29)
  %31 = load %struct.xenkbd_position*, %struct.xenkbd_position** %4, align 8
  %32 = getelementptr inbounds %struct.xenkbd_position, %struct.xenkbd_position* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %14
  %36 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %37 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @REL_WHEEL, align 4
  %40 = load %struct.xenkbd_position*, %struct.xenkbd_position** %4, align 8
  %41 = getelementptr inbounds %struct.xenkbd_position, %struct.xenkbd_position* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @input_report_rel(i32 %38, i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %35, %14
  %46 = load %struct.xenkbd_info*, %struct.xenkbd_info** %3, align 8
  %47 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @input_sync(i32 %48)
  br label %50

50:                                               ; preds = %45, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
