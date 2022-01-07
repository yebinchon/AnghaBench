; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.flexrm_ring* }
%struct.flexrm_ring = type { i32 }
%struct.brcm_message = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8* }

@BRCM_MESSAGE_BATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i8*)* @flexrm_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexrm_send_data(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.flexrm_ring*, align 8
  %9 = alloca %struct.brcm_message*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %11 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %10, i32 0, i32 0
  %12 = load %struct.flexrm_ring*, %struct.flexrm_ring** %11, align 8
  store %struct.flexrm_ring* %12, %struct.flexrm_ring** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.brcm_message*
  store %struct.brcm_message* %14, %struct.brcm_message** %9, align 8
  %15 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %16 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BRCM_MESSAGE_BATCH, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  %21 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %22 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %56, %20
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %28 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %25
  %33 = load %struct.flexrm_ring*, %struct.flexrm_ring** %8, align 8
  %34 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %35 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %36 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = call i32 @flexrm_new_request(%struct.flexrm_ring* %33, %struct.brcm_message* %34, i8* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %48 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %64

50:                                               ; preds = %32
  %51 = load %struct.brcm_message*, %struct.brcm_message** %9, align 8
  %52 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %25

59:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %64

60:                                               ; preds = %2
  %61 = load %struct.flexrm_ring*, %struct.flexrm_ring** %8, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @flexrm_new_request(%struct.flexrm_ring* %61, %struct.brcm_message* null, i8* %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %59, %45
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @flexrm_new_request(%struct.flexrm_ring*, %struct.brcm_message*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
