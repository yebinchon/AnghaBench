; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_dml1_display_rq_dlg_calc.c_dml1_extract_rq_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_dml1_display_rq_dlg_calc.c_dml1_extract_rq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct._vcs_dpi_display_rq_regs_st = type { i32, i32, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i8* }
%struct._vcs_dpi_display_rq_params_st = type { %struct.TYPE_19__, i64, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dml1_extract_rq_regs(%struct.display_mode_lib* %0, %struct._vcs_dpi_display_rq_regs_st* %1, %struct._vcs_dpi_display_rq_params_st* byval(%struct._vcs_dpi_display_rq_params_st) align 8 %2) #0 {
  %4 = alloca %struct.display_mode_lib*, align 8
  %5 = alloca %struct._vcs_dpi_display_rq_regs_st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %4, align 8
  store %struct._vcs_dpi_display_rq_regs_st* %1, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %8 = load %struct.display_mode_lib*, %struct.display_mode_lib** %4, align 8
  %9 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 1024
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.display_mode_lib*, %struct.display_mode_lib** %4, align 8
  %14 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %15 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct._vcs_dpi_display_rq_params_st, %struct._vcs_dpi_display_rq_params_st* %2, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @extract_rq_sizing_regs(%struct.display_mode_lib* %13, %struct.TYPE_20__* %15, i32 %19)
  %21 = getelementptr inbounds %struct._vcs_dpi_display_rq_params_st, %struct._vcs_dpi_display_rq_params_st* %2, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.display_mode_lib*, %struct.display_mode_lib** %4, align 8
  %26 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %27 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct._vcs_dpi_display_rq_params_st, %struct._vcs_dpi_display_rq_params_st* %2, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @extract_rq_sizing_regs(%struct.display_mode_lib* %25, %struct.TYPE_20__* %27, i32 %31)
  br label %33

33:                                               ; preds = %24, %3
  %34 = getelementptr inbounds %struct._vcs_dpi_display_rq_params_st, %struct._vcs_dpi_display_rq_params_st* %2, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @dml_log2(i32 %37)
  %39 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %40 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = getelementptr inbounds %struct._vcs_dpi_display_rq_params_st, %struct._vcs_dpi_display_rq_params_st* %2, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @dml_log2(i32 %45)
  %47 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %48 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = getelementptr inbounds %struct._vcs_dpi_display_rq_params_st, %struct._vcs_dpi_display_rq_params_st* %2, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 32768
  br i1 %54, label %55, label %58

55:                                               ; preds = %33
  %56 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %57 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %61

58:                                               ; preds = %33
  %59 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %60 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %59, i32 0, i32 0
  store i32 2, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %63 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %65 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %67 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %66, i32 0, i32 3
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds %struct._vcs_dpi_display_rq_params_st, %struct._vcs_dpi_display_rq_params_st* %2, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct._vcs_dpi_display_rq_params_st, %struct._vcs_dpi_display_rq_params_st* %2, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to double
  %77 = getelementptr inbounds %struct._vcs_dpi_display_rq_params_st, %struct._vcs_dpi_display_rq_params_st* %2, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sitofp i64 %80 to double
  %82 = fdiv double %76, %81
  %83 = fcmp ole double %82, 1.500000e+00
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load i32, i32* %6, align 4
  %86 = uitofp i32 %85 to double
  %87 = fdiv double %86, 2.000000e+00
  %88 = fdiv double %87, 6.400000e+01
  %89 = fptoui double %88 to i32
  store i32 %89, i32* %7, align 4
  br label %99

90:                                               ; preds = %71
  %91 = load i32, i32* %6, align 4
  %92 = uitofp i32 %91 to double
  %93 = fmul double 2.000000e+00, %92
  %94 = fdiv double %93, 3.000000e+00
  %95 = fptoui double %94 to i32
  %96 = call double @dml_round_to_multiple(i32 %95, i32 256, i32 0)
  %97 = fdiv double %96, 6.400000e+01
  %98 = fptoui double %97 to i32
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %90, %84
  br label %100

100:                                              ; preds = %99, %61
  %101 = load i32, i32* %7, align 4
  %102 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %5, align 8
  %103 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  ret void
}

declare dso_local i32 @extract_rq_sizing_regs(%struct.display_mode_lib*, %struct.TYPE_20__*, i32) #1

declare dso_local i8* @dml_log2(i32) #1

declare dso_local double @dml_round_to_multiple(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
