; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_gen7_bsd_get_cmd_length_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_gen7_bsd_get_cmd_length_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSTR_CLIENT_SHIFT = common dso_local global i64 0, align 8
@INSTR_SUBCLIENT_MASK = common dso_local global i64 0, align 8
@INSTR_SUBCLIENT_SHIFT = common dso_local global i64 0, align 8
@INSTR_26_TO_24_MASK = common dso_local global i64 0, align 8
@INSTR_26_TO_24_SHIFT = common dso_local global i64 0, align 8
@INSTR_MI_CLIENT = common dso_local global i64 0, align 8
@INSTR_RC_CLIENT = common dso_local global i64 0, align 8
@INSTR_MEDIA_SUBCLIENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"CMD: Abnormal bsd cmd length! 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @gen7_bsd_get_cmd_length_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gen7_bsd_get_cmd_length_mask(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @INSTR_CLIENT_SHIFT, align 8
  %9 = ashr i64 %7, %8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @INSTR_SUBCLIENT_MASK, align 8
  %12 = and i64 %10, %11
  %13 = load i64, i64* @INSTR_SUBCLIENT_SHIFT, align 8
  %14 = ashr i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @INSTR_26_TO_24_MASK, align 8
  %17 = and i64 %15, %16
  %18 = load i64, i64* @INSTR_26_TO_24_SHIFT, align 8
  %19 = ashr i64 %17, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @INSTR_MI_CLIENT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i64 63, i64* %2, align 8
  br label %42

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @INSTR_RC_CLIENT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @INSTR_MEDIA_SUBCLIENT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 6
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i64 65535, i64* %2, align 8
  br label %42

36:                                               ; preds = %32
  store i64 4095, i64* %2, align 8
  br label %42

37:                                               ; preds = %28
  store i64 255, i64* %2, align 8
  br label %42

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %40)
  store i64 0, i64* %2, align 8
  br label %42

42:                                               ; preds = %39, %37, %36, %35, %23
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
