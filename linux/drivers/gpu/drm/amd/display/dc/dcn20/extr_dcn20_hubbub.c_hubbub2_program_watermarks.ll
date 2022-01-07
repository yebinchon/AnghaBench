; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_program_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_program_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.dcn_watermark_set = type { i32 }
%struct.dcn20_hubbub = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@DCHUBBUB_ARB_SAT_LEVEL = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DF_REQ_OUTSTAND = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_MIN_REQ_OUTSTAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hubbub*, %struct.dcn_watermark_set*, i32, i32)* @hubbub2_program_watermarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hubbub2_program_watermarks(%struct.hubbub* %0, %struct.dcn_watermark_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hubbub*, align 8
  %6 = alloca %struct.dcn_watermark_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn20_hubbub*, align 8
  store %struct.hubbub* %0, %struct.hubbub** %5, align 8
  store %struct.dcn_watermark_set* %1, %struct.dcn_watermark_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %11 = call %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub* %10)
  store %struct.dcn20_hubbub* %11, %struct.dcn20_hubbub** %9, align 8
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
  %22 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %23 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %48

34:                                               ; preds = %4
  %35 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %36 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %34, %4
  %49 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %50 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @hubbub1_program_pstate_watermarks(%struct.hubbub* %49, %struct.dcn_watermark_set* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @DCHUBBUB_ARB_SAT_LEVEL, align 4
  %55 = load i32, i32* @DCHUBBUB_ARB_SAT_LEVEL, align 4
  %56 = load i32, i32* %7, align 4
  %57 = mul i32 60, %56
  %58 = call i32 @REG_SET(i32 %54, i32 0, i32 %55, i32 %57)
  %59 = load i32, i32* @DCHUBBUB_ARB_DF_REQ_OUTSTAND, align 4
  %60 = load i32, i32* @DCHUBBUB_ARB_MIN_REQ_OUTSTAND, align 4
  %61 = call i32 @REG_UPDATE(i32 %59, i32 %60, i32 180)
  %62 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %63 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %64 = getelementptr inbounds %struct.hubbub, %struct.hubbub* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @hubbub1_allow_self_refresh_control(%struct.hubbub* %62, i32 %73)
  ret void
}

declare dso_local %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @hubbub1_program_urgent_watermarks(%struct.hubbub*, %struct.dcn_watermark_set*, i32, i32) #1

declare dso_local i32 @hubbub1_program_stutter_watermarks(%struct.hubbub*, %struct.dcn_watermark_set*, i32, i32) #1

declare dso_local i32 @hubbub1_program_pstate_watermarks(%struct.hubbub*, %struct.dcn_watermark_set*, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @hubbub1_allow_self_refresh_control(%struct.hubbub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
