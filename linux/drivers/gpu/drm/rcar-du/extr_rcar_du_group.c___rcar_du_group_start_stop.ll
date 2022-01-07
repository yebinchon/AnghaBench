; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c___rcar_du_group_start_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c___rcar_du_group_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i32, %struct.rcar_du_device* }
%struct.rcar_du_device = type { %struct.rcar_du_crtc*, %struct.TYPE_2__* }
%struct.rcar_du_crtc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DSYSR_DRES = common dso_local global i32 0, align 4
@DSYSR_DEN = common dso_local global i32 0, align 4
@DSYSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_group*, i32)* @__rcar_du_group_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rcar_du_group_start_stop(%struct.rcar_du_group* %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_du_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_du_device*, align 8
  %6 = alloca %struct.rcar_du_crtc*, align 8
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %8 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %7, i32 0, i32 1
  %9 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  store %struct.rcar_du_device* %9, %struct.rcar_du_device** %5, align 8
  %10 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %11 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %16 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 2
  %19 = call i32 @BIT(i32 %18)
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %2
  %23 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %24 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %23, i32 0, i32 1
  %25 = load %struct.rcar_du_device*, %struct.rcar_du_device** %24, align 8
  %26 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %25, i32 0, i32 0
  %27 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %26, align 8
  %28 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %29 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %27, i64 %32
  store %struct.rcar_du_crtc* %33, %struct.rcar_du_crtc** %6, align 8
  %34 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %6, align 8
  %35 = load i32, i32* @DSYSR_DRES, align 4
  %36 = load i32, i32* @DSYSR_DEN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i32, i32* @DSYSR_DEN, align 4
  br label %44

42:                                               ; preds = %22
  %43 = load i32, i32* @DSYSR_DRES, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @rcar_du_crtc_dsysr_clr_set(%struct.rcar_du_crtc* %34, i32 %37, i32 %45)
  br label %59

47:                                               ; preds = %2
  %48 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %49 = load i32, i32* @DSYSR, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @DSYSR_DEN, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @DSYSR_DRES, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %48, i32 %49, i32 %57)
  br label %59

59:                                               ; preds = %56, %44
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rcar_du_crtc_dsysr_clr_set(%struct.rcar_du_crtc*, i32, i32) #1

declare dso_local i32 @rcar_du_group_write(%struct.rcar_du_group*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
