; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_allocate_broadcast_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_allocate_broadcast_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to allocate broadcast channel\0A\00", align 1
@fw_device_set_broadcast_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, i32)* @allocate_broadcast_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_broadcast_channel(%struct.fw_card* %0, i32 %1) #0 {
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %8 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @fw_iso_resource_manage(%struct.fw_card* %12, i32 %13, i64 2147483648, i32* %5, i32* %6, i32 1)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 31
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %19 = call i32 @fw_notice(%struct.fw_card* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %32

20:                                               ; preds = %11
  %21 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %22 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %25 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* @fw_device_set_broadcast_channel, align 4
  %31 = call i32 @device_for_each_child(i32 %26, i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @fw_iso_resource_manage(%struct.fw_card*, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @fw_notice(%struct.fw_card*, i8*) #1

declare dso_local i32 @device_for_each_child(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
