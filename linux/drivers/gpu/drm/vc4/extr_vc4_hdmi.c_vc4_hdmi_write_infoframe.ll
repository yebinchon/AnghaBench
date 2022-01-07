; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_write_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_write_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vc4_dev = type { i32 }

@VC4_HDMI_PACKET_STRIDE = common dso_local global i32 0, align 4
@VC4_HDMI_RAM_PACKET_CONFIG = common dso_local global i32 0, align 4
@VC4_HDMI_RAM_PACKET_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Packet RAM has to be on to store the packet.\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to wait for infoframe to go idle: %d\0A\00", align 1
@VC4_HDMI_RAM_PACKET_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to wait for infoframe to start: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %union.hdmi_infoframe*)* @vc4_hdmi_write_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_hdmi_write_infoframe(%struct.drm_encoder* %0, %union.hdmi_infoframe* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %union.hdmi_infoframe*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %union.hdmi_infoframe* %1, %union.hdmi_infoframe** %4, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %5, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %18)
  store %struct.vc4_dev* %19, %struct.vc4_dev** %6, align 8
  %20 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %4, align 8
  %21 = bitcast %union.hdmi_infoframe* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 128
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @VC4_HDMI_RAM_PACKET(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @VC4_HDMI_PACKET_STRIDE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %31 = load i32, i32* @VC4_HDMI_RAM_PACKET_CONFIG, align 4
  %32 = call i32 @HDMI_READ(i32 %31)
  %33 = load i32, i32* @VC4_HDMI_RAM_PACKET_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ONCE(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %39 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %4, align 8
  %40 = mul nuw i64 4, %28
  %41 = trunc i64 %40 to i32
  %42 = call i64 @hdmi_infoframe_pack(%union.hdmi_infoframe* %39, i32* %30, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  store i32 1, i32* %14, align 4
  br label %135

46:                                               ; preds = %2
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %48 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %4, align 8
  %49 = bitcast %union.hdmi_infoframe* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @vc4_hdmi_stop_packet(%struct.drm_encoder* %47, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 1, i32* %14, align 4
  br label %135

58:                                               ; preds = %46
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %112, %58
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %115

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = load i64, i64* %12, align 8
  %66 = add nsw i64 %65, 0
  %67 = getelementptr inbounds i32, i32* %30, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 0
  %70 = load i64, i64* %12, align 8
  %71 = add nsw i64 %70, 1
  %72 = getelementptr inbounds i32, i32* %30, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %69, %74
  %76 = load i64, i64* %12, align 8
  %77 = add nsw i64 %76, 2
  %78 = getelementptr inbounds i32, i32* %30, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %75, %80
  %82 = call i32 @HDMI_WRITE(i32 %64, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 4
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i64, i64* %12, align 8
  %87 = add nsw i64 %86, 3
  %88 = getelementptr inbounds i32, i32* %30, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 0
  %91 = load i64, i64* %12, align 8
  %92 = add nsw i64 %91, 4
  %93 = getelementptr inbounds i32, i32* %30, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 8
  %96 = or i32 %90, %95
  %97 = load i64, i64* %12, align 8
  %98 = add nsw i64 %97, 5
  %99 = getelementptr inbounds i32, i32* %30, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 16
  %102 = or i32 %96, %101
  %103 = load i64, i64* %12, align 8
  %104 = add nsw i64 %103, 6
  %105 = getelementptr inbounds i32, i32* %30, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 24
  %108 = or i32 %102, %107
  %109 = call i32 @HDMI_WRITE(i32 %85, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %63
  %113 = load i64, i64* %12, align 8
  %114 = add nsw i64 %113, 7
  store i64 %114, i64* %12, align 8
  br label %59

115:                                              ; preds = %59
  %116 = load i32, i32* @VC4_HDMI_RAM_PACKET_CONFIG, align 4
  %117 = load i32, i32* @VC4_HDMI_RAM_PACKET_CONFIG, align 4
  %118 = call i32 @HDMI_READ(i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @BIT(i32 %119)
  %121 = or i32 %118, %120
  %122 = call i32 @HDMI_WRITE(i32 %116, i32 %121)
  %123 = load i32, i32* @VC4_HDMI_RAM_PACKET_STATUS, align 4
  %124 = call i32 @HDMI_READ(i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @BIT(i32 %125)
  %127 = and i32 %124, %126
  %128 = call i32 @wait_for(i32 %127, i32 100)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %131, %115
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %134, %55, %45
  %136 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %14, align 4
  switch i32 %137, label %139 [
    i32 0, label %138
    i32 1, label %138
  ]

138:                                              ; preds = %135, %135
  ret void

139:                                              ; preds = %135
  unreachable
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @VC4_HDMI_RAM_PACKET(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @HDMI_READ(i32) #1

declare dso_local i64 @hdmi_infoframe_pack(%union.hdmi_infoframe*, i32*, i32) #1

declare dso_local i32 @vc4_hdmi_stop_packet(%struct.drm_encoder*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @HDMI_WRITE(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
