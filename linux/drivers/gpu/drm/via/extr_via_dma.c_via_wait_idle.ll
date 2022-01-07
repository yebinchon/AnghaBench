; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dma.c_via_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dma.c_via_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIA_REG_STATUS = common dso_local global i32 0, align 4
@VIA_VR_QUEUE_BUSY = common dso_local global i32 0, align 4
@VIA_CMD_RGTR_BUSY = common dso_local global i32 0, align 4
@VIA_2D_ENG_BUSY = common dso_local global i32 0, align 4
@VIA_3D_ENG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @via_wait_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_wait_idle(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 10000000, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @VIA_REG_STATUS, align 4
  %7 = call i32 @via_read(i32* %5, i32 %6)
  %8 = load i32, i32* @VIA_VR_QUEUE_BUSY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i1 [ false, %4 ], [ %14, %11 ]
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %4

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @VIA_REG_STATUS, align 4
  %25 = call i32 @via_read(i32* %23, i32 %24)
  %26 = load i32, i32* @VIA_CMD_RGTR_BUSY, align 4
  %27 = load i32, i32* @VIA_2D_ENG_BUSY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @VIA_3D_ENG_BUSY, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %22, %19
  %34 = phi i1 [ false, %19 ], [ %32, %22 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %3, align 4
  br label %19

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @via_read(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
