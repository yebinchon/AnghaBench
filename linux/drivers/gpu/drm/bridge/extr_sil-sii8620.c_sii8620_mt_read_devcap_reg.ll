; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mt_read_devcap_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mt_read_devcap_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }
%struct.sii8620_mt_msg = type { i32*, i32, i32 }

@MHL_READ_XDEVCAP_REG = common dso_local global i32 0, align 4
@MHL_READ_DEVCAP_REG = common dso_local global i32 0, align 4
@sii8620_mt_msc_cmd_send = common dso_local global i32 0, align 4
@sii8620_mt_read_devcap_reg_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*, i32)* @sii8620_mt_read_devcap_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_mt_read_devcap_reg(%struct.sii8620* %0, i32 %1) #0 {
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
  br label %36

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @MHL_READ_XDEVCAP_REG, align 4
  br label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @MHL_READ_DEVCAP_REG, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %5, align 8
  %22 = getelementptr inbounds %struct.sii8620_mt_msg, %struct.sii8620_mt_msg* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %5, align 8
  %27 = getelementptr inbounds %struct.sii8620_mt_msg, %struct.sii8620_mt_msg* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @sii8620_mt_msc_cmd_send, align 4
  %31 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %5, align 8
  %32 = getelementptr inbounds %struct.sii8620_mt_msg, %struct.sii8620_mt_msg* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @sii8620_mt_read_devcap_reg_recv, align 4
  %34 = load %struct.sii8620_mt_msg*, %struct.sii8620_mt_msg** %5, align 8
  %35 = getelementptr inbounds %struct.sii8620_mt_msg, %struct.sii8620_mt_msg* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %19, %10
  ret void
}

declare dso_local %struct.sii8620_mt_msg* @sii8620_mt_msg_new(%struct.sii8620*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
