; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_dcn10_get_dig_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_dcn10_get_dig_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_encoder = type { i32 }
%struct.dcn10_link_encoder = type { i32 }

@DIG_BE_CNTL = common dso_local global i32 0, align 4
@DIG_FE_SOURCE_SELECT = common dso_local global i32 0, align 4
@ENGINE_ID_DIGA = common dso_local global i32 0, align 4
@ENGINE_ID_DIGB = common dso_local global i32 0, align 4
@ENGINE_ID_DIGC = common dso_local global i32 0, align 4
@ENGINE_ID_DIGD = common dso_local global i32 0, align 4
@ENGINE_ID_DIGE = common dso_local global i32 0, align 4
@ENGINE_ID_DIGF = common dso_local global i32 0, align 4
@ENGINE_ID_DIGG = common dso_local global i32 0, align 4
@ENGINE_ID_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn10_get_dig_frontend(%struct.link_encoder* %0) #0 {
  %2 = alloca %struct.link_encoder*, align 8
  %3 = alloca %struct.dcn10_link_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.link_encoder* %0, %struct.link_encoder** %2, align 8
  %6 = load %struct.link_encoder*, %struct.link_encoder** %2, align 8
  %7 = call %struct.dcn10_link_encoder* @TO_DCN10_LINK_ENC(%struct.link_encoder* %6)
  store %struct.dcn10_link_encoder* %7, %struct.dcn10_link_encoder** %3, align 8
  %8 = load i32, i32* @DIG_BE_CNTL, align 4
  %9 = load i32, i32* @DIG_FE_SOURCE_SELECT, align 4
  %10 = call i32 @REG_GET(i32 %8, i32 %9, i32* %4)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %26 [
    i32 134, label %12
    i32 133, label %14
    i32 132, label %16
    i32 131, label %18
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @ENGINE_ID_DIGA, align 4
  store i32 %13, i32* %5, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @ENGINE_ID_DIGB, align 4
  store i32 %15, i32* %5, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* @ENGINE_ID_DIGC, align 4
  store i32 %17, i32* %5, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* @ENGINE_ID_DIGD, align 4
  store i32 %19, i32* %5, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @ENGINE_ID_DIGE, align 4
  store i32 %21, i32* %5, align 4
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @ENGINE_ID_DIGF, align 4
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @ENGINE_ID_DIGG, align 4
  store i32 %25, i32* %5, align 4
  br label %29

26:                                               ; preds = %1
  %27 = call i32 @ASSERT(i32 0)
  %28 = load i32, i32* @ENGINE_ID_UNKNOWN, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %24, %22, %20, %18, %16, %14, %12
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.dcn10_link_encoder* @TO_DCN10_LINK_ENC(%struct.link_encoder*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
