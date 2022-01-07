; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vid.c_vid_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vid.c_vid_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sti_vid = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"VID: (vaddr= 0x%p)\00", align 1
@VID_CTL = common dso_local global i64 0, align 8
@VID_ALP = common dso_local global i64 0, align 8
@VID_CLF = common dso_local global i64 0, align 8
@VID_VPO = common dso_local global i64 0, align 8
@VID_VPS = common dso_local global i64 0, align 8
@VID_KEY1 = common dso_local global i64 0, align 8
@VID_KEY2 = common dso_local global i64 0, align 8
@VID_MPR0 = common dso_local global i64 0, align 8
@VID_MPR1 = common dso_local global i64 0, align 8
@VID_MPR2 = common dso_local global i64 0, align 8
@VID_MPR3 = common dso_local global i64 0, align 8
@VID_MST = common dso_local global i64 0, align 8
@VID_BC = common dso_local global i64 0, align 8
@VID_TINT = common dso_local global i64 0, align 8
@VID_CSAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @vid_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vid_dbg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.sti_vid*, align 8
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
  %15 = inttoptr i64 %14 to %struct.sti_vid*
  store %struct.sti_vid* %15, %struct.sti_vid** %6, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.sti_vid*, %struct.sti_vid** %6, align 8
  %18 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* @VID_CTL, align 8
  %22 = call i32 @DBGFS_DUMP(i64 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.sti_vid*, %struct.sti_vid** %6, align 8
  %25 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VID_CTL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = call i32 @vid_dbg_ctl(%struct.seq_file* %23, i32 %29)
  %31 = load i64, i64* @VID_ALP, align 8
  %32 = call i32 @DBGFS_DUMP(i64 %31)
  %33 = load i64, i64* @VID_CLF, align 8
  %34 = call i32 @DBGFS_DUMP(i64 %33)
  %35 = load i64, i64* @VID_VPO, align 8
  %36 = call i32 @DBGFS_DUMP(i64 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.sti_vid*, %struct.sti_vid** %6, align 8
  %39 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VID_VPO, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  %44 = call i32 @vid_dbg_vpo(%struct.seq_file* %37, i32 %43)
  %45 = load i64, i64* @VID_VPS, align 8
  %46 = call i32 @DBGFS_DUMP(i64 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = load %struct.sti_vid*, %struct.sti_vid** %6, align 8
  %49 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VID_VPS, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  %54 = call i32 @vid_dbg_vps(%struct.seq_file* %47, i32 %53)
  %55 = load i64, i64* @VID_KEY1, align 8
  %56 = call i32 @DBGFS_DUMP(i64 %55)
  %57 = load i64, i64* @VID_KEY2, align 8
  %58 = call i32 @DBGFS_DUMP(i64 %57)
  %59 = load i64, i64* @VID_MPR0, align 8
  %60 = call i32 @DBGFS_DUMP(i64 %59)
  %61 = load i64, i64* @VID_MPR1, align 8
  %62 = call i32 @DBGFS_DUMP(i64 %61)
  %63 = load i64, i64* @VID_MPR2, align 8
  %64 = call i32 @DBGFS_DUMP(i64 %63)
  %65 = load i64, i64* @VID_MPR3, align 8
  %66 = call i32 @DBGFS_DUMP(i64 %65)
  %67 = load i64, i64* @VID_MST, align 8
  %68 = call i32 @DBGFS_DUMP(i64 %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.sti_vid*, %struct.sti_vid** %6, align 8
  %71 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VID_MST, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @readl(i64 %74)
  %76 = call i32 @vid_dbg_mst(%struct.seq_file* %69, i32 %75)
  %77 = load i64, i64* @VID_BC, align 8
  %78 = call i32 @DBGFS_DUMP(i64 %77)
  %79 = load i64, i64* @VID_TINT, align 8
  %80 = call i32 @DBGFS_DUMP(i64 %79)
  %81 = load i64, i64* @VID_CSAT, align 8
  %82 = call i32 @DBGFS_DUMP(i64 %81)
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = call i32 @seq_putc(%struct.seq_file* %83, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @DBGFS_DUMP(i64) #1

declare dso_local i32 @vid_dbg_ctl(%struct.seq_file*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @vid_dbg_vpo(%struct.seq_file*, i32) #1

declare dso_local i32 @vid_dbg_vps(%struct.seq_file*, i32) #1

declare dso_local i32 @vid_dbg_mst(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
