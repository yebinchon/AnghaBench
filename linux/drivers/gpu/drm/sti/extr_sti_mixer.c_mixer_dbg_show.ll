; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_mixer_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_mixer_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sti_mixer = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"%s: (vaddr = 0x%p)\00", align 1
@GAM_MIXER_CTL = common dso_local global i64 0, align 8
@GAM_MIXER_BKC = common dso_local global i64 0, align 8
@GAM_MIXER_BCO = common dso_local global i64 0, align 8
@GAM_MIXER_BCS = common dso_local global i64 0, align 8
@GAM_MIXER_AVO = common dso_local global i64 0, align 8
@GAM_MIXER_AVS = common dso_local global i64 0, align 8
@GAM_MIXER_CRB = common dso_local global i64 0, align 8
@GAM_MIXER_ACT = common dso_local global i64 0, align 8
@GAM_MIXER_MBP = common dso_local global i64 0, align 8
@GAM_MIXER_MX0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mixer_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_dbg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.sti_mixer*, align 8
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
  %15 = inttoptr i64 %14 to %struct.sti_mixer*
  store %struct.sti_mixer* %15, %struct.sti_mixer** %6, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.sti_mixer*, %struct.sti_mixer** %6, align 8
  %18 = call i32 @sti_mixer_to_str(%struct.sti_mixer* %17)
  %19 = load %struct.sti_mixer*, %struct.sti_mixer** %6, align 8
  %20 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %21)
  %23 = load i64, i64* @GAM_MIXER_CTL, align 8
  %24 = call i32 @DBGFS_DUMP(i64 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.sti_mixer*, %struct.sti_mixer** %6, align 8
  %27 = load i64, i64* @GAM_MIXER_CTL, align 8
  %28 = call i32 @sti_mixer_reg_read(%struct.sti_mixer* %26, i64 %27)
  %29 = call i32 @mixer_dbg_ctl(%struct.seq_file* %25, i32 %28)
  %30 = load i64, i64* @GAM_MIXER_BKC, align 8
  %31 = call i32 @DBGFS_DUMP(i64 %30)
  %32 = load i64, i64* @GAM_MIXER_BCO, align 8
  %33 = call i32 @DBGFS_DUMP(i64 %32)
  %34 = load i64, i64* @GAM_MIXER_BCS, align 8
  %35 = call i32 @DBGFS_DUMP(i64 %34)
  %36 = load i64, i64* @GAM_MIXER_AVO, align 8
  %37 = call i32 @DBGFS_DUMP(i64 %36)
  %38 = load i64, i64* @GAM_MIXER_AVS, align 8
  %39 = call i32 @DBGFS_DUMP(i64 %38)
  %40 = load i64, i64* @GAM_MIXER_CRB, align 8
  %41 = call i32 @DBGFS_DUMP(i64 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.sti_mixer*, %struct.sti_mixer** %6, align 8
  %44 = load i64, i64* @GAM_MIXER_CRB, align 8
  %45 = call i32 @sti_mixer_reg_read(%struct.sti_mixer* %43, i64 %44)
  %46 = call i32 @mixer_dbg_crb(%struct.seq_file* %42, i32 %45)
  %47 = load i64, i64* @GAM_MIXER_ACT, align 8
  %48 = call i32 @DBGFS_DUMP(i64 %47)
  %49 = load i64, i64* @GAM_MIXER_MBP, align 8
  %50 = call i32 @DBGFS_DUMP(i64 %49)
  %51 = load i64, i64* @GAM_MIXER_MX0, align 8
  %52 = call i32 @DBGFS_DUMP(i64 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.sti_mixer*, %struct.sti_mixer** %6, align 8
  %55 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GAM_MIXER_MX0, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @mixer_dbg_mxn(%struct.seq_file* %53, i64 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = call i32 @seq_putc(%struct.seq_file* %60, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i64) #1

declare dso_local i32 @sti_mixer_to_str(%struct.sti_mixer*) #1

declare dso_local i32 @DBGFS_DUMP(i64) #1

declare dso_local i32 @mixer_dbg_ctl(%struct.seq_file*, i32) #1

declare dso_local i32 @sti_mixer_reg_read(%struct.sti_mixer*, i64) #1

declare dso_local i32 @mixer_dbg_crb(%struct.seq_file*, i32) #1

declare dso_local i32 @mixer_dbg_mxn(%struct.seq_file*, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
