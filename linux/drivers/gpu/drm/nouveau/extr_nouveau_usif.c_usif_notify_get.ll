; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_usif.c_usif_notify_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_usif.c_usif_notify_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { %struct.nvif_client }
%struct.nvif_client = type { i32 }
%union.anon = type { %struct.nvif_ioctl_ntfy_del_v0 }
%struct.nvif_ioctl_ntfy_del_v0 = type { i32 }
%struct.usif_notify = type { %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.drm_file*, %struct.TYPE_7__* }

@ENOSYS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_NOUVEAU_EVENT_NVIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, i8*, i32, i8*, i32)* @usif_notify_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usif_notify_get(%struct.drm_file* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_cli*, align 8
  %13 = alloca %struct.nvif_client*, align 8
  %14 = alloca %union.anon*, align 8
  %15 = alloca %struct.usif_notify*, align 8
  %16 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %18 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %17)
  store %struct.nouveau_cli* %18, %struct.nouveau_cli** %12, align 8
  %19 = load %struct.nouveau_cli*, %struct.nouveau_cli** %12, align 8
  %20 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %19, i32 0, i32 0
  store %struct.nvif_client* %20, %struct.nvif_client** %13, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %union.anon*
  store %union.anon* %22, %union.anon** %14, align 8
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load %union.anon*, %union.anon** %14, align 8
  %27 = bitcast %union.anon* %26 to %struct.nvif_ioctl_ntfy_del_v0*
  %28 = getelementptr inbounds %struct.nvif_ioctl_ntfy_del_v0, %struct.nvif_ioctl_ntfy_del_v0* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nvif_unpack(i32 %25, i8** %8, i32* %9, i32 %29, i32 0, i32 0, i32 1)
  store i32 %30, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %5
  %33 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %34 = load %union.anon*, %union.anon** %14, align 8
  %35 = bitcast %union.anon* %34 to %struct.nvif_ioctl_ntfy_del_v0*
  %36 = getelementptr inbounds %struct.nvif_ioctl_ntfy_del_v0, %struct.nvif_ioctl_ntfy_del_v0* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.usif_notify* @usif_notify_find(%struct.drm_file* %33, i32 %37)
  store %struct.usif_notify* %38, %struct.usif_notify** %15, align 8
  %39 = icmp ne %struct.usif_notify* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %120

43:                                               ; preds = %32
  br label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %6, align 4
  br label %120

46:                                               ; preds = %43
  %47 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %48 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %47, i32 0, i32 1
  %49 = call i64 @atomic_xchg(i32* %48, i32 1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %120

52:                                               ; preds = %46
  %53 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %54 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add i64 32, %55
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.TYPE_9__* @kmalloc(i64 %56, i32 %57)
  %59 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %60 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %59, i32 0, i32 0
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %60, align 8
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %16, align 4
  %63 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %64 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = icmp ne %struct.TYPE_9__* %65, null
  %67 = xor i1 %66, true
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %107

69:                                               ; preds = %52
  %70 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %71 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %76 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %79, align 8
  %80 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %81 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %82 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store %struct.drm_file* %80, %struct.drm_file** %85, align 8
  %86 = load i32, i32* @DRM_NOUVEAU_EVENT_NVIF, align 4
  %87 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %88 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 %86, i32* %92, align 8
  %93 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %94 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add i64 16, %95
  %97 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %98 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i64 %96, i64* %102, align 8
  %103 = load %struct.nvif_client*, %struct.nvif_client** %13, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @nvif_client_ioctl(%struct.nvif_client* %103, i8* %104, i32 %105)
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %69, %68
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %112 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %111, i32 0, i32 1
  %113 = call i32 @atomic_set(i32* %112, i32 0)
  %114 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %115 = getelementptr inbounds %struct.usif_notify, %struct.usif_notify* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = call i32 @kfree(%struct.TYPE_9__* %116)
  br label %118

118:                                              ; preds = %110, %107
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %51, %44, %40
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.usif_notify* @usif_notify_find(%struct.drm_file*, i32) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @kmalloc(i64, i32) #1

declare dso_local i32 @nvif_client_ioctl(%struct.nvif_client*, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
