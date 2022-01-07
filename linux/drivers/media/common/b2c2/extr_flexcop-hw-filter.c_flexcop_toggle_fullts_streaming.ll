; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_toggle_fullts_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_toggle_fullts_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s full TS transfer\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"enabling\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"disabling\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_device*, i32)* @flexcop_toggle_fullts_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_toggle_fullts_streaming(%struct.flexcop_device* %0, i32 %1) #0 {
  %3 = alloca %struct.flexcop_device*, align 8
  %4 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %6 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @deb_ts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = mul nsw i32 8160, %20
  %22 = call i32 @flexcop_pid_group_filter(%struct.flexcop_device* %16, i32 0, i32 %21)
  %23 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @flexcop_pid_group_filter_ctrl(%struct.flexcop_device* %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %28 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %10, %2
  ret i32 0
}

declare dso_local i32 @deb_ts(i8*, i8*) #1

declare dso_local i32 @flexcop_pid_group_filter(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_group_filter_ctrl(%struct.flexcop_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
