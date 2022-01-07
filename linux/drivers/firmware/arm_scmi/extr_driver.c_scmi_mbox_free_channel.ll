; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_mbox_free_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_mbox_free_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_chan_info = type { i32* }
%struct.idr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @scmi_mbox_free_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_mbox_free_channel(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scmi_chan_info*, align 8
  %8 = alloca %struct.idr*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.scmi_chan_info*
  store %struct.scmi_chan_info* %10, %struct.scmi_chan_info** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.idr*
  store %struct.idr* %12, %struct.idr** %8, align 8
  %13 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %7, align 8
  %14 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @IS_ERR_OR_NULL(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %7, align 8
  %20 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @mbox_free_channel(i32* %21)
  %23 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %7, align 8
  %24 = getelementptr inbounds %struct.scmi_chan_info, %struct.scmi_chan_info* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %3
  %26 = load %struct.idr*, %struct.idr** %8, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @idr_remove(%struct.idr* %26, i32 %27)
  ret i32 0
}

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @mbox_free_channel(i32*) #1

declare dso_local i32 @idr_remove(%struct.idr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
