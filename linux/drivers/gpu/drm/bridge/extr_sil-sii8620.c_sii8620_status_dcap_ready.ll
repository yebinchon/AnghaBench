; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_status_dcap_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_status_dcap_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32*, i32 }

@MHL_DST_VERSION = common dso_local global i64 0, align 8
@CM_MHL3 = common dso_local global i32 0, align 4
@CM_MHL1 = common dso_local global i32 0, align 4
@REG_INTR9_MASK = common dso_local global i32 0, align 4
@BIT_INTR9_DEVCAP_DONE = common dso_local global i32 0, align 4
@BIT_INTR9_EDID_DONE = common dso_local global i32 0, align 4
@BIT_INTR9_EDID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_status_dcap_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_status_dcap_ready(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %4 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %5 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @MHL_DST_VERSION, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 48
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @CM_MHL3, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @CM_MHL1, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %19 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ugt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @sii8620_set_mode(%struct.sii8620* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %15
  %27 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %28 = call i32 @sii8620_peer_specific_init(%struct.sii8620* %27)
  %29 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %30 = load i32, i32* @REG_INTR9_MASK, align 4
  %31 = load i32, i32* @BIT_INTR9_DEVCAP_DONE, align 4
  %32 = load i32, i32* @BIT_INTR9_EDID_DONE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BIT_INTR9_EDID_ERROR, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @sii8620_write(%struct.sii8620* %29, i32 %30, i32 %35)
  ret void
}

declare dso_local i32 @sii8620_set_mode(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_peer_specific_init(%struct.sii8620*) #1

declare dso_local i32 @sii8620_write(%struct.sii8620*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
