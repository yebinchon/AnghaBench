; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi3660-mailbox.c_hi3660_mbox_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi3660-mailbox.c_hi3660_mbox_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.mbox_controller = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.hi3660_mbox = type { %struct.mbox_chan*, %struct.hi3660_chan_info*, i32 }
%struct.hi3660_chan_info = type { i32, i32 }

@MBOX_CHAN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid channel idx %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (%struct.mbox_controller*, %struct.of_phandle_args*)* @hi3660_mbox_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @hi3660_mbox_xlate(%struct.mbox_controller* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.mbox_controller*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.hi3660_mbox*, align 8
  %7 = alloca %struct.hi3660_chan_info*, align 8
  %8 = alloca i32, align 4
  store %struct.mbox_controller* %0, %struct.mbox_controller** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %9 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %10 = call %struct.hi3660_mbox* @to_hi3660_mbox(%struct.mbox_controller* %9)
  store %struct.hi3660_mbox* %10, %struct.hi3660_mbox** %6, align 8
  %11 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %12 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MBOX_CHAN_MAX, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %6, align 8
  %21 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.mbox_chan* @ERR_PTR(i32 %26)
  store %struct.mbox_chan* %27, %struct.mbox_chan** %3, align 8
  br label %55

28:                                               ; preds = %2
  %29 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %6, align 8
  %30 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %29, i32 0, i32 1
  %31 = load %struct.hi3660_chan_info*, %struct.hi3660_chan_info** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hi3660_chan_info, %struct.hi3660_chan_info* %31, i64 %33
  store %struct.hi3660_chan_info* %34, %struct.hi3660_chan_info** %7, align 8
  %35 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %36 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hi3660_chan_info*, %struct.hi3660_chan_info** %7, align 8
  %41 = getelementptr inbounds %struct.hi3660_chan_info, %struct.hi3660_chan_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %43 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hi3660_chan_info*, %struct.hi3660_chan_info** %7, align 8
  %48 = getelementptr inbounds %struct.hi3660_chan_info, %struct.hi3660_chan_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %6, align 8
  %50 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %49, i32 0, i32 0
  %51 = load %struct.mbox_chan*, %struct.mbox_chan** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %51, i64 %53
  store %struct.mbox_chan* %54, %struct.mbox_chan** %3, align 8
  br label %55

55:                                               ; preds = %28, %19
  %56 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  ret %struct.mbox_chan* %56
}

declare dso_local %struct.hi3660_mbox* @to_hi3660_mbox(%struct.mbox_controller*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
