; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_toggle_watermark_change_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_toggle_watermark_change_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn10_hubbub = type { i32 }

@DCHUBBUB_ARB_WATERMARK_CHANGE_CNTL = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub1_toggle_watermark_change_req(%struct.hubbub* %0) #0 {
  %2 = alloca %struct.hubbub*, align 8
  %3 = alloca %struct.dcn10_hubbub*, align 8
  %4 = alloca i32, align 4
  store %struct.hubbub* %0, %struct.hubbub** %2, align 8
  %5 = load %struct.hubbub*, %struct.hubbub** %2, align 8
  %6 = call %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub* %5)
  store %struct.dcn10_hubbub* %6, %struct.dcn10_hubbub** %3, align 8
  %7 = load i32, i32* @DCHUBBUB_ARB_WATERMARK_CHANGE_CNTL, align 4
  %8 = load i32, i32* @DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST, align 4
  %9 = call i32 @REG_GET(i32 %7, i32 %8, i32* %4)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

13:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* @DCHUBBUB_ARB_WATERMARK_CHANGE_CNTL, align 4
  %16 = load i32, i32* @DCHUBBUB_ARB_WATERMARK_CHANGE_REQUEST, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @REG_UPDATE(i32 %15, i32 %16, i32 %17)
  ret void
}

declare dso_local %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
