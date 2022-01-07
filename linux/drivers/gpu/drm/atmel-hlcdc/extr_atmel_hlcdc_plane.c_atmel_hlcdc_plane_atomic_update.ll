; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_plane_state = type { i32 }
%struct.atmel_hlcdc_plane = type { i32 }
%struct.atmel_hlcdc_plane_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ATMEL_HLCDC_LAYER_IER = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_CHSR = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_CHER = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_UPDATE = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_EN = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_A2Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @atmel_hlcdc_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.atmel_hlcdc_plane*, align 8
  %6 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %9 = call %struct.atmel_hlcdc_plane* @drm_plane_to_atmel_hlcdc_plane(%struct.drm_plane* %8)
  store %struct.atmel_hlcdc_plane* %9, %struct.atmel_hlcdc_plane** %5, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call %struct.atmel_hlcdc_plane_state* @drm_plane_state_to_atmel_hlcdc_plane_state(%struct.TYPE_4__* %12)
  store %struct.atmel_hlcdc_plane_state* %13, %struct.atmel_hlcdc_plane_state** %6, align 8
  %14 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %2
  br label %86

28:                                               ; preds = %20
  %29 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %6, align 8
  %30 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %36 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %37 = call i32 @atmel_hlcdc_plane_atomic_disable(%struct.drm_plane* %35, %struct.drm_plane_state* %36)
  br label %86

38:                                               ; preds = %28
  %39 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %40 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %6, align 8
  %41 = call i32 @atmel_hlcdc_plane_update_pos_and_size(%struct.atmel_hlcdc_plane* %39, %struct.atmel_hlcdc_plane_state* %40)
  %42 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %43 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %6, align 8
  %44 = call i32 @atmel_hlcdc_plane_update_general_settings(%struct.atmel_hlcdc_plane* %42, %struct.atmel_hlcdc_plane_state* %43)
  %45 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %46 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %6, align 8
  %47 = call i32 @atmel_hlcdc_plane_update_format(%struct.atmel_hlcdc_plane* %45, %struct.atmel_hlcdc_plane_state* %46)
  %48 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %49 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %6, align 8
  %50 = call i32 @atmel_hlcdc_plane_update_clut(%struct.atmel_hlcdc_plane* %48, %struct.atmel_hlcdc_plane_state* %49)
  %51 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %52 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %6, align 8
  %53 = call i32 @atmel_hlcdc_plane_update_buffers(%struct.atmel_hlcdc_plane* %51, %struct.atmel_hlcdc_plane_state* %52)
  %54 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %55 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %6, align 8
  %56 = call i32 @atmel_hlcdc_plane_update_disc_area(%struct.atmel_hlcdc_plane* %54, %struct.atmel_hlcdc_plane_state* %55)
  %57 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %58 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %57, i32 0, i32 0
  %59 = load i32, i32* @ATMEL_HLCDC_LAYER_IER, align 4
  %60 = call i32 @ATMEL_HLCDC_LAYER_OVR_IRQ(i32 0)
  %61 = call i32 @ATMEL_HLCDC_LAYER_OVR_IRQ(i32 1)
  %62 = or i32 %60, %61
  %63 = call i32 @ATMEL_HLCDC_LAYER_OVR_IRQ(i32 2)
  %64 = or i32 %62, %63
  %65 = call i32 @atmel_hlcdc_layer_write_reg(i32* %58, i32 %59, i32 %64)
  %66 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %67 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %66, i32 0, i32 0
  %68 = load i32, i32* @ATMEL_HLCDC_LAYER_CHSR, align 4
  %69 = call i32 @atmel_hlcdc_layer_read_reg(i32* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %71 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %70, i32 0, i32 0
  %72 = load i32, i32* @ATMEL_HLCDC_LAYER_CHER, align 4
  %73 = load i32, i32* @ATMEL_HLCDC_LAYER_UPDATE, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ATMEL_HLCDC_LAYER_EN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %38
  %79 = load i32, i32* @ATMEL_HLCDC_LAYER_A2Q, align 4
  br label %82

80:                                               ; preds = %38
  %81 = load i32, i32* @ATMEL_HLCDC_LAYER_EN, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = or i32 %73, %83
  %85 = call i32 @atmel_hlcdc_layer_write_reg(i32* %71, i32 %72, i32 %84)
  br label %86

86:                                               ; preds = %82, %34, %27
  ret void
}

declare dso_local %struct.atmel_hlcdc_plane* @drm_plane_to_atmel_hlcdc_plane(%struct.drm_plane*) #1

declare dso_local %struct.atmel_hlcdc_plane_state* @drm_plane_state_to_atmel_hlcdc_plane_state(%struct.TYPE_4__*) #1

declare dso_local i32 @atmel_hlcdc_plane_atomic_disable(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @atmel_hlcdc_plane_update_pos_and_size(%struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane_state*) #1

declare dso_local i32 @atmel_hlcdc_plane_update_general_settings(%struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane_state*) #1

declare dso_local i32 @atmel_hlcdc_plane_update_format(%struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane_state*) #1

declare dso_local i32 @atmel_hlcdc_plane_update_clut(%struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane_state*) #1

declare dso_local i32 @atmel_hlcdc_plane_update_buffers(%struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane_state*) #1

declare dso_local i32 @atmel_hlcdc_plane_update_disc_area(%struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane_state*) #1

declare dso_local i32 @atmel_hlcdc_layer_write_reg(i32*, i32, i32) #1

declare dso_local i32 @ATMEL_HLCDC_LAYER_OVR_IRQ(i32) #1

declare dso_local i32 @atmel_hlcdc_layer_read_reg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
