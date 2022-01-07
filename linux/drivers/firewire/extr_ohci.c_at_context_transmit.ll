; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_at_context_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_at_context_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.fw_packet = type { i64, i32, i32 (%struct.fw_packet*, i32*, i32)*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.fw_packet*)* @at_context_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at_context_transmit(%struct.context* %0, %struct.fw_packet* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.fw_packet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %4, align 8
  %7 = load %struct.context*, %struct.context** %3, align 8
  %8 = getelementptr inbounds %struct.context, %struct.context* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %14 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @HEADER_GET_DESTINATION(i32 %17)
  %19 = load %struct.context*, %struct.context** %3, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.context*, %struct.context** %3, align 8
  %27 = getelementptr inbounds %struct.context, %struct.context* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %32 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load %struct.context*, %struct.context** %3, align 8
  %37 = getelementptr inbounds %struct.context, %struct.context* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.context*, %struct.context** %3, align 8
  %43 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %44 = call i32 @handle_local_request(%struct.context* %42, %struct.fw_packet* %43)
  br label %70

45:                                               ; preds = %25, %2
  %46 = load %struct.context*, %struct.context** %3, align 8
  %47 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %48 = call i32 @at_context_queue_packet(%struct.context* %46, %struct.fw_packet* %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.context*, %struct.context** %3, align 8
  %50 = getelementptr inbounds %struct.context, %struct.context* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %45
  %58 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %59 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %58, i32 0, i32 2
  %60 = load i32 (%struct.fw_packet*, i32*, i32)*, i32 (%struct.fw_packet*, i32*, i32)** %59, align 8
  %61 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %62 = load %struct.context*, %struct.context** %3, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %67 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %60(%struct.fw_packet* %61, i32* %65, i32 %68)
  br label %70

70:                                               ; preds = %35, %57, %45
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @HEADER_GET_DESTINATION(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @handle_local_request(%struct.context*, %struct.fw_packet*) #1

declare dso_local i32 @at_context_queue_packet(%struct.context*, %struct.fw_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
