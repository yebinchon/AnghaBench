; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_cursor.c_mga_crtc_cursor_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_cursor.c_mga_crtc_cursor_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mga_device = type { i32 }

@MGA_CURPOSXL = common dso_local global i32 0, align 4
@MGA_CURPOSXH = common dso_local global i32 0, align 4
@MGA_CURPOSYL = common dso_local global i32 0, align 4
@MGA_CURPOSYH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mga_crtc_cursor_move(%struct.drm_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mga_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mga_device*
  store %struct.mga_device* %13, %struct.mga_device** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 64
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 64
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, -65536
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, -65536
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* @MGA_CURPOSXL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @WREG8(i32 %32, i32 %34)
  %36 = load i32, i32* @MGA_CURPOSXH, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = call i32 @WREG8(i32 %36, i32 %39)
  %41 = load i32, i32* @MGA_CURPOSYL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 255
  %44 = call i32 @WREG8(i32 %41, i32 %43)
  %45 = load i32, i32* @MGA_CURPOSYH, align 4
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = call i32 @WREG8(i32 %45, i32 %48)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WREG8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
