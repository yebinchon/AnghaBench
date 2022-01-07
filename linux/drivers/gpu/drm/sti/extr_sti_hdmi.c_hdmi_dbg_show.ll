; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sti_hdmi = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"HDMI: (vaddr = 0x%p)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HDMI_CFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HDMI_INT_EN = common dso_local global i32 0, align 4
@HDMI_STA = common dso_local global i32 0, align 4
@HDMI_ACTIVE_VID_XMIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Xmin:\00", align 1
@HDMI_ACTIVE_VID_XMAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Xmax:\00", align 1
@HDMI_ACTIVE_VID_YMIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Ymin:\00", align 1
@HDMI_ACTIVE_VID_YMAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"Ymax:\00", align 1
@HDMI_SW_DI_CFG = common dso_local global i32 0, align 4
@HDMI_AUDIO_CFG = common dso_local global i32 0, align 4
@HDMI_SPDIF_FIFO_STATUS = common dso_local global i32 0, align 4
@HDMI_AUDN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"\0A AVI Infoframe (Data Island slot N=%d):\00", align 1
@HDMI_IFRAME_SLOT_AVI = common dso_local global i32 0, align 4
@HDMI_SW_DI_N_HEAD_WORD = common dso_local global i32 0, align 4
@HDMI_SW_DI_N_PKT_WORD0 = common dso_local global i32 0, align 4
@HDMI_SW_DI_N_PKT_WORD1 = common dso_local global i32 0, align 4
@HDMI_SW_DI_N_PKT_WORD2 = common dso_local global i32 0, align 4
@HDMI_SW_DI_N_PKT_WORD3 = common dso_local global i32 0, align 4
@HDMI_SW_DI_N_PKT_WORD4 = common dso_local global i32 0, align 4
@HDMI_SW_DI_N_PKT_WORD5 = common dso_local global i32 0, align 4
@HDMI_SW_DI_N_PKT_WORD6 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"\0A\0A AUDIO Infoframe (Data Island slot N=%d):\00", align 1
@HDMI_IFRAME_SLOT_AUDIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [54 x i8] c"\0A\0A VENDOR SPECIFIC Infoframe (Data Island slot N=%d):\00", align 1
@HDMI_IFRAME_SLOT_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @hdmi_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_dbg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.sti_hdmi*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.drm_info_node*, %struct.drm_info_node** %8, align 8
  store %struct.drm_info_node* %9, %struct.drm_info_node** %5, align 8
  %10 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %11 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.sti_hdmi*
  store %struct.sti_hdmi* %15, %struct.sti_hdmi** %6, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.sti_hdmi*, %struct.sti_hdmi** %6, align 8
  %18 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @HDMI_CFG, align 4
  %22 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.sti_hdmi*, %struct.sti_hdmi** %6, align 8
  %25 = load i32, i32* @HDMI_CFG, align 4
  %26 = call i32 @hdmi_read(%struct.sti_hdmi* %24, i32 %25)
  %27 = call i32 @hdmi_dbg_cfg(%struct.seq_file* %23, i32 %26)
  %28 = load i32, i32* @HDMI_INT_EN, align 4
  %29 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @HDMI_STA, align 4
  %31 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.sti_hdmi*, %struct.sti_hdmi** %6, align 8
  %34 = load i32, i32* @HDMI_STA, align 4
  %35 = call i32 @hdmi_read(%struct.sti_hdmi* %33, i32 %34)
  %36 = call i32 @hdmi_dbg_sta(%struct.seq_file* %32, i32 %35)
  %37 = load i32, i32* @HDMI_ACTIVE_VID_XMIN, align 4
  %38 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = call i32 @seq_putc(%struct.seq_file* %39, i8 signext 9)
  %41 = load %struct.sti_hdmi*, %struct.sti_hdmi** %6, align 8
  %42 = load i32, i32* @HDMI_ACTIVE_VID_XMIN, align 4
  %43 = call i32 @hdmi_read(%struct.sti_hdmi* %41, i32 %42)
  %44 = call i32 @DBGFS_PRINT_INT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @HDMI_ACTIVE_VID_XMAX, align 4
  %46 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = call i32 @seq_putc(%struct.seq_file* %47, i8 signext 9)
  %49 = load %struct.sti_hdmi*, %struct.sti_hdmi** %6, align 8
  %50 = load i32, i32* @HDMI_ACTIVE_VID_XMAX, align 4
  %51 = call i32 @hdmi_read(%struct.sti_hdmi* %49, i32 %50)
  %52 = call i32 @DBGFS_PRINT_INT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @HDMI_ACTIVE_VID_YMIN, align 4
  %54 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = call i32 @seq_putc(%struct.seq_file* %55, i8 signext 9)
  %57 = load %struct.sti_hdmi*, %struct.sti_hdmi** %6, align 8
  %58 = load i32, i32* @HDMI_ACTIVE_VID_YMIN, align 4
  %59 = call i32 @hdmi_read(%struct.sti_hdmi* %57, i32 %58)
  %60 = call i32 @DBGFS_PRINT_INT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @HDMI_ACTIVE_VID_YMAX, align 4
  %62 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = call i32 @seq_putc(%struct.seq_file* %63, i8 signext 9)
  %65 = load %struct.sti_hdmi*, %struct.sti_hdmi** %6, align 8
  %66 = load i32, i32* @HDMI_ACTIVE_VID_YMAX, align 4
  %67 = call i32 @hdmi_read(%struct.sti_hdmi* %65, i32 %66)
  %68 = call i32 @DBGFS_PRINT_INT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @HDMI_SW_DI_CFG, align 4
  %70 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = load %struct.sti_hdmi*, %struct.sti_hdmi** %6, align 8
  %73 = load i32, i32* @HDMI_SW_DI_CFG, align 4
  %74 = call i32 @hdmi_read(%struct.sti_hdmi* %72, i32 %73)
  %75 = call i32 @hdmi_dbg_sw_di_cfg(%struct.seq_file* %71, i32 %74)
  %76 = load i32, i32* @HDMI_AUDIO_CFG, align 4
  %77 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @HDMI_SPDIF_FIFO_STATUS, align 4
  %79 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @HDMI_AUDN, align 4
  %81 = call i32 @DBGFS_DUMP(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load i32, i32* @HDMI_IFRAME_SLOT_AVI, align 4
  %84 = call i32 @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @HDMI_SW_DI_N_HEAD_WORD, align 4
  %86 = load i32, i32* @HDMI_IFRAME_SLOT_AVI, align 4
  %87 = call i32 @DBGFS_DUMP_DI(i32 %85, i32 %86)
  %88 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD0, align 4
  %89 = load i32, i32* @HDMI_IFRAME_SLOT_AVI, align 4
  %90 = call i32 @DBGFS_DUMP_DI(i32 %88, i32 %89)
  %91 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD1, align 4
  %92 = load i32, i32* @HDMI_IFRAME_SLOT_AVI, align 4
  %93 = call i32 @DBGFS_DUMP_DI(i32 %91, i32 %92)
  %94 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD2, align 4
  %95 = load i32, i32* @HDMI_IFRAME_SLOT_AVI, align 4
  %96 = call i32 @DBGFS_DUMP_DI(i32 %94, i32 %95)
  %97 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD3, align 4
  %98 = load i32, i32* @HDMI_IFRAME_SLOT_AVI, align 4
  %99 = call i32 @DBGFS_DUMP_DI(i32 %97, i32 %98)
  %100 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD4, align 4
  %101 = load i32, i32* @HDMI_IFRAME_SLOT_AVI, align 4
  %102 = call i32 @DBGFS_DUMP_DI(i32 %100, i32 %101)
  %103 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD5, align 4
  %104 = load i32, i32* @HDMI_IFRAME_SLOT_AVI, align 4
  %105 = call i32 @DBGFS_DUMP_DI(i32 %103, i32 %104)
  %106 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD6, align 4
  %107 = load i32, i32* @HDMI_IFRAME_SLOT_AVI, align 4
  %108 = call i32 @DBGFS_DUMP_DI(i32 %106, i32 %107)
  %109 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %110 = load i32, i32* @HDMI_IFRAME_SLOT_AUDIO, align 4
  %111 = call i32 @seq_printf(%struct.seq_file* %109, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @HDMI_SW_DI_N_HEAD_WORD, align 4
  %113 = load i32, i32* @HDMI_IFRAME_SLOT_AUDIO, align 4
  %114 = call i32 @DBGFS_DUMP_DI(i32 %112, i32 %113)
  %115 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD0, align 4
  %116 = load i32, i32* @HDMI_IFRAME_SLOT_AUDIO, align 4
  %117 = call i32 @DBGFS_DUMP_DI(i32 %115, i32 %116)
  %118 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD1, align 4
  %119 = load i32, i32* @HDMI_IFRAME_SLOT_AUDIO, align 4
  %120 = call i32 @DBGFS_DUMP_DI(i32 %118, i32 %119)
  %121 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD2, align 4
  %122 = load i32, i32* @HDMI_IFRAME_SLOT_AUDIO, align 4
  %123 = call i32 @DBGFS_DUMP_DI(i32 %121, i32 %122)
  %124 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD3, align 4
  %125 = load i32, i32* @HDMI_IFRAME_SLOT_AUDIO, align 4
  %126 = call i32 @DBGFS_DUMP_DI(i32 %124, i32 %125)
  %127 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD4, align 4
  %128 = load i32, i32* @HDMI_IFRAME_SLOT_AUDIO, align 4
  %129 = call i32 @DBGFS_DUMP_DI(i32 %127, i32 %128)
  %130 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD5, align 4
  %131 = load i32, i32* @HDMI_IFRAME_SLOT_AUDIO, align 4
  %132 = call i32 @DBGFS_DUMP_DI(i32 %130, i32 %131)
  %133 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD6, align 4
  %134 = load i32, i32* @HDMI_IFRAME_SLOT_AUDIO, align 4
  %135 = call i32 @DBGFS_DUMP_DI(i32 %133, i32 %134)
  %136 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %137 = load i32, i32* @HDMI_IFRAME_SLOT_VENDOR, align 4
  %138 = call i32 @seq_printf(%struct.seq_file* %136, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @HDMI_SW_DI_N_HEAD_WORD, align 4
  %140 = load i32, i32* @HDMI_IFRAME_SLOT_VENDOR, align 4
  %141 = call i32 @DBGFS_DUMP_DI(i32 %139, i32 %140)
  %142 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD0, align 4
  %143 = load i32, i32* @HDMI_IFRAME_SLOT_VENDOR, align 4
  %144 = call i32 @DBGFS_DUMP_DI(i32 %142, i32 %143)
  %145 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD1, align 4
  %146 = load i32, i32* @HDMI_IFRAME_SLOT_VENDOR, align 4
  %147 = call i32 @DBGFS_DUMP_DI(i32 %145, i32 %146)
  %148 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD2, align 4
  %149 = load i32, i32* @HDMI_IFRAME_SLOT_VENDOR, align 4
  %150 = call i32 @DBGFS_DUMP_DI(i32 %148, i32 %149)
  %151 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD3, align 4
  %152 = load i32, i32* @HDMI_IFRAME_SLOT_VENDOR, align 4
  %153 = call i32 @DBGFS_DUMP_DI(i32 %151, i32 %152)
  %154 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD4, align 4
  %155 = load i32, i32* @HDMI_IFRAME_SLOT_VENDOR, align 4
  %156 = call i32 @DBGFS_DUMP_DI(i32 %154, i32 %155)
  %157 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD5, align 4
  %158 = load i32, i32* @HDMI_IFRAME_SLOT_VENDOR, align 4
  %159 = call i32 @DBGFS_DUMP_DI(i32 %157, i32 %158)
  %160 = load i32, i32* @HDMI_SW_DI_N_PKT_WORD6, align 4
  %161 = load i32, i32* @HDMI_IFRAME_SLOT_VENDOR, align 4
  %162 = call i32 @DBGFS_DUMP_DI(i32 %160, i32 %161)
  %163 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %164 = call i32 @seq_putc(%struct.seq_file* %163, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @DBGFS_DUMP(i8*, i32) #1

declare dso_local i32 @hdmi_dbg_cfg(%struct.seq_file*, i32) #1

declare dso_local i32 @hdmi_read(%struct.sti_hdmi*, i32) #1

declare dso_local i32 @hdmi_dbg_sta(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @DBGFS_PRINT_INT(i8*, i32) #1

declare dso_local i32 @hdmi_dbg_sw_di_cfg(%struct.seq_file*, i32) #1

declare dso_local i32 @DBGFS_DUMP_DI(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
