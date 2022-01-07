; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_usif.c_usif_object_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_usif.c_usif_object_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { i32, %struct.nvif_client }
%struct.nvif_client = type { i32 }
%union.anon = type { %struct.nvif_ioctl_new_v0 }
%struct.nvif_ioctl_new_v0 = type { i64, i32 }
%struct.usif_object = type { i64, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVDRM_OBJECT_USIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, i8*, i32, i8*, i32)* @usif_object_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usif_object_new(%struct.drm_file* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_cli*, align 8
  %13 = alloca %struct.nvif_client*, align 8
  %14 = alloca %union.anon*, align 8
  %15 = alloca %struct.usif_object*, align 8
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
  %20 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %19, i32 0, i32 1
  store %struct.nvif_client* %20, %struct.nvif_client** %13, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %union.anon*
  store %union.anon* %22, %union.anon** %14, align 8
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.usif_object* @kmalloc(i32 16, i32 %25)
  store %struct.usif_object* %26, %struct.usif_object** %15, align 8
  %27 = icmp ne %struct.usif_object* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %94

31:                                               ; preds = %5
  %32 = load %struct.usif_object*, %struct.usif_object** %15, align 8
  %33 = getelementptr inbounds %struct.usif_object, %struct.usif_object* %32, i32 0, i32 2
  %34 = load %struct.nouveau_cli*, %struct.nouveau_cli** %12, align 8
  %35 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %34, i32 0, i32 0
  %36 = call i32 @list_add(i32* %33, i32* %35)
  %37 = load i32, i32* %16, align 4
  %38 = load %union.anon*, %union.anon** %14, align 8
  %39 = bitcast %union.anon* %38 to %struct.nvif_ioctl_new_v0*
  %40 = bitcast %struct.nvif_ioctl_new_v0* %39 to { i64, i32 }*
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @nvif_unpack(i32 %37, i8** %8, i32* %9, i64 %42, i32 %44, i32 0, i32 0, i32 1)
  store i32 %45, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %86, label %47

47:                                               ; preds = %31
  %48 = load %union.anon*, %union.anon** %14, align 8
  %49 = bitcast %union.anon* %48 to %struct.nvif_ioctl_new_v0*
  %50 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.usif_object*, %struct.usif_object** %15, align 8
  %53 = getelementptr inbounds %struct.usif_object, %struct.usif_object* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %union.anon*, %union.anon** %14, align 8
  %55 = bitcast %union.anon* %54 to %struct.nvif_ioctl_new_v0*
  %56 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.usif_object*, %struct.usif_object** %15, align 8
  %59 = getelementptr inbounds %struct.usif_object, %struct.usif_object* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @NVDRM_OBJECT_USIF, align 4
  %61 = load %union.anon*, %union.anon** %14, align 8
  %62 = bitcast %union.anon* %61 to %struct.nvif_ioctl_new_v0*
  %63 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.usif_object*, %struct.usif_object** %15, align 8
  %65 = bitcast %struct.usif_object* %64 to i8*
  %66 = ptrtoint i8* %65 to i64
  %67 = load %union.anon*, %union.anon** %14, align 8
  %68 = bitcast %union.anon* %67 to %struct.nvif_ioctl_new_v0*
  %69 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.nvif_client*, %struct.nvif_client** %13, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @nvif_client_ioctl(%struct.nvif_client* %70, i8* %71, i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load %struct.usif_object*, %struct.usif_object** %15, align 8
  %75 = getelementptr inbounds %struct.usif_object, %struct.usif_object* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %union.anon*, %union.anon** %14, align 8
  %78 = bitcast %union.anon* %77 to %struct.nvif_ioctl_new_v0*
  %79 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  %80 = load %struct.usif_object*, %struct.usif_object** %15, align 8
  %81 = getelementptr inbounds %struct.usif_object, %struct.usif_object* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %union.anon*, %union.anon** %14, align 8
  %84 = bitcast %union.anon* %83 to %struct.nvif_ioctl_new_v0*
  %85 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 8
  br label %86

86:                                               ; preds = %47, %31
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.usif_object*, %struct.usif_object** %15, align 8
  %91 = call i32 @usif_object_dtor(%struct.usif_object* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %28
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.usif_object* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @nvif_client_ioctl(%struct.nvif_client*, i8*, i32) #1

declare dso_local i32 @usif_object_dtor(%struct.usif_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
