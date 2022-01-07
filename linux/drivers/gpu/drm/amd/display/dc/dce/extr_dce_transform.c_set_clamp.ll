; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_set_clamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_set_clamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }

@OUT_CLAMP_CONTROL_B_CB = common dso_local global i32 0, align 4
@OUT_CLAMP_MIN_B_CB = common dso_local global i32 0, align 4
@OUT_CLAMP_MAX_B_CB = common dso_local global i32 0, align 4
@OUT_CLAMP_CONTROL_G_Y = common dso_local global i32 0, align 4
@OUT_CLAMP_MIN_G_Y = common dso_local global i32 0, align 4
@OUT_CLAMP_MAX_G_Y = common dso_local global i32 0, align 4
@OUT_CLAMP_CONTROL_R_CR = common dso_local global i32 0, align 4
@OUT_CLAMP_MIN_R_CR = common dso_local global i32 0, align 4
@OUT_CLAMP_MAX_R_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, i32)* @set_clamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_clamp(%struct.dce_transform* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %11 [
    i32 129, label %7
    i32 128, label %8
    i32 131, label %9
    i32 130, label %10
  ]

7:                                                ; preds = %2
  store i32 16128, i32* %5, align 4
  br label %13

8:                                                ; preds = %2
  store i32 16320, i32* %5, align 4
  br label %13

9:                                                ; preds = %2
  store i32 16380, i32* %5, align 4
  br label %13

10:                                               ; preds = %2
  store i32 16383, i32* %5, align 4
  br label %13

11:                                               ; preds = %2
  store i32 16320, i32* %5, align 4
  %12 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %13

13:                                               ; preds = %11, %10, %9, %8, %7
  %14 = load i32, i32* @OUT_CLAMP_CONTROL_B_CB, align 4
  %15 = load i32, i32* @OUT_CLAMP_MIN_B_CB, align 4
  %16 = load i32, i32* @OUT_CLAMP_MAX_B_CB, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @REG_SET_2(i32 %14, i32 0, i32 %15, i32 0, i32 %16, i32 %17)
  %19 = load i32, i32* @OUT_CLAMP_CONTROL_G_Y, align 4
  %20 = load i32, i32* @OUT_CLAMP_MIN_G_Y, align 4
  %21 = load i32, i32* @OUT_CLAMP_MAX_G_Y, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @REG_SET_2(i32 %19, i32 0, i32 %20, i32 0, i32 %21, i32 %22)
  %24 = load i32, i32* @OUT_CLAMP_CONTROL_R_CR, align 4
  %25 = load i32, i32* @OUT_CLAMP_MIN_R_CR, align 4
  %26 = load i32, i32* @OUT_CLAMP_MAX_R_CR, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @REG_SET_2(i32 %24, i32 0, i32 %25, i32 0, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
