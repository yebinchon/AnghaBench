; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_display_rq_dlg_helpers.c_print__rq_params_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_display_rq_dlg_helpers.c_print__rq_params_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"DML_RQ_DLG_CALC: ***************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"DML_RQ_DLG_CALC: DISPLAY_RQ_PARAM_ST\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"DML_RQ_DLG_CALC:  <LUMA>\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"DML_RQ_DLG_CALC:  <CHROMA> ===\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"DML_RQ_DLG_CALC: <LUMA>\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"DML_RQ_DLG_CALC: <CHROMA>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print__rq_params_st(%struct.display_mode_lib* %0, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %1) #0 {
  %3 = alloca %struct.display_mode_lib*, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %3, align 8
  %4 = call i32 @dml_print(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @dml_print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @dml_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %7 = load %struct.display_mode_lib*, %struct.display_mode_lib** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @print__data_rq_sizing_params_st(%struct.display_mode_lib* %7, i32 %10)
  %12 = call i32 @dml_print(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %13 = load %struct.display_mode_lib*, %struct.display_mode_lib** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @print__data_rq_sizing_params_st(%struct.display_mode_lib* %13, i32 %16)
  %18 = call i32 @dml_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %19 = load %struct.display_mode_lib*, %struct.display_mode_lib** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @print__data_rq_dlg_params_st(%struct.display_mode_lib* %19, i32 %22)
  %24 = call i32 @dml_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %25 = load %struct.display_mode_lib*, %struct.display_mode_lib** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @print__data_rq_dlg_params_st(%struct.display_mode_lib* %25, i32 %28)
  %30 = call i32 @dml_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.display_mode_lib*, %struct.display_mode_lib** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @print__data_rq_misc_params_st(%struct.display_mode_lib* %31, i32 %34)
  %36 = call i32 @dml_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %37 = load %struct.display_mode_lib*, %struct.display_mode_lib** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @print__data_rq_misc_params_st(%struct.display_mode_lib* %37, i32 %40)
  %42 = call i32 @dml_print(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dml_print(i8*) #1

declare dso_local i32 @print__data_rq_sizing_params_st(%struct.display_mode_lib*, i32) #1

declare dso_local i32 @print__data_rq_dlg_params_st(%struct.display_mode_lib*, i32) #1

declare dso_local i32 @print__data_rq_misc_params_st(%struct.display_mode_lib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
