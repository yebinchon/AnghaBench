; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_tvout.c_tvout_vip_set_sel_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_tvout.c_tvout_vip_set_sel_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_tvout = type { i32 }

@TVO_VIP_SEL_INPUT_MAIN = common dso_local global i32 0, align 4
@TVO_VIP_SEL_INPUT_AUX = common dso_local global i32 0, align 4
@TVO_VIP_SEL_INPUT_BYPASSED = common dso_local global i32 0, align 4
@TVO_VIP_SEL_INPUT_BYPASS_MASK = common dso_local global i32 0, align 4
@TVO_VIP_SEL_INPUT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_tvout*, i32, i32, i32)* @tvout_vip_set_sel_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tvout_vip_set_sel_input(%struct.sti_tvout* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sti_tvout*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sti_tvout* %0, %struct.sti_tvout** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sti_tvout*, %struct.sti_tvout** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @tvout_read(%struct.sti_tvout* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @TVO_VIP_SEL_INPUT_MAIN, align 4
  store i32 %17, i32* %9, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @TVO_VIP_SEL_INPUT_AUX, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %31 [
    i32 129, label %22
    i32 128, label %26
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @TVO_VIP_SEL_INPUT_BYPASSED, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @TVO_VIP_SEL_INPUT_BYPASSED, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %20, %26, %22
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @TVO_VIP_SEL_INPUT_BYPASS_MASK, align 4
  %34 = xor i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @TVO_VIP_SEL_INPUT_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load %struct.sti_tvout*, %struct.sti_tvout** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @tvout_write(%struct.sti_tvout* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @tvout_read(%struct.sti_tvout*, i32) #1

declare dso_local i32 @tvout_write(%struct.sti_tvout*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
