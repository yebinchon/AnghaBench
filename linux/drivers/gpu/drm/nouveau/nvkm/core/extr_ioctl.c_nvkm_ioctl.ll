; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_client = type { i32, i32*, %struct.nvkm_object }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nvif_ioctl_v0 }
%struct.nvif_ioctl_v0 = type { i32, i32, i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"vers %d type %02x object %016llx owner %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"return %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_ioctl(%struct.nvkm_client* %0, i32 %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.nvkm_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.nvkm_object*, align 8
  %12 = alloca %union.anon*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvif_ioctl_v0, align 8
  store %struct.nvkm_client* %0, %struct.nvkm_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %15 = load %struct.nvkm_client*, %struct.nvkm_client** %6, align 8
  %16 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %15, i32 0, i32 2
  store %struct.nvkm_object* %16, %struct.nvkm_object** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %union.anon*
  store %union.anon* %18, %union.anon** %12, align 8
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.nvkm_client*, %struct.nvkm_client** %6, align 8
  %23 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.nvkm_object*, %struct.nvkm_object** %11, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %13, align 4
  %28 = load %union.anon*, %union.anon** %12, align 8
  %29 = bitcast %union.anon* %28 to %struct.nvif_ioctl_v0*
  %30 = bitcast %struct.nvif_ioctl_v0* %14 to i8*
  %31 = bitcast %struct.nvif_ioctl_v0* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 4 %31, i64 24, i1 false)
  %32 = call i32 @nvif_unpack(i32 %27, i8** %8, i32* %9, %struct.nvif_ioctl_v0* byval(%struct.nvif_ioctl_v0) align 8 %14, i32 0, i32 0, i32 1)
  store i32 %32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %75, label %34

34:                                               ; preds = %5
  %35 = load %struct.nvkm_object*, %struct.nvkm_object** %11, align 8
  %36 = load %union.anon*, %union.anon** %12, align 8
  %37 = bitcast %union.anon* %36 to %struct.nvif_ioctl_v0*
  %38 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %union.anon*, %union.anon** %12, align 8
  %41 = bitcast %union.anon* %40 to %struct.nvif_ioctl_v0*
  %42 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %union.anon*, %union.anon** %12, align 8
  %45 = bitcast %union.anon* %44 to %struct.nvif_ioctl_v0*
  %46 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %union.anon*, %union.anon** %12, align 8
  %49 = bitcast %union.anon* %48 to %struct.nvif_ioctl_v0*
  %50 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %43, i32 %47, i32 %51)
  %53 = load %struct.nvkm_client*, %struct.nvkm_client** %6, align 8
  %54 = load %union.anon*, %union.anon** %12, align 8
  %55 = bitcast %union.anon* %54 to %struct.nvif_ioctl_v0*
  %56 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %union.anon*, %union.anon** %12, align 8
  %59 = bitcast %union.anon* %58 to %struct.nvif_ioctl_v0*
  %60 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %union.anon*, %union.anon** %12, align 8
  %65 = bitcast %union.anon* %64 to %struct.nvif_ioctl_v0*
  %66 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %union.anon*, %union.anon** %12, align 8
  %69 = bitcast %union.anon* %68 to %struct.nvif_ioctl_v0*
  %70 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %69, i32 0, i32 1
  %71 = load %union.anon*, %union.anon** %12, align 8
  %72 = bitcast %union.anon* %71 to %struct.nvif_ioctl_v0*
  %73 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %72, i32 0, i32 0
  %74 = call i32 @nvkm_ioctl_path(%struct.nvkm_client* %53, i32 %57, i32 %61, i8* %62, i32 %63, i32 %67, i32* %70, i32* %73)
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %34, %5
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load %struct.nvkm_object*, %struct.nvkm_object** %11, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i8**, i8*** %10, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.nvkm_client*, %struct.nvkm_client** %6, align 8
  %86 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load i8**, i8*** %10, align 8
  store i8* %88, i8** %89, align 8
  %90 = load %struct.nvkm_client*, %struct.nvkm_client** %6, align 8
  %91 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %90, i32 0, i32 1
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %84, %78
  br label %93

93:                                               ; preds = %92, %75
  %94 = load i32, i32* %13, align 4
  ret i32 %94
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_ioctl_v0* byval(%struct.nvif_ioctl_v0) align 8, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvkm_ioctl_path(%struct.nvkm_client*, i32, i32, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
