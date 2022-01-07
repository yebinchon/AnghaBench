; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_display_rq_dlg_helpers.c_print__rq_dlg_params_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_display_rq_dlg_helpers.c_print__rq_dlg_params_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"DML_RQ_DLG_CALC: =====================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"DML_RQ_DLG_CALC: DISPLAY_RQ_DLG_PARAM_ST\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"DML_RQ_DLG_CALC:  <LUMA>\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"DML_RQ_DLG_CALC:  <CHROMA>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print__rq_dlg_params_st(%struct.display_mode_lib* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca %struct.display_mode_lib*, align 8
  %5 = bitcast %struct.TYPE_3__* %3 to i64*
  store i64 %1, i64* %5, align 4
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %4, align 8
  %6 = call i32 @dml_print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @dml_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @dml_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %9 = load %struct.display_mode_lib*, %struct.display_mode_lib** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @print__data_rq_dlg_params_st(%struct.display_mode_lib* %9, i32 %11)
  %13 = call i32 @dml_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %14 = load %struct.display_mode_lib*, %struct.display_mode_lib** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @print__data_rq_dlg_params_st(%struct.display_mode_lib* %14, i32 %16)
  %18 = call i32 @dml_print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dml_print(i8*) #1

declare dso_local i32 @print__data_rq_dlg_params_st(%struct.display_mode_lib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
