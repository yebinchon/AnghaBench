; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dfp.c_nv04_tmds_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dfp.c_nv04_tmds_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_encoder = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Setting dpms mode %d on tmds encoder (output %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @nv04_tmds_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_tmds_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_encoder*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nouveau_drm* @nouveau_drm(i32 %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %5, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = call %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder* %11)
  store %struct.nouveau_encoder* %12, %struct.nouveau_encoder** %6, align 8
  %13 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %37

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %22 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %6, align 8
  %26 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NV_DEBUG(%struct.nouveau_drm* %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @nv04_dfp_update_backlight(%struct.drm_encoder* %31, i32 %32)
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @nv04_dfp_update_fp_control(%struct.drm_encoder* %34, i32 %35)
  br label %37

37:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i32 @nv04_dfp_update_backlight(%struct.drm_encoder*, i32) #1

declare dso_local i32 @nv04_dfp_update_fp_control(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
