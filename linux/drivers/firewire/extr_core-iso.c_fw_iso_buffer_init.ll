; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_fw_iso_buffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_fw_iso_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_buffer = type { i32 }
%struct.fw_card = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_iso_buffer_init(%struct.fw_iso_buffer* %0, %struct.fw_card* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_iso_buffer*, align 8
  %7 = alloca %struct.fw_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fw_iso_buffer* %0, %struct.fw_iso_buffer** %6, align 8
  store %struct.fw_card* %1, %struct.fw_card** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @fw_iso_buffer_alloc(%struct.fw_iso_buffer* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %31

18:                                               ; preds = %4
  %19 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %20 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @fw_iso_buffer_map_dma(%struct.fw_iso_buffer* %19, %struct.fw_card* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %27 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %28 = call i32 @fw_iso_buffer_destroy(%struct.fw_iso_buffer* %26, %struct.fw_card* %27)
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @fw_iso_buffer_alloc(%struct.fw_iso_buffer*, i32) #1

declare dso_local i32 @fw_iso_buffer_map_dma(%struct.fw_iso_buffer*, %struct.fw_card*, i32) #1

declare dso_local i32 @fw_iso_buffer_destroy(%struct.fw_iso_buffer*, %struct.fw_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
