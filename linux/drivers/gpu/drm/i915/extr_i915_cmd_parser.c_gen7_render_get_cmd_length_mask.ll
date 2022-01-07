; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_gen7_render_get_cmd_length_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_gen7_render_get_cmd_length_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSTR_CLIENT_SHIFT = common dso_local global i64 0, align 8
@INSTR_SUBCLIENT_MASK = common dso_local global i64 0, align 8
@INSTR_SUBCLIENT_SHIFT = common dso_local global i64 0, align 8
@INSTR_MI_CLIENT = common dso_local global i64 0, align 8
@INSTR_RC_CLIENT = common dso_local global i64 0, align 8
@INSTR_MEDIA_SUBCLIENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"CMD: Abnormal rcs cmd length! 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @gen7_render_get_cmd_length_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gen7_render_get_cmd_length_mask(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @INSTR_CLIENT_SHIFT, align 8
  %8 = ashr i64 %6, %7
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @INSTR_SUBCLIENT_MASK, align 8
  %11 = and i64 %9, %10
  %12 = load i64, i64* @INSTR_SUBCLIENT_SHIFT, align 8
  %13 = ashr i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @INSTR_MI_CLIENT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i64 63, i64* %2, align 8
  br label %32

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @INSTR_RC_CLIENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @INSTR_MEDIA_SUBCLIENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 65535, i64* %2, align 8
  br label %32

27:                                               ; preds = %22
  store i64 255, i64* %2, align 8
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i64 0, i64* %2, align 8
  br label %32

32:                                               ; preds = %29, %27, %26, %17
  %33 = load i64, i64* %2, align 8
  ret i64 %33
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
