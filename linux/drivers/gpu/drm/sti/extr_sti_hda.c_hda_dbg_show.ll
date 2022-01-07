; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_hda_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_hda_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sti_hda = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"HD Analog: (vaddr = 0x%p)\00", align 1
@HDA_ANA_CFG = common dso_local global i64 0, align 8
@HDA_ANA_SCALE_CTRL_Y = common dso_local global i64 0, align 8
@HDA_ANA_SCALE_CTRL_CB = common dso_local global i64 0, align 8
@HDA_ANA_SCALE_CTRL_CR = common dso_local global i64 0, align 8
@HDA_ANA_ANC_CTRL = common dso_local global i64 0, align 8
@HDA_ANA_SRC_Y_CFG = common dso_local global i64 0, align 8
@HDA_ANA_SRC_C_CFG = common dso_local global i64 0, align 8
@HDA_SYNC_AWGI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @hda_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_dbg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.sti_hda*, align 8
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
  %15 = inttoptr i64 %14 to %struct.sti_hda*
  store %struct.sti_hda* %15, %struct.sti_hda** %6, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.sti_hda*, %struct.sti_hda** %6, align 8
  %18 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* @HDA_ANA_CFG, align 8
  %22 = call i32 @DBGFS_DUMP(i64 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.sti_hda*, %struct.sti_hda** %6, align 8
  %25 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HDA_ANA_CFG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = call i32 @hda_dbg_cfg(%struct.seq_file* %23, i32 %29)
  %31 = load i64, i64* @HDA_ANA_SCALE_CTRL_Y, align 8
  %32 = call i32 @DBGFS_DUMP(i64 %31)
  %33 = load i64, i64* @HDA_ANA_SCALE_CTRL_CB, align 8
  %34 = call i32 @DBGFS_DUMP(i64 %33)
  %35 = load i64, i64* @HDA_ANA_SCALE_CTRL_CR, align 8
  %36 = call i32 @DBGFS_DUMP(i64 %35)
  %37 = load i64, i64* @HDA_ANA_ANC_CTRL, align 8
  %38 = call i32 @DBGFS_DUMP(i64 %37)
  %39 = load i64, i64* @HDA_ANA_SRC_Y_CFG, align 8
  %40 = call i32 @DBGFS_DUMP(i64 %39)
  %41 = load i64, i64* @HDA_ANA_SRC_C_CFG, align 8
  %42 = call i32 @DBGFS_DUMP(i64 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.sti_hda*, %struct.sti_hda** %6, align 8
  %45 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HDA_SYNC_AWGI, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @hda_dbg_awg_microcode(%struct.seq_file* %43, i64 %48)
  %50 = load %struct.sti_hda*, %struct.sti_hda** %6, align 8
  %51 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %2
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = load %struct.sti_hda*, %struct.sti_hda** %6, align 8
  %57 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @hda_dbg_video_dacs_ctrl(%struct.seq_file* %55, i64 %58)
  br label %60

60:                                               ; preds = %54, %2
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = call i32 @seq_putc(%struct.seq_file* %61, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @DBGFS_DUMP(i64) #1

declare dso_local i32 @hda_dbg_cfg(%struct.seq_file*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @hda_dbg_awg_microcode(%struct.seq_file*, i64) #1

declare dso_local i32 @hda_dbg_video_dacs_ctrl(%struct.seq_file*, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
