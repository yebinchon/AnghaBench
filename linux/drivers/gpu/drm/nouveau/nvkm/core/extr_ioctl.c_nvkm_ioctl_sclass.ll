; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_sclass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_sclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_client = type { i32 }
%struct.nvkm_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)* }
%struct.nvkm_oclass = type { %struct.TYPE_6__, %struct.nvkm_client* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%union.anon = type { %struct.nvif_ioctl_sclass_v0 }
%struct.nvif_ioctl_sclass_v0 = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"sclass size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"sclass vers %d count %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_client*, %struct.nvkm_object*, i8*, i32)* @nvkm_ioctl_sclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ioctl_sclass(%struct.nvkm_client* %0, %struct.nvkm_object* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_client*, align 8
  %7 = alloca %struct.nvkm_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.anon*, align 8
  %11 = alloca %struct.nvkm_oclass, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_client* %0, %struct.nvkm_client** %6, align 8
  store %struct.nvkm_object* %1, %struct.nvkm_object** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %union.anon*
  store %union.anon* %15, %union.anon** %10, align 8
  %16 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %11, i32 0, i32 0
  %17 = bitcast %struct.TYPE_6__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 12, i1 false)
  %18 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %11, i32 0, i32 1
  %19 = load %struct.nvkm_client*, %struct.nvkm_client** %6, align 8
  store %struct.nvkm_client* %19, %struct.nvkm_client** %18, align 8
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %12, align 4
  %26 = load %union.anon*, %union.anon** %10, align 8
  %27 = bitcast %union.anon* %26 to %struct.nvif_ioctl_sclass_v0*
  %28 = call i32 @nvif_unpack(i32 %25, i8** %8, i32* %9, %struct.nvif_ioctl_sclass_v0* byval(%struct.nvif_ioctl_sclass_v0) align 8 %27, i32 0, i32 0, i32 1)
  store i32 %28, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %122, label %30

30:                                               ; preds = %4
  %31 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %32 = load %union.anon*, %union.anon** %10, align 8
  %33 = bitcast %union.anon* %32 to %struct.nvif_ioctl_sclass_v0*
  %34 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, %struct.nvif_ioctl_sclass_v0* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %union.anon*, %union.anon** %10, align 8
  %37 = bitcast %union.anon* %36 to %struct.nvif_ioctl_sclass_v0*
  %38 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, %struct.nvif_ioctl_sclass_v0* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = load %union.anon*, %union.anon** %10, align 8
  %44 = bitcast %union.anon* %43 to %struct.nvif_ioctl_sclass_v0*
  %45 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, %struct.nvif_ioctl_sclass_v0* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 12
  %49 = icmp ne i64 %42, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %124

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %114, %53
  %55 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %56 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)*, i64 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)** %58, align 8
  %60 = icmp ne i64 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %63 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)*, i64 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)** %65, align 8
  %67 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i64 %66(%struct.nvkm_object* %67, i32 %68, %struct.nvkm_oclass* %11)
  %70 = icmp sge i64 %69, 0
  br label %71

71:                                               ; preds = %61, %54
  %72 = phi i1 [ false, %54 ], [ %70, %61 ]
  br i1 %72, label %73, label %117

73:                                               ; preds = %71
  %74 = load i32, i32* %13, align 4
  %75 = load %union.anon*, %union.anon** %10, align 8
  %76 = bitcast %union.anon* %75 to %struct.nvif_ioctl_sclass_v0*
  %77 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, %struct.nvif_ioctl_sclass_v0* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %11, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %union.anon*, %union.anon** %10, align 8
  %85 = bitcast %union.anon* %84 to %struct.nvif_ioctl_sclass_v0*
  %86 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, %struct.nvif_ioctl_sclass_v0* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32 %83, i32* %91, align 4
  %92 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %11, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %union.anon*, %union.anon** %10, align 8
  %96 = bitcast %union.anon* %95 to %struct.nvif_ioctl_sclass_v0*
  %97 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, %struct.nvif_ioctl_sclass_v0* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %94, i32* %102, align 4
  %103 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %11, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %union.anon*, %union.anon** %10, align 8
  %107 = bitcast %union.anon* %106 to %struct.nvif_ioctl_sclass_v0*
  %108 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, %struct.nvif_ioctl_sclass_v0* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 %105, i32* %113, align 4
  br label %114

114:                                              ; preds = %80, %73
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %54

117:                                              ; preds = %71
  %118 = load i32, i32* %13, align 4
  %119 = load %union.anon*, %union.anon** %10, align 8
  %120 = bitcast %union.anon* %119 to %struct.nvif_ioctl_sclass_v0*
  %121 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, %struct.nvif_ioctl_sclass_v0* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %4
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %50
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #2

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_ioctl_sclass_v0* byval(%struct.nvif_ioctl_sclass_v0) align 8, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
