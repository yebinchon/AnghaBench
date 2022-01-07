; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_usif.c_usif_notify_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_usif.c_usif_notify_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { %struct.nvif_client }
%struct.nvif_client = type { i32 }
%union.anon = type { %struct.nvif_ioctl_ntfy_del_v0 }
%struct.nvif_ioctl_ntfy_del_v0 = type { i32 }
%struct.usif_notify = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, i8*, i32, i8*, i32)* @usif_notify_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usif_notify_del(%struct.drm_file* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
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
  br label %58

43:                                               ; preds = %32
  br label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %6, align 4
  br label %58

46:                                               ; preds = %43
  %47 = load %struct.nvif_client*, %struct.nvif_client** %13, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @nvif_client_ioctl(%struct.nvif_client* %47, i8* %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.usif_notify*, %struct.usif_notify** %15, align 8
  %55 = call i32 @usif_notify_dtor(%struct.usif_notify* %54)
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %44, %40
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.usif_notify* @usif_notify_find(%struct.drm_file*, i32) #1

declare dso_local i32 @nvif_client_ioctl(%struct.nvif_client*, i8*, i32) #1

declare dso_local i32 @usif_notify_dtor(%struct.usif_notify*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
