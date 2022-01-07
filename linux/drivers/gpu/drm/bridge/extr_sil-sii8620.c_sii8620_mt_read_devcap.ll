; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mt_read_devcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mt_read_devcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }
%struct.sii8620_mt_msg = type { i32, i32, i32* }

@MHL_READ_XDEVCAP = common dso_local global i32 0, align 4
@MHL_READ_DEVCAP = common dso_local global i32 0, align 4
@sii8620_mt_read_devcap_send = common dso_local global i32 0, align 4
@sii8620_mt_read_devcap_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*, i32)* @sii8620_mt_read_devcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_mt_read_devcap(%struct.sii8620* %0, i32 %1) #0 {
  %3 = alloca %struct.sii8620*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sii8620_mt_msg*, align 8
  store %struct.sii8620* %0, %struct.sii8620** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %7 = call %struct.sii8620_mt_msg* @sii8620_mt_msg_new(%struct.sii8620* %6)
  store %struct.sii8620_mt_msg* %7, %struct.sii8620_mt_msg** %5, align 8
  %8 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %5, align 8
  %9 = icmp ne %struct.sii8620_mt_msg* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @MHL_READ_XDEVCAP, align 4
  br label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @MHL_READ_DEVCAP, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %5, align 8
  %21 = getelementptr inbounds %struct.sii8620_mt_msg, %struct.sii8620_mt_msg* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @sii8620_mt_read_devcap_send, align 4
  %25 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %5, align 8
  %26 = getelementptr inbounds %struct.sii8620_mt_msg, %struct.sii8620_mt_msg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @sii8620_mt_read_devcap_recv, align 4
  %28 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %5, align 8
  %29 = getelementptr inbounds %struct.sii8620_mt_msg, %struct.sii8620_mt_msg* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %18, %10
  ret void
}

declare dso_local %struct.sii8620_mt_msg* @sii8620_mt_msg_new(%struct.sii8620*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
