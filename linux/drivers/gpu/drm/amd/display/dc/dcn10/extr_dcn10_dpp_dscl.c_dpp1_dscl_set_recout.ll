; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_recout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_recout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.rect = type { i64, i32, i64, i32 }

@VISUAL_CONFIRM_DISABLE = common dso_local global i64 0, align 8
@RECOUT_START = common dso_local global i32 0, align 4
@RECOUT_START_X = common dso_local global i32 0, align 4
@RECOUT_START_Y = common dso_local global i32 0, align 4
@RECOUT_SIZE = common dso_local global i32 0, align 4
@RECOUT_WIDTH = common dso_local global i32 0, align 4
@RECOUT_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_dpp*, %struct.rect*)* @dpp1_dscl_set_recout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp1_dscl_set_recout(%struct.dcn10_dpp* %0, %struct.rect* %1) #0 {
  %3 = alloca %struct.dcn10_dpp*, align 8
  %4 = alloca %struct.rect*, align 8
  %5 = alloca i32, align 4
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %3, align 8
  store %struct.rect* %1, %struct.rect** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %7 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VISUAL_CONFIRM_DISABLE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* @RECOUT_START, align 4
  %20 = load i32, i32* @RECOUT_START_X, align 4
  %21 = load %struct.rect*, %struct.rect** %4, align 8
  %22 = getelementptr inbounds %struct.rect, %struct.rect* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RECOUT_START_Y, align 4
  %25 = load %struct.rect*, %struct.rect** %4, align 8
  %26 = getelementptr inbounds %struct.rect, %struct.rect* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @REG_SET_2(i32 %19, i32 0, i32 %20, i32 %23, i32 %24, i64 %27)
  %29 = load i32, i32* @RECOUT_SIZE, align 4
  %30 = load i32, i32* @RECOUT_WIDTH, align 4
  %31 = load %struct.rect*, %struct.rect** %4, align 8
  %32 = getelementptr inbounds %struct.rect, %struct.rect* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RECOUT_HEIGHT, align 4
  %35 = load %struct.rect*, %struct.rect** %4, align 8
  %36 = getelementptr inbounds %struct.rect, %struct.rect* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 4
  %40 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %41 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  %45 = mul nsw i32 %39, %44
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %37, %46
  %48 = call i32 @REG_SET_2(i32 %29, i32 0, i32 %30, i32 %33, i32 %34, i64 %47)
  ret void
}

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
