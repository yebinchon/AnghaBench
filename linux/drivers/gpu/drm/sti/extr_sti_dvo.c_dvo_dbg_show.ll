; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_dvo_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_dvo_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sti_dvo = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"DVO: (vaddr = 0x%p)\00", align 1
@DVO_AWG_DIGSYNC_CTRL = common dso_local global i32 0, align 4
@DVO_DOF_CFG = common dso_local global i32 0, align 4
@DVO_LUT_PROG_LOW = common dso_local global i32 0, align 4
@DVO_LUT_PROG_MID = common dso_local global i32 0, align 4
@DVO_LUT_PROG_HIGH = common dso_local global i32 0, align 4
@DVO_DIGSYNC_INSTR_I = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dvo_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvo_dbg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.sti_dvo*, align 8
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
  %15 = inttoptr i64 %14 to %struct.sti_dvo*
  store %struct.sti_dvo* %15, %struct.sti_dvo** %6, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.sti_dvo*, %struct.sti_dvo** %6, align 8
  %18 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @DVO_AWG_DIGSYNC_CTRL, align 4
  %22 = call i32 @DBGFS_DUMP(i32 %21)
  %23 = load i32, i32* @DVO_DOF_CFG, align 4
  %24 = call i32 @DBGFS_DUMP(i32 %23)
  %25 = load i32, i32* @DVO_LUT_PROG_LOW, align 4
  %26 = call i32 @DBGFS_DUMP(i32 %25)
  %27 = load i32, i32* @DVO_LUT_PROG_MID, align 4
  %28 = call i32 @DBGFS_DUMP(i32 %27)
  %29 = load i32, i32* @DVO_LUT_PROG_HIGH, align 4
  %30 = call i32 @DBGFS_DUMP(i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.sti_dvo*, %struct.sti_dvo** %6, align 8
  %33 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DVO_DIGSYNC_INSTR_I, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @dvo_dbg_awg_microcode(%struct.seq_file* %31, i64 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = call i32 @seq_putc(%struct.seq_file* %38, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @DBGFS_DUMP(i32) #1

declare dso_local i32 @dvo_dbg_awg_microcode(%struct.seq_file*, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
