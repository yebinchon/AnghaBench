; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_kms.c_rcar_du_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_kms.c_rcar_du_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { %struct.rcar_du_device* }
%struct.rcar_du_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32 }

@RCAR_DU_QUIRK_ALIGN_128B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcar_du_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_create_dumb*, align 8
  %7 = alloca %struct.rcar_du_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.rcar_du_device*, %struct.rcar_du_device** %11, align 8
  store %struct.rcar_du_device* %12, %struct.rcar_du_device** %7, align 8
  %13 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %14 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %17 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = call i32 @DIV_ROUND_UP(i32 %19, i32 8)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  %22 = load i32, i32* @RCAR_DU_QUIRK_ALIGN_128B, align 4
  %23 = call i64 @rcar_du_needs(%struct.rcar_du_device* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 128, i32* %9, align 4
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %28 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 16, %29
  %31 = sdiv i32 %30, 8
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %26, %25
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @roundup(i32 %33, i32 %34)
  %36 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %37 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %41 = call i32 @drm_gem_cma_dumb_create_internal(%struct.drm_file* %38, %struct.drm_device* %39, %struct.drm_mode_create_dumb* %40)
  ret i32 %41
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @rcar_du_needs(%struct.rcar_du_device*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @drm_gem_cma_dumb_create_internal(%struct.drm_file*, %struct.drm_device*, %struct.drm_mode_create_dumb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
