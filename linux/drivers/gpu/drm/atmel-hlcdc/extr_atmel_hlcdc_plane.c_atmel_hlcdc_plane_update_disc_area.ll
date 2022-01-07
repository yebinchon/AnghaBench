; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_update_disc_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_update_disc_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_plane = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.atmel_hlcdc_layer_cfg_layout }
%struct.atmel_hlcdc_layer_cfg_layout = type { i32, i32 }
%struct.atmel_hlcdc_plane_state = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane_state*)* @atmel_hlcdc_plane_update_disc_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_hlcdc_plane_update_disc_area(%struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane_state* %1) #0 {
  %3 = alloca %struct.atmel_hlcdc_plane*, align 8
  %4 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  %5 = alloca %struct.atmel_hlcdc_layer_cfg_layout*, align 8
  store %struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane** %3, align 8
  store %struct.atmel_hlcdc_plane_state* %1, %struct.atmel_hlcdc_plane_state** %4, align 8
  %6 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %7 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.atmel_hlcdc_layer_cfg_layout* %10, %struct.atmel_hlcdc_layer_cfg_layout** %5, align 8
  %11 = load %struct.atmel_hlcdc_layer_cfg_layout*, %struct.atmel_hlcdc_layer_cfg_layout** %5, align 8
  %12 = getelementptr inbounds %struct.atmel_hlcdc_layer_cfg_layout, %struct.atmel_hlcdc_layer_cfg_layout* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.atmel_hlcdc_layer_cfg_layout*, %struct.atmel_hlcdc_layer_cfg_layout** %5, align 8
  %17 = getelementptr inbounds %struct.atmel_hlcdc_layer_cfg_layout, %struct.atmel_hlcdc_layer_cfg_layout* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %48

21:                                               ; preds = %15
  %22 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %23 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %22, i32 0, i32 0
  %24 = load %struct.atmel_hlcdc_layer_cfg_layout*, %struct.atmel_hlcdc_layer_cfg_layout** %5, align 8
  %25 = getelementptr inbounds %struct.atmel_hlcdc_layer_cfg_layout, %struct.atmel_hlcdc_layer_cfg_layout* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %28 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %31 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ATMEL_HLCDC_LAYER_DISC_POS(i32 %29, i32 %32)
  %34 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_4__* %23, i32 %26, i32 %33)
  %35 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %36 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %35, i32 0, i32 0
  %37 = load %struct.atmel_hlcdc_layer_cfg_layout*, %struct.atmel_hlcdc_layer_cfg_layout** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_hlcdc_layer_cfg_layout, %struct.atmel_hlcdc_layer_cfg_layout* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %41 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %44 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ATMEL_HLCDC_LAYER_DISC_SIZE(i32 %42, i32 %45)
  %47 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_4__* %36, i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ATMEL_HLCDC_LAYER_DISC_POS(i32, i32) #1

declare dso_local i32 @ATMEL_HLCDC_LAYER_DISC_SIZE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
