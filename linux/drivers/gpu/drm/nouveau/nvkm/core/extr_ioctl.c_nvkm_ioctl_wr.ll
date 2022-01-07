; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_client = type { i32 }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nvif_ioctl_wr_v0 }
%struct.nvif_ioctl_wr_v0 = type { i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"wr size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"wr vers %d size %d addr %016llx data %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_client*, %struct.nvkm_object*, i8*, i32)* @nvkm_ioctl_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ioctl_wr(%struct.nvkm_client* %0, %struct.nvkm_object* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_client*, align 8
  %7 = alloca %struct.nvkm_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.anon*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_client* %0, %struct.nvkm_client** %6, align 8
  store %struct.nvkm_object* %1, %struct.nvkm_object** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %union.anon*
  store %union.anon* %13, %union.anon** %10, align 8
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %11, align 4
  %20 = load %union.anon*, %union.anon** %10, align 8
  %21 = bitcast %union.anon* %20 to %struct.nvif_ioctl_wr_v0*
  %22 = bitcast %struct.nvif_ioctl_wr_v0* %21 to { i64, i64 }*
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 4
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  %26 = load i64, i64* %25, align 4
  %27 = call i32 @nvif_unpack(i32 %19, i8** %8, i32* %9, i64 %24, i64 %26, i32 0, i32 0, i32 0)
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %4
  %30 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %31 = load %union.anon*, %union.anon** %10, align 8
  %32 = bitcast %union.anon* %31 to %struct.nvif_ioctl_wr_v0*
  %33 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %union.anon*, %union.anon** %10, align 8
  %36 = bitcast %union.anon* %35 to %struct.nvif_ioctl_wr_v0*
  %37 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %union.anon*, %union.anon** %10, align 8
  %40 = bitcast %union.anon* %39 to %struct.nvif_ioctl_wr_v0*
  %41 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %union.anon*, %union.anon** %10, align 8
  %44 = bitcast %union.anon* %43 to %struct.nvif_ioctl_wr_v0*
  %45 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38, i32 %42, i32 %46)
  br label %50

48:                                               ; preds = %4
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %92

50:                                               ; preds = %29
  %51 = load %union.anon*, %union.anon** %10, align 8
  %52 = bitcast %union.anon* %51 to %struct.nvif_ioctl_wr_v0*
  %53 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %88 [
    i32 1, label %55
    i32 2, label %66
    i32 4, label %77
  ]

55:                                               ; preds = %50
  %56 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %57 = load %union.anon*, %union.anon** %10, align 8
  %58 = bitcast %union.anon* %57 to %struct.nvif_ioctl_wr_v0*
  %59 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %union.anon*, %union.anon** %10, align 8
  %62 = bitcast %union.anon* %61 to %struct.nvif_ioctl_wr_v0*
  %63 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @nvkm_object_wr08(%struct.nvkm_object* %56, i32 %60, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %92

66:                                               ; preds = %50
  %67 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %68 = load %union.anon*, %union.anon** %10, align 8
  %69 = bitcast %union.anon* %68 to %struct.nvif_ioctl_wr_v0*
  %70 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %union.anon*, %union.anon** %10, align 8
  %73 = bitcast %union.anon* %72 to %struct.nvif_ioctl_wr_v0*
  %74 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nvkm_object_wr16(%struct.nvkm_object* %67, i32 %71, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %92

77:                                               ; preds = %50
  %78 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %79 = load %union.anon*, %union.anon** %10, align 8
  %80 = bitcast %union.anon* %79 to %struct.nvif_ioctl_wr_v0*
  %81 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %union.anon*, %union.anon** %10, align 8
  %84 = bitcast %union.anon* %83 to %struct.nvif_ioctl_wr_v0*
  %85 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, %struct.nvif_ioctl_wr_v0* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @nvkm_object_wr32(%struct.nvkm_object* %78, i32 %82, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %92

88:                                               ; preds = %50
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %89, %77, %66, %55, %48
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @nvkm_object_wr08(%struct.nvkm_object*, i32, i32) #1

declare dso_local i32 @nvkm_object_wr16(%struct.nvkm_object*, i32, i32) #1

declare dso_local i32 @nvkm_object_wr32(%struct.nvkm_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
