; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_accel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_accel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvif_device }
%struct.nvif_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.nvif_sclass = type { i32 }

@nouveau_noaccel = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to initialise sync subsystem, %d\0A\00", align 1
@NV_DEVICE_INFO_V0_VOLTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_drm*)* @nouveau_accel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_accel_init(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.nvif_device*, align 8
  %4 = alloca %struct.nvif_sclass*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %8 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.nvif_device* %10, %struct.nvif_device** %3, align 8
  %11 = load i64, i64* @nouveau_noaccel, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %97

14:                                               ; preds = %1
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %16 = call i32 @nouveau_channels_init(%struct.nouveau_drm* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %97

20:                                               ; preds = %14
  %21 = load %struct.nvif_device*, %struct.nvif_device** %3, align 8
  %22 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %21, i32 0, i32 1
  %23 = call i32 @nvif_object_sclass_get(i32* %22, %struct.nvif_sclass** %4)
  store i32 %23, i32* %7, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %97

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %61, %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load %struct.nvif_sclass*, %struct.nvif_sclass** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nvif_sclass, %struct.nvif_sclass* %35, i64 %37
  %39 = getelementptr inbounds %struct.nvif_sclass, %struct.nvif_sclass* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %59 [
    i32 135, label %41
    i32 134, label %44
    i32 133, label %47
    i32 132, label %47
    i32 131, label %50
    i32 139, label %53
    i32 140, label %56
    i32 138, label %56
    i32 137, label %56
    i32 136, label %56
    i32 130, label %56
    i32 128, label %56
    i32 129, label %56
  ]

41:                                               ; preds = %34
  %42 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %43 = call i32 @nv04_fence_create(%struct.nouveau_drm* %42)
  store i32 %43, i32* %5, align 4
  br label %60

44:                                               ; preds = %34
  %45 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %46 = call i32 @nv10_fence_create(%struct.nouveau_drm* %45)
  store i32 %46, i32* %5, align 4
  br label %60

47:                                               ; preds = %34, %34
  %48 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %49 = call i32 @nv17_fence_create(%struct.nouveau_drm* %48)
  store i32 %49, i32* %5, align 4
  br label %60

50:                                               ; preds = %34
  %51 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %52 = call i32 @nv50_fence_create(%struct.nouveau_drm* %51)
  store i32 %52, i32* %5, align 4
  br label %60

53:                                               ; preds = %34
  %54 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %55 = call i32 @nv84_fence_create(%struct.nouveau_drm* %54)
  store i32 %55, i32* %5, align 4
  br label %60

56:                                               ; preds = %34, %34, %34, %34, %34, %34, %34
  %57 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %58 = call i32 @nvc0_fence_create(%struct.nouveau_drm* %57)
  store i32 %58, i32* %5, align 4
  br label %60

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59, %56, %53, %50, %47, %44, %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %30

64:                                               ; preds = %30
  %65 = call i32 @nvif_object_sclass_put(%struct.nvif_sclass** %4)
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @NV_ERROR(%struct.nouveau_drm* %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %73 = call i32 @nouveau_accel_fini(%struct.nouveau_drm* %72)
  br label %97

74:                                               ; preds = %64
  %75 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %76 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NV_DEVICE_INFO_V0_VOLTA, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load %struct.nvif_device*, %struct.nvif_device** %3, align 8
  %85 = call i32 @nvif_user_init(%struct.nvif_device* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %97

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %92 = call i32 @nouveau_accel_gr_init(%struct.nouveau_drm* %91)
  %93 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %94 = call i32 @nouveau_accel_ce_init(%struct.nouveau_drm* %93)
  %95 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %96 = call i32 @nouveau_bo_move_init(%struct.nouveau_drm* %95)
  br label %97

97:                                               ; preds = %90, %88, %68, %26, %19, %13
  ret void
}

declare dso_local i32 @nouveau_channels_init(%struct.nouveau_drm*) #1

declare dso_local i32 @nvif_object_sclass_get(i32*, %struct.nvif_sclass**) #1

declare dso_local i32 @nv04_fence_create(%struct.nouveau_drm*) #1

declare dso_local i32 @nv10_fence_create(%struct.nouveau_drm*) #1

declare dso_local i32 @nv17_fence_create(%struct.nouveau_drm*) #1

declare dso_local i32 @nv50_fence_create(%struct.nouveau_drm*) #1

declare dso_local i32 @nv84_fence_create(%struct.nouveau_drm*) #1

declare dso_local i32 @nvc0_fence_create(%struct.nouveau_drm*) #1

declare dso_local i32 @nvif_object_sclass_put(%struct.nvif_sclass**) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @nouveau_accel_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nvif_user_init(%struct.nvif_device*) #1

declare dso_local i32 @nouveau_accel_gr_init(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_accel_ce_init(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_bo_move_init(%struct.nouveau_drm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
