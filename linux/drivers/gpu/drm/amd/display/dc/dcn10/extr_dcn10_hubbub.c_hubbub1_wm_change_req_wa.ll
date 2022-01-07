; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_wm_change_req_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_wm_change_req_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn10_hubbub = type { i32 }

@DCHUBBUB_ARB_WATERMARK_CHANGE_CNTL = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub1_wm_change_req_wa(%struct.hubbub* %0) #0 {
  %2 = alloca %struct.hubbub*, align 8
  %3 = alloca %struct.dcn10_hubbub*, align 8
  store %struct.hubbub* %0, %struct.hubbub** %2, align 8
  %4 = load %struct.hubbub*, %struct.hubbub** %2, align 8
  %5 = call %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub* %4)
  store %struct.dcn10_hubbub* %5, %struct.dcn10_hubbub** %3, align 8
  %6 = load i32, i32* @DCHUBBUB_ARB_WATERMARK_CHANGE_CNTL, align 4
  %7 = load i32, i32* @DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST, align 4
  %8 = load i32, i32* @DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST, align 4
  %9 = call i32 @REG_UPDATE_SEQ_2(i32 %6, i32 %7, i32 0, i32 %8, i32 1)
  ret void
}

declare dso_local %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @REG_UPDATE_SEQ_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
