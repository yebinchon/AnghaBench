; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_sprite_format_mod_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_g4x_sprite_format_mod_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, i32, i32)* @g4x_sprite_format_mod_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_sprite_format_mod_supported(%struct.drm_plane* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %10 [
    i32 134, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %3, %3
  br label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

11:                                               ; preds = %9
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %21 [
    i32 131, label %13
    i32 130, label %13
    i32 129, label %13
    i32 133, label %13
    i32 132, label %13
  ]

13:                                               ; preds = %11, %11, %11, %11, %11
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 134
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13
  store i32 1, i32* %4, align 4
  br label %22

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %11, %20
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %19, %10
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
