; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_gdp_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_gdp_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.sti_gdp = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.drm_plane }
%struct.drm_plane = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s: (vaddr = 0x%p)\00", align 1
@GAM_GDP_CTL = common dso_local global i32 0, align 4
@GAM_GDP_CTL_OFFSET = common dso_local global i64 0, align 8
@GAM_GDP_AGC = common dso_local global i32 0, align 4
@GAM_GDP_VPO = common dso_local global i32 0, align 4
@GAM_GDP_VPO_OFFSET = common dso_local global i64 0, align 8
@GAM_GDP_VPS = common dso_local global i32 0, align 4
@GAM_GDP_VPS_OFFSET = common dso_local global i64 0, align 8
@GAM_GDP_PML = common dso_local global i32 0, align 4
@GAM_GDP_PMP = common dso_local global i32 0, align 4
@GAM_GDP_SIZE = common dso_local global i32 0, align 4
@GAM_GDP_SIZE_OFFSET = common dso_local global i64 0, align 8
@GAM_GDP_NVN = common dso_local global i32 0, align 4
@GAM_GDP_NVN_OFFSET = common dso_local global i64 0, align 8
@GAM_GDP_KEY1 = common dso_local global i32 0, align 4
@GAM_GDP_KEY2 = common dso_local global i32 0, align 4
@GAM_GDP_PPT = common dso_local global i32 0, align 4
@GAM_GDP_PPT_OFFSET = common dso_local global i64 0, align 8
@GAM_GDP_CML = common dso_local global i32 0, align 4
@GAM_GDP_MST = common dso_local global i32 0, align 4
@GAM_GDP_MST_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"  Not connected to any DRM CRTC\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"  Connected to DRM CRTC #%d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @gdp_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdp_dbg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.sti_gdp*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.drm_info_node*, %struct.drm_info_node** %10, align 8
  store %struct.drm_info_node* %11, %struct.drm_info_node** %5, align 8
  %12 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %13 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.sti_gdp*
  store %struct.sti_gdp* %17, %struct.sti_gdp** %6, align 8
  %18 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %19 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store %struct.drm_plane* %20, %struct.drm_plane** %7, align 8
  %21 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 0
  %23 = call i32 @drm_modeset_lock(i32* %22, i32* null)
  %24 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %25 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %27, align 8
  store %struct.drm_crtc* %28, %struct.drm_crtc** %8, align 8
  %29 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %30 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %29, i32 0, i32 0
  %31 = call i32 @drm_modeset_unlock(i32* %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %34 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %33, i32 0, i32 1
  %35 = call i32 @sti_plane_to_str(%struct.TYPE_8__* %34)
  %36 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %37 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %38)
  %40 = load i32, i32* @GAM_GDP_CTL, align 4
  %41 = call i32 @DBGFS_DUMP(i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %44 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @GAM_GDP_CTL_OFFSET, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl(i64 %47)
  %49 = call i32 @gdp_dbg_ctl(%struct.seq_file* %42, i32 %48)
  %50 = load i32, i32* @GAM_GDP_AGC, align 4
  %51 = call i32 @DBGFS_DUMP(i32 %50)
  %52 = load i32, i32* @GAM_GDP_VPO, align 4
  %53 = call i32 @DBGFS_DUMP(i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %56 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @GAM_GDP_VPO_OFFSET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  %61 = call i32 @gdp_dbg_vpo(%struct.seq_file* %54, i32 %60)
  %62 = load i32, i32* @GAM_GDP_VPS, align 4
  %63 = call i32 @DBGFS_DUMP(i32 %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %66 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @GAM_GDP_VPS_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  %71 = call i32 @gdp_dbg_vps(%struct.seq_file* %64, i32 %70)
  %72 = load i32, i32* @GAM_GDP_PML, align 4
  %73 = call i32 @DBGFS_DUMP(i32 %72)
  %74 = load i32, i32* @GAM_GDP_PMP, align 4
  %75 = call i32 @DBGFS_DUMP(i32 %74)
  %76 = load i32, i32* @GAM_GDP_SIZE, align 4
  %77 = call i32 @DBGFS_DUMP(i32 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %80 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GAM_GDP_SIZE_OFFSET, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readl(i64 %83)
  %85 = call i32 @gdp_dbg_size(%struct.seq_file* %78, i32 %84)
  %86 = load i32, i32* @GAM_GDP_NVN, align 4
  %87 = call i32 @DBGFS_DUMP(i32 %86)
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %90 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %91 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @GAM_GDP_NVN_OFFSET, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @readl(i64 %94)
  %96 = call i32 @gdp_dbg_nvn(%struct.seq_file* %88, %struct.sti_gdp* %89, i32 %95)
  %97 = load i32, i32* @GAM_GDP_KEY1, align 4
  %98 = call i32 @DBGFS_DUMP(i32 %97)
  %99 = load i32, i32* @GAM_GDP_KEY2, align 4
  %100 = call i32 @DBGFS_DUMP(i32 %99)
  %101 = load i32, i32* @GAM_GDP_PPT, align 4
  %102 = call i32 @DBGFS_DUMP(i32 %101)
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %105 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @GAM_GDP_PPT_OFFSET, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @readl(i64 %108)
  %110 = call i32 @gdp_dbg_ppt(%struct.seq_file* %103, i32 %109)
  %111 = load i32, i32* @GAM_GDP_CML, align 4
  %112 = call i32 @DBGFS_DUMP(i32 %111)
  %113 = load i32, i32* @GAM_GDP_MST, align 4
  %114 = call i32 @DBGFS_DUMP(i32 %113)
  %115 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %116 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %117 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @GAM_GDP_MST_OFFSET, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @readl(i64 %120)
  %122 = call i32 @gdp_dbg_mst(%struct.seq_file* %115, i32 %121)
  %123 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %124 = call i32 @seq_puts(%struct.seq_file* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %126 = icmp ne %struct.drm_crtc* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %2
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = call i32 @seq_puts(%struct.seq_file* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %140

130:                                              ; preds = %2
  %131 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %132 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %133 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %137 = call i32 @to_sti_mixer(%struct.drm_crtc* %136)
  %138 = call i64 @sti_mixer_to_str(i32 %137)
  %139 = call i32 @seq_printf(%struct.seq_file* %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %135, i64 %138)
  br label %140

140:                                              ; preds = %130, %127
  ret i32 0
}

declare dso_local i32 @drm_modeset_lock(i32*, i32*) #1

declare dso_local i32 @drm_modeset_unlock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i64) #1

declare dso_local i32 @sti_plane_to_str(%struct.TYPE_8__*) #1

declare dso_local i32 @DBGFS_DUMP(i32) #1

declare dso_local i32 @gdp_dbg_ctl(%struct.seq_file*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @gdp_dbg_vpo(%struct.seq_file*, i32) #1

declare dso_local i32 @gdp_dbg_vps(%struct.seq_file*, i32) #1

declare dso_local i32 @gdp_dbg_size(%struct.seq_file*, i32) #1

declare dso_local i32 @gdp_dbg_nvn(%struct.seq_file*, %struct.sti_gdp*, i32) #1

declare dso_local i32 @gdp_dbg_ppt(%struct.seq_file*, i32) #1

declare dso_local i32 @gdp_dbg_mst(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @sti_mixer_to_str(i32) #1

declare dso_local i32 @to_sti_mixer(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
