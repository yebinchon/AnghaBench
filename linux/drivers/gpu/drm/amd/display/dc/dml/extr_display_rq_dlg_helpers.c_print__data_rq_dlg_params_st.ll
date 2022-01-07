; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_display_rq_dlg_helpers.c_print__data_rq_dlg_params_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_display_rq_dlg_helpers.c_print__data_rq_dlg_params_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"DML_RQ_DLG_CALC: =====================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"DML_RQ_DLG_CALC: DISPLAY_DATA_RQ_DLG_PARAM_ST\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    swath_width_ub              = %0d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    swath_height                = %0d\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    req_per_swath_ub            = %0d\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    meta_pte_bytes_per_frame_ub = %0d\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    dpte_req_per_row_ub         = %0d\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    dpte_groups_per_row_ub      = %0d\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    dpte_row_height             = %0d\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    dpte_bytes_per_row_ub       = %0d\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    meta_chunks_per_row_ub      = %0d\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    meta_req_per_row_ub         = %0d\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    meta_row_height             = %0d\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"DML_RQ_DLG_CALC:    meta_bytes_per_row_ub       = %0d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print__data_rq_dlg_params_st(%struct.display_mode_lib* %0, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %1) #0 {
  %3 = alloca %struct.display_mode_lib*, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %3, align 8
  %4 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 11
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 10
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i32 %40)
  %42 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dml_print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
