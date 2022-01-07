; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser_common.c_generic_id_from_bios_object_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser_common.c_generic_id_from_bios_object_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_ID_MXM_OPM = common dso_local global i32 0, align 4
@GENERIC_ID_GLSYNC = common dso_local global i32 0, align 4
@GENERIC_ID_STEREO = common dso_local global i32 0, align 4
@GENERIC_ID_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @generic_id_from_bios_object_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_id_from_bios_object_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @gpu_id_from_bios_object_id(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %14 [
    i32 129, label %8
    i32 130, label %10
    i32 128, label %12
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @GENERIC_ID_MXM_OPM, align 4
  store i32 %9, i32* %4, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @GENERIC_ID_GLSYNC, align 4
  store i32 %11, i32* %4, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @GENERIC_ID_STEREO, align 4
  store i32 %13, i32* %4, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @GENERIC_ID_UNKNOWN, align 4
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %14, %12, %10, %8
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i32 @gpu_id_from_bios_object_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
