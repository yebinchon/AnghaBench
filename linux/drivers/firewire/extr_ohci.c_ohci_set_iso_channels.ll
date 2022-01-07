; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ohci_set_iso_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ohci_set_iso_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_context = type { i32, i32 }
%struct.fw_ohci = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_iso_context*, i32*)* @ohci_set_iso_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_set_iso_channels(%struct.fw_iso_context* %0, i32* %1) #0 {
  %3 = alloca %struct.fw_iso_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fw_ohci*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fw_iso_context* %0, %struct.fw_iso_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.fw_iso_context*, %struct.fw_iso_context** %3, align 8
  %9 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.fw_ohci* @fw_ohci(i32 %10)
  store %struct.fw_ohci* %11, %struct.fw_ohci** %5, align 8
  %12 = load %struct.fw_iso_context*, %struct.fw_iso_context** %3, align 8
  %13 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %50 [
    i32 128, label %15
  ]

15:                                               ; preds = %2
  %16 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %17 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %16, i32 0, i32 2
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %21 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %25 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %15
  %34 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %35 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %45

40:                                               ; preds = %15
  %41 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @set_multichannel_mask(%struct.fw_ohci* %41, i32 %43)
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %47 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %46, i32 0, i32 2
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.fw_ohci* @fw_ohci(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_multichannel_mask(%struct.fw_ohci*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
