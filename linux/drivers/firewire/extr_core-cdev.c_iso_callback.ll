; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_iso_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_iso_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_context = type { i32 }
%struct.client = type { i32 }
%struct.iso_interrupt_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@FW_CDEV_EVENT_ISO_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* @iso_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iso_callback(%struct.fw_iso_context* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.fw_iso_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.client*, align 8
  %12 = alloca %struct.iso_interrupt_event*, align 8
  store %struct.fw_iso_context* %0, %struct.fw_iso_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.client*
  store %struct.client* %14, %struct.client** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add i64 32, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.iso_interrupt_event* @kmalloc(i32 %17, i32 %18)
  store %struct.iso_interrupt_event* %19, %struct.iso_interrupt_event** %12, align 8
  %20 = load %struct.iso_interrupt_event*, %struct.iso_interrupt_event** %12, align 8
  %21 = icmp eq %struct.iso_interrupt_event* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %58

23:                                               ; preds = %5
  %24 = load i32, i32* @FW_CDEV_EVENT_ISO_INTERRUPT, align 4
  %25 = load %struct.iso_interrupt_event*, %struct.iso_interrupt_event** %12, align 8
  %26 = getelementptr inbounds %struct.iso_interrupt_event, %struct.iso_interrupt_event* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 4
  %28 = load %struct.client*, %struct.client** %11, align 8
  %29 = getelementptr inbounds %struct.client, %struct.client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iso_interrupt_event*, %struct.iso_interrupt_event** %12, align 8
  %32 = getelementptr inbounds %struct.iso_interrupt_event, %struct.iso_interrupt_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.iso_interrupt_event*, %struct.iso_interrupt_event** %12, align 8
  %36 = getelementptr inbounds %struct.iso_interrupt_event, %struct.iso_interrupt_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.iso_interrupt_event*, %struct.iso_interrupt_event** %12, align 8
  %40 = getelementptr inbounds %struct.iso_interrupt_event, %struct.iso_interrupt_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.iso_interrupt_event*, %struct.iso_interrupt_event** %12, align 8
  %43 = getelementptr inbounds %struct.iso_interrupt_event, %struct.iso_interrupt_event* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @memcpy(i32 %45, i8* %46, i64 %47)
  %49 = load %struct.client*, %struct.client** %11, align 8
  %50 = load %struct.iso_interrupt_event*, %struct.iso_interrupt_event** %12, align 8
  %51 = getelementptr inbounds %struct.iso_interrupt_event, %struct.iso_interrupt_event* %50, i32 0, i32 1
  %52 = load %struct.iso_interrupt_event*, %struct.iso_interrupt_event** %12, align 8
  %53 = getelementptr inbounds %struct.iso_interrupt_event, %struct.iso_interrupt_event* %52, i32 0, i32 0
  %54 = load i64, i64* %8, align 8
  %55 = add i64 24, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @queue_event(%struct.client* %49, i32* %51, %struct.TYPE_2__* %53, i32 %56, i32* null, i32 0)
  br label %58

58:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.iso_interrupt_event* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @queue_event(%struct.client*, i32*, %struct.TYPE_2__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
