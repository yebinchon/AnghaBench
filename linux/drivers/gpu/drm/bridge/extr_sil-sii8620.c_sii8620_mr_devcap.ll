; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mr_devcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_mr_devcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i64, i32, i32, %struct.device* }
%struct.device = type { i32 }

@MHL_DCAP_SIZE = common dso_local global i32 0, align 4
@REG_EDID_FIFO_RD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"detected dongle MHL %d.%d, ChipID %02x%02x:%02x%02x\0A\00", align 1
@MHL_DCAP_MHL_VERSION = common dso_local global i64 0, align 8
@MHL_DCAP_ADOPTER_ID_H = common dso_local global i64 0, align 8
@MHL_DCAP_ADOPTER_ID_L = common dso_local global i64 0, align 8
@MHL_DCAP_DEVICE_ID_H = common dso_local global i64 0, align 8
@MHL_DCAP_DEVICE_ID_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_mr_devcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_mr_devcap(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %7 = load i32, i32* @MHL_DCAP_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %12 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %11, i32 0, i32 3
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %15 = load i32, i32* @REG_EDID_FIFO_RD_DATA, align 4
  %16 = load i32, i32* @MHL_DCAP_SIZE, align 4
  %17 = call i32 @sii8620_read_buf(%struct.sii8620* %14, i32 %15, i32* %10, i32 %16)
  %18 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %19 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %55

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i64, i64* @MHL_DCAP_MHL_VERSION, align 8
  %26 = getelementptr inbounds i32, i32* %10, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 16
  %29 = load i64, i64* @MHL_DCAP_MHL_VERSION, align 8
  %30 = getelementptr inbounds i32, i32* %10, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %31, 16
  %33 = load i64, i64* @MHL_DCAP_ADOPTER_ID_H, align 8
  %34 = getelementptr inbounds i32, i32* %10, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @MHL_DCAP_ADOPTER_ID_L, align 8
  %37 = getelementptr inbounds i32, i32* %10, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @MHL_DCAP_DEVICE_ID_H, align 8
  %40 = getelementptr inbounds i32, i32* %10, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @MHL_DCAP_DEVICE_ID_L, align 8
  %43 = getelementptr inbounds i32, i32* %10, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_info(%struct.device* %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %47 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MHL_DCAP_SIZE, align 4
  %50 = call i32 @sii8620_update_array(i32 %48, i32* %10, i32 %49)
  %51 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %52 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  %53 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %54 = call i32 @sii8620_identify_sink(%struct.sii8620* %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %23, %22
  %56 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %58
  ]

58:                                               ; preds = %55, %55
  ret void

59:                                               ; preds = %55
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sii8620_read_buf(%struct.sii8620*, i32, i32*, i32) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @sii8620_update_array(i32, i32*, i32) #2

declare dso_local i32 @sii8620_identify_sink(%struct.sii8620*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
