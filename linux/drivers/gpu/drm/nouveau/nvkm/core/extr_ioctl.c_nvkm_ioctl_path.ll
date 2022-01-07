; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 (%struct.nvkm_client*, %struct.nvkm_object*, i8*, i64)* }
%struct.nvkm_client = type { i32 }
%struct.nvkm_object = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"object not found\0A\00", align 1
@NVIF_IOCTL_V0_OWNER_ANY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"route != owner\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nvkm_ioctl_v0 = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_client*, i32, i64, i8*, i64, i64, i64*, i32*)* @nvkm_ioctl_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ioctl_path(%struct.nvkm_client* %0, i32 %1, i64 %2, i8* %3, i64 %4, i64 %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.nvkm_object*, align 8
  %19 = alloca i32, align 4
  store %struct.nvkm_client* %0, %struct.nvkm_client** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load %struct.nvkm_client*, %struct.nvkm_client** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.nvkm_object* @nvkm_object_search(%struct.nvkm_client* %20, i32 %21, i32* null)
  store %struct.nvkm_object* %22, %struct.nvkm_object** %18, align 8
  %23 = load %struct.nvkm_object*, %struct.nvkm_object** %18, align 8
  %24 = call i64 @IS_ERR(%struct.nvkm_object* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %8
  %27 = load %struct.nvkm_client*, %struct.nvkm_client** %10, align 8
  %28 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %27, i32 0, i32 0
  %29 = call i32 @nvif_ioctl(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.nvkm_object*, %struct.nvkm_object** %18, align 8
  %31 = call i32 @PTR_ERR(%struct.nvkm_object* %30)
  store i32 %31, i32* %9, align 4
  br label %84

32:                                               ; preds = %8
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* @NVIF_IOCTL_V0_OWNER_ANY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i64, i64* %15, align 8
  %38 = load %struct.nvkm_object*, %struct.nvkm_object** %18, align 8
  %39 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.nvkm_client*, %struct.nvkm_client** %10, align 8
  %44 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %43, i32 0, i32 0
  %45 = call i32 @nvif_ioctl(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EACCES, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %84

48:                                               ; preds = %36, %32
  %49 = load %struct.nvkm_object*, %struct.nvkm_object** %18, align 8
  %50 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %16, align 8
  store i64 %51, i64* %52, align 8
  %53 = load %struct.nvkm_object*, %struct.nvkm_object** %18, align 8
  %54 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %17, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %19, align 4
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nvkm_ioctl_v0, align 8
  %61 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %60)
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %48
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nvkm_ioctl_v0, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nvkm_ioctl_v0, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32 (%struct.nvkm_client*, %struct.nvkm_object*, i8*, i64)*, i32 (%struct.nvkm_client*, %struct.nvkm_object*, i8*, i64)** %74, align 8
  %76 = load %struct.nvkm_client*, %struct.nvkm_client** %10, align 8
  %77 = load %struct.nvkm_object*, %struct.nvkm_object** %18, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i32 %75(%struct.nvkm_client* %76, %struct.nvkm_object* %77, i8* %78, i64 %79)
  store i32 %80, i32* %19, align 4
  br label %81

81:                                               ; preds = %70, %63
  br label %82

82:                                               ; preds = %81, %48
  %83 = load i32, i32* %19, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %42, %26
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local %struct.nvkm_object* @nvkm_object_search(%struct.nvkm_client*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.nvkm_object*) #1

declare dso_local i32 @nvif_ioctl(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.nvkm_object*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
