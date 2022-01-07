; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_do_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_do_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_drm = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.nouveau_drm*)* }

@.str = private unnamed_addr constant [25 x i8] c"resuming object tree...\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Client resume failed with error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"resuming fence...\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"resuming display...\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"resuming console...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @nouveau_do_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_do_resume(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %7, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %11 = call i32 @NV_DEBUG(%struct.nouveau_drm* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %13 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @nvif_client_resume(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @NV_ERROR(%struct.nouveau_drm* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %68

23:                                               ; preds = %2
  %24 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %25 = call i32 @NV_DEBUG(%struct.nouveau_drm* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %27 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %32 = call %struct.TYPE_6__* @nouveau_fence(%struct.nouveau_drm* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (%struct.nouveau_drm*)*, i32 (%struct.nouveau_drm*)** %33, align 8
  %35 = icmp ne i32 (%struct.nouveau_drm*)* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %38 = call %struct.TYPE_6__* @nouveau_fence(%struct.nouveau_drm* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (%struct.nouveau_drm*)*, i32 (%struct.nouveau_drm*)** %39, align 8
  %41 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %42 = call i32 %40(%struct.nouveau_drm* %41)
  br label %43

43:                                               ; preds = %36, %30, %23
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = call i32 @nouveau_run_vbios_init(%struct.drm_device* %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %53 = call i32 @NV_DEBUG(%struct.nouveau_drm* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @nouveau_display_resume(%struct.drm_device* %54, i32 %55)
  %57 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %58 = call i32 @NV_DEBUG(%struct.nouveau_drm* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = call i32 @nouveau_fbcon_set_suspend(%struct.drm_device* %59, i32 0)
  br label %61

61:                                               ; preds = %51, %43
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = call i32 @nouveau_led_resume(%struct.drm_device* %62)
  %64 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %65 = call i32 @nouveau_dmem_resume(%struct.nouveau_drm* %64)
  %66 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %67 = call i32 @nouveau_svm_resume(%struct.nouveau_drm* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @nvif_client_resume(i32*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @nouveau_fence(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_run_vbios_init(%struct.drm_device*) #1

declare dso_local i32 @nouveau_display_resume(%struct.drm_device*, i32) #1

declare dso_local i32 @nouveau_fbcon_set_suspend(%struct.drm_device*, i32) #1

declare dso_local i32 @nouveau_led_resume(%struct.drm_device*) #1

declare dso_local i32 @nouveau_dmem_resume(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_svm_resume(%struct.nouveau_drm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
