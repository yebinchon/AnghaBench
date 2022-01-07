; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfld__intel_plane_set_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfld__intel_plane_set_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@globle_dev = common dso_local global %struct.drm_device zeroinitializer, align 4
@DSPACNTR = common dso_local global i32 0, align 4
@DISPPLANE_32BPP_NO_ALPHA = common dso_local global i32 0, align 4
@DISPPLANE_32BPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdfld__intel_plane_set_alpha(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.drm_device* @globle_dev, %struct.drm_device** %3, align 8
  %6 = load i32, i32* @DSPACNTR, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @REG_READ(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @DISPPLANE_32BPP_NO_ALPHA, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @DISPPLANE_32BPP, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load i32, i32* @DISPPLANE_32BPP, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @DISPPLANE_32BPP_NO_ALPHA, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %19, %11
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @REG_WRITE(i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
