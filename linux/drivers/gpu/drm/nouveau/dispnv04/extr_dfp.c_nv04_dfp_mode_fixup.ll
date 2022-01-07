; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dfp.c_nv04_dfp_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dfp.c_nv04_dfp_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i64, i64, i32 }
%struct.nouveau_encoder = type { %struct.drm_display_mode }
%struct.nouveau_connector = type { i64, %struct.drm_display_mode* }

@DRM_MODE_SCALE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @nv04_dfp_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_dfp_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.nouveau_encoder*, align 8
  %8 = alloca %struct.nouveau_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = call %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder* %9)
  store %struct.nouveau_encoder* %10, %struct.nouveau_encoder** %7, align 8
  %11 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %12 = call %struct.nouveau_connector* @nouveau_encoder_connector_get(%struct.nouveau_encoder* %11)
  store %struct.nouveau_connector* %12, %struct.nouveau_connector** %8, align 8
  %13 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %14 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %13, i32 0, i32 1
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %16 = icmp ne %struct.drm_display_mode* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %19 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DRM_MODE_SCALE_NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %17
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %27, i32 0, i32 1
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %28, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %26, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %23
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %38 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %37, i32 0, i32 1
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %38, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %36, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33, %23, %17, %3
  %44 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %45 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %44, i32 0, i32 0
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %47 = bitcast %struct.drm_display_mode* %45 to i8*
  %48 = bitcast %struct.drm_display_mode* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  br label %64

49:                                               ; preds = %33
  %50 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %51 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %50, i32 0, i32 0
  %52 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %53 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %52, i32 0, i32 1
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %53, align 8
  %55 = bitcast %struct.drm_display_mode* %51 to i8*
  %56 = bitcast %struct.drm_display_mode* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = load %struct.nouveau_connector*, %struct.nouveau_connector** %8, align 8
  %58 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %57, i32 0, i32 1
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %58, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %49, %43
  ret i32 1
}

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.nouveau_connector* @nouveau_encoder_connector_get(%struct.nouveau_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
