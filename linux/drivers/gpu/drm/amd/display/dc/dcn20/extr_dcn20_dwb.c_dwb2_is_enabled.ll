; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb.c_dwb2_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb.c_dwb2_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwbc = type { i32 }
%struct.dcn20_dwbc = type { i32 }

@WB_ENABLE = common dso_local global i32 0, align 4
@CNV_MODE = common dso_local global i32 0, align 4
@CNV_FRAME_CAPTURE_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwb2_is_enabled(%struct.dwbc* %0) #0 {
  %2 = alloca %struct.dwbc*, align 8
  %3 = alloca %struct.dcn20_dwbc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwbc* %0, %struct.dwbc** %2, align 8
  %6 = load %struct.dwbc*, %struct.dwbc** %2, align 8
  %7 = call %struct.dcn20_dwbc* @TO_DCN20_DWBC(%struct.dwbc* %6)
  store %struct.dcn20_dwbc* %7, %struct.dcn20_dwbc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @WB_ENABLE, align 4
  %9 = load i32, i32* @WB_ENABLE, align 4
  %10 = call i32 @REG_GET(i32 %8, i32 %9, i32* %4)
  %11 = load i32, i32* @CNV_MODE, align 4
  %12 = load i32, i32* @CNV_FRAME_CAPTURE_EN, align 4
  %13 = call i32 @REG_GET(i32 %11, i32 %12, i32* %5)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi i1 [ false, %1 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local %struct.dcn20_dwbc* @TO_DCN20_DWBC(%struct.dwbc*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
