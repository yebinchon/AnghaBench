; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_ntfy_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_ntfy_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_client = type { i32 }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nvif_ioctl_ntfy_put_v0 }
%struct.nvif_ioctl_ntfy_put_v0 = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ntfy put size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ntfy put vers %d index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_client*, %struct.nvkm_object*, i8*, i32)* @nvkm_ioctl_ntfy_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ioctl_ntfy_put(%struct.nvkm_client* %0, %struct.nvkm_object* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_client*, align 8
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.anon*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_client* %0, %struct.nvkm_client** %5, align 8
  store %struct.nvkm_object* %1, %struct.nvkm_object** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %union.anon*
  store %union.anon* %12, %union.anon** %9, align 8
  %13 = load i32, i32* @ENOSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = load %union.anon*, %union.anon** %9, align 8
  %20 = bitcast %union.anon* %19 to %struct.nvif_ioctl_ntfy_put_v0*
  %21 = bitcast %struct.nvif_ioctl_ntfy_put_v0* %20 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i32 @nvif_unpack(i32 %18, i8** %7, i32* %8, i64 %22, i32 0, i32 0, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %4
  %26 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %27 = load %union.anon*, %union.anon** %9, align 8
  %28 = bitcast %union.anon* %27 to %struct.nvif_ioctl_ntfy_put_v0*
  %29 = getelementptr inbounds %struct.nvif_ioctl_ntfy_put_v0, %struct.nvif_ioctl_ntfy_put_v0* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %union.anon*, %union.anon** %9, align 8
  %32 = bitcast %union.anon* %31 to %struct.nvif_ioctl_ntfy_put_v0*
  %33 = getelementptr inbounds %struct.nvif_ioctl_ntfy_put_v0, %struct.nvif_ioctl_ntfy_put_v0* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load %struct.nvkm_client*, %struct.nvkm_client** %5, align 8
  %37 = load %union.anon*, %union.anon** %9, align 8
  %38 = bitcast %union.anon* %37 to %struct.nvif_ioctl_ntfy_put_v0*
  %39 = getelementptr inbounds %struct.nvif_ioctl_ntfy_put_v0, %struct.nvif_ioctl_ntfy_put_v0* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nvkm_client_notify_put(%struct.nvkm_client* %36, i32 %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %25, %4
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @nvkm_client_notify_put(%struct.nvkm_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
