; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_program_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_program_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dcn_watermark_set = type { i32 }
%struct.dcn10_hubbub = type { i32 }

@DCHUBBUB_ARB_SAT_LEVEL = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DF_REQ_OUTSTAND = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_MIN_REQ_OUTSTAND = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_WATERMARK_CHANGE_CNTL = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_WATERMARK_CHANGE_DONE_INTERRUPT_DISABLE = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub1_program_watermarks(%struct.hubbub* %0, %struct.dcn_watermark_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hubbub*, align 8
  %6 = alloca %struct.dcn_watermark_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn10_hubbub*, align 8
  store %struct.hubbub* %0, %struct.hubbub** %5, align 8
  store %struct.dcn_watermark_set* %1, %struct.dcn_watermark_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %11 = call %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub* %10)
  store %struct.dcn10_hubbub* %11, %struct.dcn10_hubbub** %9, align 8
  %12 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %13 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @hubbub1_program_urgent_watermarks(%struct.hubbub* %12, %struct.dcn_watermark_set* %13, i32 %14, i32 %15)
  %17 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %18 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @hubbub1_program_stutter_watermarks(%struct.hubbub* %17, %struct.dcn_watermark_set* %18, i32 %19, i32 %20)
  %22 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %23 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @hubbub1_program_pstate_watermarks(%struct.hubbub* %22, %struct.dcn_watermark_set* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @DCHUBBUB_ARB_SAT_LEVEL, align 4
  %28 = load i32, i32* @DCHUBBUB_ARB_SAT_LEVEL, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul i32 60, %29
  %31 = call i32 @REG_UPDATE(i32 %27, i32 %28, i32 %30)
  %32 = load i32, i32* @DCHUBBUB_ARB_DF_REQ_OUTSTAND, align 4
  %33 = load i32, i32* @DCHUBBUB_ARB_MIN_REQ_OUTSTAND, align 4
  %34 = call i32 @REG_UPDATE(i32 %32, i32 %33, i32 68)
  %35 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %36 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %37 = getelementptr inbounds %struct.hubbub, %struct.hubbub* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @hubbub1_allow_self_refresh_control(%struct.hubbub* %35, i32 %46)
  ret void
}

declare dso_local %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @hubbub1_program_urgent_watermarks(%struct.hubbub*, %struct.dcn_watermark_set*, i32, i32) #1

declare dso_local i32 @hubbub1_program_stutter_watermarks(%struct.hubbub*, %struct.dcn_watermark_set*, i32, i32) #1

declare dso_local i32 @hubbub1_program_pstate_watermarks(%struct.hubbub*, %struct.dcn_watermark_set*, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @hubbub1_allow_self_refresh_control(%struct.hubbub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
