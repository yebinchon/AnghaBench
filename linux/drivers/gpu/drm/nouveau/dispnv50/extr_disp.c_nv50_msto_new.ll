; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_msto_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_msto_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv50_msto = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_msto = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DPMST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-mst-%d\00", align 1
@nv50_msto_help = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i8*, i32, %struct.nv50_msto**)* @nv50_msto_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_msto_new(%struct.drm_device* %0, i32 %1, i8* %2, i32 %3, %struct.nv50_msto** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nv50_msto**, align 8
  %12 = alloca %struct.nv50_msto*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nv50_msto** %4, %struct.nv50_msto*** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nv50_msto* @kzalloc(i32 4, i32 %14)
  %16 = load %struct.nv50_msto**, %struct.nv50_msto*** %11, align 8
  store %struct.nv50_msto* %15, %struct.nv50_msto** %16, align 8
  store %struct.nv50_msto* %15, %struct.nv50_msto** %12, align 8
  %17 = icmp ne %struct.nv50_msto* %15, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %45

21:                                               ; preds = %5
  %22 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %23 = load %struct.nv50_msto*, %struct.nv50_msto** %12, align 8
  %24 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %23, i32 0, i32 0
  %25 = load i32, i32* @DRM_MODE_ENCODER_DPMST, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @drm_encoder_init(%struct.drm_device* %22, %struct.TYPE_3__* %24, i32* @nv50_msto, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.nv50_msto**, %struct.nv50_msto*** %11, align 8
  %33 = load %struct.nv50_msto*, %struct.nv50_msto** %32, align 8
  %34 = call i32 @kfree(%struct.nv50_msto* %33)
  %35 = load %struct.nv50_msto**, %struct.nv50_msto*** %11, align 8
  store %struct.nv50_msto* null, %struct.nv50_msto** %35, align 8
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %6, align 4
  br label %45

37:                                               ; preds = %21
  %38 = load %struct.nv50_msto*, %struct.nv50_msto** %12, align 8
  %39 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %38, i32 0, i32 0
  %40 = call i32 @drm_encoder_helper_add(%struct.TYPE_3__* %39, i32* @nv50_msto_help)
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.nv50_msto*, %struct.nv50_msto** %12, align 8
  %43 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %37, %31, %18
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.nv50_msto* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_3__*, i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.nv50_msto*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
