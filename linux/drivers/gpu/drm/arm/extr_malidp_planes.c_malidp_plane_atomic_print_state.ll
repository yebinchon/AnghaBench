; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_plane_atomic_print_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_plane_atomic_print_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.malidp_plane_state = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"\09rotmem_size=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\09format_id=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\09n_planes=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\09mmu_prefetch_mode=%s\0A\00", align 1
@prefetch_mode_names = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"\09mmu_prefetch_pgsize=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_printer*, %struct.drm_plane_state*)* @malidp_plane_atomic_print_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_plane_atomic_print_state(%struct.drm_printer* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_printer*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.malidp_plane_state*, align 8
  store %struct.drm_printer* %0, %struct.drm_printer** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %6 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %7 = call %struct.malidp_plane_state* @to_malidp_plane_state(%struct.drm_plane_state* %6)
  store %struct.malidp_plane_state* %7, %struct.malidp_plane_state** %5, align 8
  %8 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %9 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %5, align 8
  %10 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @drm_printf(%struct.drm_printer* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %14 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @drm_printf(%struct.drm_printer* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %19 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %5, align 8
  %20 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @drm_printf(%struct.drm_printer* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %24 = load i32*, i32** @prefetch_mode_names, align 8
  %25 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @drm_printf(%struct.drm_printer* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %32 = load %struct.malidp_plane_state*, %struct.malidp_plane_state** %5, align 8
  %33 = getelementptr inbounds %struct.malidp_plane_state, %struct.malidp_plane_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @drm_printf(%struct.drm_printer* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  ret void
}

declare dso_local %struct.malidp_plane_state* @to_malidp_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
