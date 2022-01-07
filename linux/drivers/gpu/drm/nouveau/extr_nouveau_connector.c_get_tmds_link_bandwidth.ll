; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_get_tmds_link_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_get_tmds_link_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.nouveau_connector = type { %struct.TYPE_8__, i32, %struct.nouveau_encoder* }
%struct.TYPE_8__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.nouveau_encoder = type { %struct.dcb_output* }
%struct.dcb_output = type { i64, i64 }
%struct.nouveau_drm = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }

@nouveau_duallink = common dso_local global i64 0, align 8
@nouveau_hdmimhz = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_KEPLER = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_FERMI = common dso_local global i64 0, align 8
@DCB_LOC_ON_CHIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @get_tmds_link_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tmds_link_bandwidth(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.nouveau_connector*, align 8
  %5 = alloca %struct.nouveau_encoder*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.dcb_output*, align 8
  %8 = alloca %struct.drm_display_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %11)
  store %struct.nouveau_connector* %12, %struct.nouveau_connector** %4, align 8
  %13 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %13, i32 0, i32 2
  %15 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %14, align 8
  store %struct.nouveau_encoder* %15, %struct.nouveau_encoder** %5, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nouveau_drm* @nouveau_drm(i32 %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %6, align 8
  %20 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %20, i32 0, i32 2
  %22 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %21, align 8
  %23 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %22, i32 0, i32 0
  %24 = load %struct.dcb_output*, %struct.dcb_output** %23, align 8
  store %struct.dcb_output* %24, %struct.dcb_output** %7, align 8
  store %struct.drm_display_info* null, %struct.drm_display_info** %8, align 8
  %25 = load i64, i64* @nouveau_duallink, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %5, align 8
  %29 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %28, i32 0, i32 0
  %30 = load %struct.dcb_output*, %struct.dcb_output** %29, align 8
  %31 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %27, %1
  %35 = phi i1 [ false, %1 ], [ %33, %27 ]
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 2, i32 1
  store i32 %37, i32* %9, align 4
  %38 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %39 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @drm_detect_hdmi_monitor(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %45 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store %struct.drm_display_info* %46, %struct.drm_display_info** %8, align 8
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %34
  %48 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %49 = icmp ne %struct.drm_display_info* %48, null
  br i1 %49, label %50, label %109

50:                                               ; preds = %47
  %51 = load i32, i32* @nouveau_hdmimhz, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @nouveau_hdmimhz, align 4
  %55 = mul nsw i32 %54, 1000
  store i32 %55, i32* %2, align 4
  br label %151

56:                                               ; preds = %50
  %57 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %58 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %62, 288
  br i1 %63, label %64, label %88

64:                                               ; preds = %56
  %65 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %66 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 594000, i32 340000
  store i32 %73, i32* %10, align 4
  %74 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %75 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %64
  %79 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %80 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @min(i32 %81, i32 %82)
  br label %86

84:                                               ; preds = %64
  %85 = load i32, i32* %10, align 4
  br label %86

86:                                               ; preds = %84, %78
  %87 = phi i32 [ %83, %78 ], [ %85, %84 ]
  store i32 %87, i32* %2, align 4
  br label %151

88:                                               ; preds = %56
  %89 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %90 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NV_DEVICE_INFO_V0_KEPLER, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 297000, i32* %2, align 4
  br label %151

98:                                               ; preds = %88
  %99 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %100 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NV_DEVICE_INFO_V0_FERMI, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  store i32 225000, i32* %2, align 4
  br label %151

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %47
  %110 = load %struct.dcb_output*, %struct.dcb_output** %7, align 8
  %111 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DCB_LOC_ON_CHIP, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %109
  %116 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %117 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 70
  br i1 %122, label %123, label %126

123:                                              ; preds = %115, %109
  %124 = load i32, i32* %9, align 4
  %125 = mul i32 165000, %124
  store i32 %125, i32* %2, align 4
  br label %151

126:                                              ; preds = %115
  %127 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %128 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp sge i32 %132, 64
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i32, i32* %9, align 4
  %136 = mul i32 155000, %135
  store i32 %136, i32* %2, align 4
  br label %151

137:                                              ; preds = %126
  %138 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %139 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp sge i32 %143, 24
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i32, i32* %9, align 4
  %147 = mul i32 135000, %146
  store i32 %147, i32* %2, align 4
  br label %151

148:                                              ; preds = %137
  %149 = load i32, i32* %9, align 4
  %150 = mul i32 112000, %149
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %145, %134, %123, %107, %97, %86, %53
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i64 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
