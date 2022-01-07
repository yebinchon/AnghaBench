; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32 }
%struct.nvif_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_channel = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nouveau_cli = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@dbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ib channel create, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dma channel create, %d\0A\00", align 1
@err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"channel failed to initialise, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_channel_new(%struct.nouveau_drm* %0, %struct.nvif_device* %1, i32 %2, i32 %3, i32 %4, %struct.nouveau_channel** %5) #0 {
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nvif_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_channel**, align 8
  %13 = alloca %struct.nouveau_cli*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %7, align 8
  store %struct.nvif_device* %1, %struct.nvif_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.nouveau_channel** %5, %struct.nouveau_channel*** %12, align 8
  %16 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %17 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.nouveau_cli*
  store %struct.nouveau_cli* %21, %struct.nouveau_cli** %13, align 8
  %22 = load %struct.nouveau_cli*, %struct.nouveau_cli** %13, align 8
  %23 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.nouveau_cli*, %struct.nouveau_cli** %13, align 8
  %27 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %30 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %12, align 8
  %34 = call i32 @nouveau_channel_ind(%struct.nouveau_drm* %29, %struct.nvif_device* %30, i32 %31, i32 %32, %struct.nouveau_channel** %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %6
  %38 = load i32, i32* @dbg, align 4
  %39 = load %struct.nouveau_cli*, %struct.nouveau_cli** %13, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @NV_PRINTK(i32 %38, %struct.nouveau_cli* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %43 = load %struct.nvif_device*, %struct.nvif_device** %8, align 8
  %44 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %12, align 8
  %45 = call i32 @nouveau_channel_dma(%struct.nouveau_drm* %42, %struct.nvif_device* %43, %struct.nouveau_channel** %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32, i32* @dbg, align 4
  %50 = load %struct.nouveau_cli*, %struct.nouveau_cli** %13, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @NV_PRINTK(i32 %49, %struct.nouveau_cli* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %87

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %6
  %55 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %12, align 8
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @nouveau_channel_init(%struct.nouveau_channel* %56, i32 %57, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i32, i32* @err, align 4
  %64 = load %struct.nouveau_cli*, %struct.nouveau_cli** %13, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @NV_PRINTK(i32 %63, %struct.nouveau_cli* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %12, align 8
  %68 = call i32 @nouveau_channel_del(%struct.nouveau_channel** %67)
  br label %69

69:                                               ; preds = %62, %54
  %70 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %12, align 8
  %71 = load %struct.nouveau_channel*, %struct.nouveau_channel** %70, align 8
  %72 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %12, align 8
  %77 = load %struct.nouveau_channel*, %struct.nouveau_channel** %76, align 8
  %78 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @nouveau_svmm_join(i32 %75, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %69
  %84 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %12, align 8
  %85 = call i32 @nouveau_channel_del(%struct.nouveau_channel** %84)
  br label %86

86:                                               ; preds = %83, %69
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.nouveau_cli*, %struct.nouveau_cli** %13, align 8
  %90 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* %15, align 4
  ret i32 %92
}

declare dso_local i32 @nouveau_channel_ind(%struct.nouveau_drm*, %struct.nvif_device*, i32, i32, %struct.nouveau_channel**) #1

declare dso_local i32 @NV_PRINTK(i32, %struct.nouveau_cli*, i8*, i32) #1

declare dso_local i32 @nouveau_channel_dma(%struct.nouveau_drm*, %struct.nvif_device*, %struct.nouveau_channel**) #1

declare dso_local i32 @nouveau_channel_init(%struct.nouveau_channel*, i32, i32) #1

declare dso_local i32 @nouveau_channel_del(%struct.nouveau_channel**) #1

declare dso_local i32 @nouveau_svmm_join(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
