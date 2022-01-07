; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_update_bus_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_update_bus_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32, i32 }

@OHCI1394_IntMaskSet = common dso_local global i32 0, align 4
@OHCI1394_cycle64Seconds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_ohci*)* @update_bus_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_bus_time(%struct.fw_ohci* %0) #0 {
  %2 = alloca %struct.fw_ohci*, align 8
  %3 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %2, align 8
  %4 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %5 = call i32 @get_cycle_time(%struct.fw_ohci* %4)
  %6 = ashr i32 %5, 25
  store i32 %6, i32* %3, align 4
  %7 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %8 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %17 = load i32, i32* @OHCI1394_IntMaskSet, align 4
  %18 = load i32, i32* @OHCI1394_cycle64Seconds, align 4
  %19 = call i32 @reg_write(%struct.fw_ohci* %16, i32 %17, i32 %18)
  %20 = call i32 (...) @get_seconds()
  %21 = call i32 @lower_32_bits(i32 %20)
  %22 = and i32 %21, -128
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 64
  %25 = or i32 %22, %24
  %26 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %27 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %29 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %15, %1
  %31 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %32 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 64
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 64
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %40 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 64
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %30
  %44 = load %struct.fw_ohci*, %struct.fw_ohci** %2, align 8
  %45 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %46, %47
  ret i32 %48
}

declare dso_local i32 @get_cycle_time(%struct.fw_ohci*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @get_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
