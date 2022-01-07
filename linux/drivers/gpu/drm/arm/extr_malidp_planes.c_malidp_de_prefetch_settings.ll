; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_de_prefetch_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_de_prefetch_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.malidp_plane_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malidp_plane*, %struct.malidp_plane_state*)* @malidp_de_prefetch_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_de_prefetch_settings(%struct.malidp_plane* %0, %struct.malidp_plane_state* %1) #0 {
  %3 = alloca %struct.malidp_plane*, align 8
  %4 = alloca %struct.malidp_plane_state*, align 8
  store %struct.malidp_plane* %0, %struct.malidp_plane** %3, align 8
  store %struct.malidp_plane_state* %1, %struct.malidp_plane_state** %4, align 8
  %5 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %6 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.malidp_plane*, %struct.malidp_plane** %3, align 8
  %14 = call i32 @malidp_get_pgsize_bitmap(%struct.malidp_plane* %13)
  %15 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %16 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %18 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %19 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %18, i32 0, i32 0
  %20 = call i32 @malidp_mmu_prefetch_select_mode(%struct.malidp_plane_state* %17, i32* %19)
  %21 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %4, align 8
  %22 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @malidp_get_pgsize_bitmap(%struct.malidp_plane*) #1

declare dso_local i32 @malidp_mmu_prefetch_select_mode(%struct.malidp_plane_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
