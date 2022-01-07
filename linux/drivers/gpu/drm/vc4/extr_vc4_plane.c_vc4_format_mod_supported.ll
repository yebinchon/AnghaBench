; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_format_mod_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_format_mod_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, i32, i32)* @vc4_format_mod_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_format_mod_supported(%struct.drm_plane* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %20 [
    i32 132, label %9
    i32 146, label %9
    i32 148, label %9
    i32 134, label %9
    i32 135, label %9
    i32 145, label %9
    i32 147, label %9
    i32 133, label %9
    i32 139, label %14
    i32 137, label %14
    i32 130, label %19
    i32 128, label %19
    i32 131, label %19
    i32 129, label %19
    i32 138, label %19
    i32 136, label %19
  ]

9:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @fourcc_mod_broadcom_mod(i32 %10)
  switch i32 %11, label %13 [
    i32 140, label %12
    i32 141, label %12
  ]

12:                                               ; preds = %9, %9
  store i32 1, i32* %4, align 4
  br label %24

13:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %24

14:                                               ; preds = %3, %3
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @fourcc_mod_broadcom_mod(i32 %15)
  switch i32 %16, label %18 [
    i32 140, label %17
    i32 142, label %17
    i32 144, label %17
    i32 143, label %17
  ]

17:                                               ; preds = %14, %14, %14, %14
  store i32 1, i32* %4, align 4
  br label %24

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %24

19:                                               ; preds = %3, %3, %3, %3, %3, %3
  br label %20

20:                                               ; preds = %3, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 140
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %18, %17, %13, %12
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @fourcc_mod_broadcom_mod(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
