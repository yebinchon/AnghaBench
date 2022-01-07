; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomctrl.c_atomctrl_initialize_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomctrl.c_atomctrl_initialize_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@VRAM_Info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid VramInfo table.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atomctrl_initialize_mc_reg_table(%struct.pp_hwmgr* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DATA, align 4
  %17 = load i32, i32* @VRAM_Info, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  %19 = call i64 @smu_atom_get_data_table(i32 %15, i32 %18, i32* %12, i32* %10, i32* %11)
  %20 = inttoptr i64 %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %37

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %28
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 0, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = bitcast %struct.TYPE_4__* %41 to i64*
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %42, i64 %47
  %49 = bitcast i64* %48 to i32*
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @atomctrl_set_mc_reg_address_table(i32* %50, i32* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %40, %37
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 0, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* %5, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @atomctrl_retrieve_ac_timing(i64 %57, i32* %58, i32* %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i64 @smu_atom_get_data_table(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @atomctrl_set_mc_reg_address_table(i32*, i32*) #1

declare dso_local i32 @atomctrl_retrieve_ac_timing(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
