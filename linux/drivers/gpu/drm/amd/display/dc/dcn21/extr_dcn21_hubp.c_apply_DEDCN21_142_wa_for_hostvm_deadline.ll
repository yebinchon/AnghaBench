; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubp.c_apply_DEDCN21_142_wa_for_hostvm_deadline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubp.c_apply_DEDCN21_142_wa_for_hostvm_deadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct._vcs_dpi_display_dlg_regs_st = type { i64, i64, i64, i64, i64, i64 }
%struct.dcn21_hubp = type { i32 }

@VBLANK_PARAMETERS_5 = common dso_local global i32 0, align 4
@REFCYC_PER_VM_GROUP_VBLANK = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_6 = common dso_local global i32 0, align 4
@REFCYC_PER_VM_REQ_VBLANK = common dso_local global i32 0, align 4
@FLIP_PARAMETERS_3 = common dso_local global i32 0, align 4
@REFCYC_PER_VM_GROUP_FLIP = common dso_local global i32 0, align 4
@FLIP_PARAMETERS_4 = common dso_local global i32 0, align 4
@REFCYC_PER_VM_REQ_FLIP = common dso_local global i32 0, align 4
@FLIP_PARAMETERS_5 = common dso_local global i32 0, align 4
@REFCYC_PER_PTE_GROUP_FLIP_C = common dso_local global i32 0, align 4
@FLIP_PARAMETERS_6 = common dso_local global i32 0, align 4
@REFCYC_PER_META_CHUNK_FLIP_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apply_DEDCN21_142_wa_for_hostvm_deadline(%struct.hubp* %0, %struct._vcs_dpi_display_dlg_regs_st* %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca %struct._vcs_dpi_display_dlg_regs_st*, align 8
  %5 = alloca %struct.dcn21_hubp*, align 8
  %6 = alloca i64, align 8
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store %struct._vcs_dpi_display_dlg_regs_st* %1, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %7 = load %struct.hubp*, %struct.hubp** %3, align 8
  %8 = call %struct.dcn21_hubp* @TO_DCN21_HUBP(%struct.hubp* %7)
  store %struct.dcn21_hubp* %8, %struct.dcn21_hubp** %5, align 8
  %9 = load i32, i32* @VBLANK_PARAMETERS_5, align 4
  %10 = load i32, i32* @REFCYC_PER_VM_GROUP_VBLANK, align 4
  %11 = call i32 @REG_GET(i32 %9, i32 %10, i64* %6)
  %12 = load i64, i64* %6, align 8
  %13 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %14 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @VBLANK_PARAMETERS_5, align 4
  %19 = load i32, i32* @REFCYC_PER_VM_GROUP_VBLANK, align 4
  %20 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %21 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @REG_SET(i32 %18, i32 0, i32 %19, i64 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load i32, i32* @VBLANK_PARAMETERS_6, align 4
  %26 = load i32, i32* @REFCYC_PER_VM_REQ_VBLANK, align 4
  %27 = call i32 @REG_GET(i32 %25, i32 %26, i64* %6)
  %28 = load i64, i64* %6, align 8
  %29 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %30 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load i32, i32* @VBLANK_PARAMETERS_6, align 4
  %35 = load i32, i32* @REFCYC_PER_VM_REQ_VBLANK, align 4
  %36 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %37 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @REG_SET(i32 %34, i32 0, i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %33, %24
  %41 = load i32, i32* @FLIP_PARAMETERS_3, align 4
  %42 = load i32, i32* @REFCYC_PER_VM_GROUP_FLIP, align 4
  %43 = call i32 @REG_GET(i32 %41, i32 %42, i64* %6)
  %44 = load i64, i64* %6, align 8
  %45 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %46 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load i32, i32* @FLIP_PARAMETERS_3, align 4
  %51 = load i32, i32* @REFCYC_PER_VM_GROUP_FLIP, align 4
  %52 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %53 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @REG_SET(i32 %50, i32 0, i32 %51, i64 %54)
  br label %56

56:                                               ; preds = %49, %40
  %57 = load i32, i32* @FLIP_PARAMETERS_4, align 4
  %58 = load i32, i32* @REFCYC_PER_VM_REQ_FLIP, align 4
  %59 = call i32 @REG_GET(i32 %57, i32 %58, i64* %6)
  %60 = load i64, i64* %6, align 8
  %61 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %62 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32, i32* @FLIP_PARAMETERS_4, align 4
  %67 = load i32, i32* @REFCYC_PER_VM_REQ_FLIP, align 4
  %68 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %69 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @REG_SET(i32 %66, i32 0, i32 %67, i64 %70)
  br label %72

72:                                               ; preds = %65, %56
  %73 = load i32, i32* @FLIP_PARAMETERS_5, align 4
  %74 = load i32, i32* @REFCYC_PER_PTE_GROUP_FLIP_C, align 4
  %75 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %76 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @REG_SET(i32 %73, i32 0, i32 %74, i64 %77)
  %79 = load i32, i32* @FLIP_PARAMETERS_6, align 4
  %80 = load i32, i32* @REFCYC_PER_META_CHUNK_FLIP_C, align 4
  %81 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %4, align 8
  %82 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @REG_SET(i32 %79, i32 0, i32 %80, i64 %83)
  ret void
}

declare dso_local %struct.dcn21_hubp* @TO_DCN21_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
