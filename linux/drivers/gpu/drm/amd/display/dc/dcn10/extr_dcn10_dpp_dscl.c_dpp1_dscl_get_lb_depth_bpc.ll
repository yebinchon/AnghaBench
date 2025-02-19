; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_get_lb_depth_bpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_get_lb_depth_bpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LB_PIXEL_DEPTH_30BPP = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_24BPP = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_18BPP = common dso_local global i32 0, align 4
@LB_PIXEL_DEPTH_36BPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dpp1_dscl_get_lb_depth_bpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp1_dscl_get_lb_depth_bpc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @LB_PIXEL_DEPTH_30BPP, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 10, i32* %2, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @LB_PIXEL_DEPTH_24BPP, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 8, i32* %2, align 4
  br label %25

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @LB_PIXEL_DEPTH_18BPP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 6, i32* %2, align 4
  br label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @LB_PIXEL_DEPTH_36BPP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 12, i32* %2, align 4
  br label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 -1, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %22, %17, %12, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
