; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_ntfy_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_ntfy_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_client = type { i32 }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nvif_ioctl_ntfy_new_v0 }
%struct.nvif_ioctl_ntfy_new_v0 = type { i32, i32, i32 }
%struct.nvkm_event = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ntfy new size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ntfy new vers %d event %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_client*, %struct.nvkm_object*, i8*, i32)* @nvkm_ioctl_ntfy_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ioctl_ntfy_new(%struct.nvkm_client* %0, %struct.nvkm_object* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_client*, align 8
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.anon*, align 8
  %10 = alloca %struct.nvkm_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca { i64, i32 }, align 4
  store %struct.nvkm_client* %0, %struct.nvkm_client** %5, align 8
  store %struct.nvkm_object* %1, %struct.nvkm_object** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %union.anon*
  store %union.anon* %14, %union.anon** %9, align 8
  %15 = load i32, i32* @ENOSYS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %11, align 4
  %21 = load %union.anon*, %union.anon** %9, align 8
  %22 = bitcast %union.anon* %21 to %struct.nvif_ioctl_ntfy_new_v0*
  %23 = bitcast { i64, i32 }* %12 to i8*
  %24 = bitcast %struct.nvif_ioctl_ntfy_new_v0* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %26 = load i64, i64* %25, align 4
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nvif_unpack(i32 %20, i8** %7, i32* %8, i64 %26, i32 %28, i32 0, i32 0, i32 1)
  store i32 %29, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %65, label %31

31:                                               ; preds = %4
  %32 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %33 = load %union.anon*, %union.anon** %9, align 8
  %34 = bitcast %union.anon* %33 to %struct.nvif_ioctl_ntfy_new_v0*
  %35 = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, %struct.nvif_ioctl_ntfy_new_v0* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %union.anon*, %union.anon** %9, align 8
  %38 = bitcast %union.anon* %37 to %struct.nvif_ioctl_ntfy_new_v0*
  %39 = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, %struct.nvif_ioctl_ntfy_new_v0* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40)
  %42 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %43 = load %union.anon*, %union.anon** %9, align 8
  %44 = bitcast %union.anon* %43 to %struct.nvif_ioctl_ntfy_new_v0*
  %45 = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, %struct.nvif_ioctl_ntfy_new_v0* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nvkm_object_ntfy(%struct.nvkm_object* %42, i32 %46, %struct.nvkm_event** %10)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %31
  %51 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %52 = load %struct.nvkm_event*, %struct.nvkm_event** %10, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @nvkm_client_notify_new(%struct.nvkm_object* %51, %struct.nvkm_event* %52, i8* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = load %union.anon*, %union.anon** %9, align 8
  %61 = bitcast %union.anon* %60 to %struct.nvif_ioctl_ntfy_new_v0*
  %62 = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, %struct.nvif_ioctl_ntfy_new_v0* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %58, %50
  br label %64

64:                                               ; preds = %63, %31
  br label %65

65:                                               ; preds = %64, %4
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvkm_object_ntfy(%struct.nvkm_object*, i32, %struct.nvkm_event**) #1

declare dso_local i32 @nvkm_client_notify_new(%struct.nvkm_object*, %struct.nvkm_event*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
