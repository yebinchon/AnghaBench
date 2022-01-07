; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_cursor_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_cursor_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sti_cursor = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s: (vaddr = 0x%p)\00", align 1
@CUR_CTL = common dso_local global i64 0, align 8
@CUR_VPO = common dso_local global i64 0, align 8
@CUR_PML = common dso_local global i64 0, align 8
@CUR_PMP = common dso_local global i64 0, align 8
@CUR_SIZE = common dso_local global i64 0, align 8
@CUR_CML = common dso_local global i64 0, align 8
@CUR_AWS = common dso_local global i64 0, align 8
@CUR_AWE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cursor_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cursor_dbg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.sti_cursor*, align 8
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
  %15 = inttoptr i64 %14 to %struct.sti_cursor*
  store %struct.sti_cursor* %15, %struct.sti_cursor** %6, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.sti_cursor*, %struct.sti_cursor** %6, align 8
  %18 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %17, i32 0, i32 1
  %19 = call i32 @sti_plane_to_str(i32* %18)
  %20 = load %struct.sti_cursor*, %struct.sti_cursor** %6, align 8
  %21 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %22)
  %24 = load i64, i64* @CUR_CTL, align 8
  %25 = call i32 @DBGFS_DUMP(i64 %24)
  %26 = load i64, i64* @CUR_VPO, align 8
  %27 = call i32 @DBGFS_DUMP(i64 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.sti_cursor*, %struct.sti_cursor** %6, align 8
  %30 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CUR_VPO, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  %35 = call i32 @cursor_dbg_vpo(%struct.seq_file* %28, i32 %34)
  %36 = load i64, i64* @CUR_PML, align 8
  %37 = call i32 @DBGFS_DUMP(i64 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.sti_cursor*, %struct.sti_cursor** %6, align 8
  %40 = load %struct.sti_cursor*, %struct.sti_cursor** %6, align 8
  %41 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CUR_PML, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = call i32 @cursor_dbg_pml(%struct.seq_file* %38, %struct.sti_cursor* %39, i32 %45)
  %47 = load i64, i64* @CUR_PMP, align 8
  %48 = call i32 @DBGFS_DUMP(i64 %47)
  %49 = load i64, i64* @CUR_SIZE, align 8
  %50 = call i32 @DBGFS_DUMP(i64 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load %struct.sti_cursor*, %struct.sti_cursor** %6, align 8
  %53 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CUR_SIZE, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  %58 = call i32 @cursor_dbg_size(%struct.seq_file* %51, i32 %57)
  %59 = load i64, i64* @CUR_CML, align 8
  %60 = call i32 @DBGFS_DUMP(i64 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = load %struct.sti_cursor*, %struct.sti_cursor** %6, align 8
  %63 = load %struct.sti_cursor*, %struct.sti_cursor** %6, align 8
  %64 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CUR_CML, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readl(i64 %67)
  %69 = call i32 @cursor_dbg_cml(%struct.seq_file* %61, %struct.sti_cursor* %62, i32 %68)
  %70 = load i64, i64* @CUR_AWS, align 8
  %71 = call i32 @DBGFS_DUMP(i64 %70)
  %72 = load i64, i64* @CUR_AWE, align 8
  %73 = call i32 @DBGFS_DUMP(i64 %72)
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = call i32 @seq_putc(%struct.seq_file* %74, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i64) #1

declare dso_local i32 @sti_plane_to_str(i32*) #1

declare dso_local i32 @DBGFS_DUMP(i64) #1

declare dso_local i32 @cursor_dbg_vpo(%struct.seq_file*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cursor_dbg_pml(%struct.seq_file*, %struct.sti_cursor*, i32) #1

declare dso_local i32 @cursor_dbg_size(%struct.seq_file*, i32) #1

declare dso_local i32 @cursor_dbg_cml(%struct.seq_file*, %struct.sti_cursor*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
