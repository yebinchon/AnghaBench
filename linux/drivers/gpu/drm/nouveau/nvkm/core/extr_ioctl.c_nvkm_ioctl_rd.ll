; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_client = type { i32 }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nvif_ioctl_rd_v0 }
%struct.nvif_ioctl_rd_v0 = type { i32, i32, i32, i32 }
%union.anon.0 = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"rd size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"rd vers %d size %d addr %016llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_client*, %struct.nvkm_object*, i8*, i32)* @nvkm_ioctl_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ioctl_rd(%struct.nvkm_client* %0, %struct.nvkm_object* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_client*, align 8
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.anon*, align 8
  %10 = alloca %union.anon.0, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_client* %0, %struct.nvkm_client** %5, align 8
  store %struct.nvkm_object* %1, %struct.nvkm_object** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %union.anon*
  store %union.anon* %13, %union.anon** %9, align 8
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %11, align 4
  %20 = load %union.anon*, %union.anon** %9, align 8
  %21 = bitcast %union.anon* %20 to %struct.nvif_ioctl_rd_v0*
  %22 = bitcast %struct.nvif_ioctl_rd_v0* %21 to { i64, i64 }*
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 4
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  %26 = load i64, i64* %25, align 4
  %27 = call i32 @nvif_unpack(i32 %19, i8** %7, i32* %8, i64 %24, i64 %26, i32 0, i32 0, i32 0)
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %91, label %29

29:                                               ; preds = %4
  %30 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %31 = load %union.anon*, %union.anon** %9, align 8
  %32 = bitcast %union.anon* %31 to %struct.nvif_ioctl_rd_v0*
  %33 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, %struct.nvif_ioctl_rd_v0* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %union.anon*, %union.anon** %9, align 8
  %36 = bitcast %union.anon* %35 to %struct.nvif_ioctl_rd_v0*
  %37 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, %struct.nvif_ioctl_rd_v0* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %union.anon*, %union.anon** %9, align 8
  %40 = bitcast %union.anon* %39 to %struct.nvif_ioctl_rd_v0*
  %41 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, %struct.nvif_ioctl_rd_v0* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38, i32 %42)
  %44 = load %union.anon*, %union.anon** %9, align 8
  %45 = bitcast %union.anon* %44 to %struct.nvif_ioctl_rd_v0*
  %46 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, %struct.nvif_ioctl_rd_v0* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %87 [
    i32 1, label %48
    i32 2, label %61
    i32 4, label %74
  ]

48:                                               ; preds = %29
  %49 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %50 = load %union.anon*, %union.anon** %9, align 8
  %51 = bitcast %union.anon* %50 to %struct.nvif_ioctl_rd_v0*
  %52 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, %struct.nvif_ioctl_rd_v0* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %union.anon.0* %10 to i32*
  %55 = call i32 @nvkm_object_rd08(%struct.nvkm_object* %49, i32 %53, i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = bitcast %union.anon.0* %10 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = load %union.anon*, %union.anon** %9, align 8
  %59 = bitcast %union.anon* %58 to %struct.nvif_ioctl_rd_v0*
  %60 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, %struct.nvif_ioctl_rd_v0* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  br label %90

61:                                               ; preds = %29
  %62 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %63 = load %union.anon*, %union.anon** %9, align 8
  %64 = bitcast %union.anon* %63 to %struct.nvif_ioctl_rd_v0*
  %65 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, %struct.nvif_ioctl_rd_v0* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = bitcast %union.anon.0* %10 to i32*
  %68 = call i32 @nvkm_object_rd16(%struct.nvkm_object* %62, i32 %66, i32* %67)
  store i32 %68, i32* %11, align 4
  %69 = bitcast %union.anon.0* %10 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = load %union.anon*, %union.anon** %9, align 8
  %72 = bitcast %union.anon* %71 to %struct.nvif_ioctl_rd_v0*
  %73 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, %struct.nvif_ioctl_rd_v0* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  br label %90

74:                                               ; preds = %29
  %75 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %76 = load %union.anon*, %union.anon** %9, align 8
  %77 = bitcast %union.anon* %76 to %struct.nvif_ioctl_rd_v0*
  %78 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, %struct.nvif_ioctl_rd_v0* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = bitcast %union.anon.0* %10 to i32*
  %81 = call i32 @nvkm_object_rd32(%struct.nvkm_object* %75, i32 %79, i32* %80)
  store i32 %81, i32* %11, align 4
  %82 = bitcast %union.anon.0* %10 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = load %union.anon*, %union.anon** %9, align 8
  %85 = bitcast %union.anon* %84 to %struct.nvif_ioctl_rd_v0*
  %86 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, %struct.nvif_ioctl_rd_v0* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %90

87:                                               ; preds = %29
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %87, %74, %61, %48
  br label %91

91:                                               ; preds = %90, %4
  %92 = load i32, i32* %11, align 4
  ret i32 %92
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @nvkm_object_rd08(%struct.nvkm_object*, i32, i32*) #1

declare dso_local i32 @nvkm_object_rd16(%struct.nvkm_object*, i32, i32*) #1

declare dso_local i32 @nvkm_object_rd32(%struct.nvkm_object*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
