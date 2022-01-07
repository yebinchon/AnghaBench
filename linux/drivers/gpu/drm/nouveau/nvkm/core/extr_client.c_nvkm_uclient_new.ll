; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_client.c_nvkm_uclient_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_client.c_nvkm_uclient_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oclass = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvkm_object = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%union.anon = type { %struct.nvif_client_v0 }
%struct.nvif_client_v0 = type { i32, i64* }
%struct.nvkm_client = type { %struct.nvkm_object, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @nvkm_uclient_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_uclient_new(%struct.nvkm_oclass* %0, i8* %1, i32 %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_oclass*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_object**, align 8
  %10 = alloca %union.anon*, align 8
  %11 = alloca %struct.nvkm_client*, align 8
  %12 = alloca i32, align 4
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %union.anon*
  store %union.anon* %14, %union.anon** %10, align 8
  %15 = load i32, i32* @ENOSYS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load %union.anon*, %union.anon** %10, align 8
  %19 = bitcast %union.anon* %18 to %struct.nvif_client_v0*
  %20 = bitcast %struct.nvif_client_v0* %19 to { i32, i64* }*
  %21 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %20, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = call i32 @nvif_unpack(i32 %17, i8** %7, i32* %8, i32 %22, i64* %24, i32 0, i32 0, i32 0)
  store i32 %25, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %4
  %28 = load %union.anon*, %union.anon** %10, align 8
  %29 = bitcast %union.anon* %28 to %struct.nvif_client_v0*
  %30 = getelementptr inbounds %struct.nvif_client_v0, %struct.nvif_client_v0* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 7
  store i64 0, i64* %32, align 8
  %33 = load %union.anon*, %union.anon** %10, align 8
  %34 = bitcast %union.anon* %33 to %struct.nvif_client_v0*
  %35 = getelementptr inbounds %struct.nvif_client_v0, %struct.nvif_client_v0* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load %union.anon*, %union.anon** %10, align 8
  %38 = bitcast %union.anon* %37 to %struct.nvif_client_v0*
  %39 = getelementptr inbounds %struct.nvif_client_v0, %struct.nvif_client_v0* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %42 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nvkm_client_new(i64* %36, i32 %40, i32* null, i32* null, i32 %45, %struct.nvkm_client** %11)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %27
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %95

51:                                               ; preds = %27
  br label %54

52:                                               ; preds = %4
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %95

54:                                               ; preds = %51
  %55 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %56 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.nvkm_client*, %struct.nvkm_client** %11, align 8
  %59 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %59, i32 0, i32 4
  store %struct.TYPE_2__* %57, %struct.TYPE_2__** %60, align 8
  %61 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %62 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nvkm_client*, %struct.nvkm_client** %11, align 8
  %65 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %68 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.nvkm_client*, %struct.nvkm_client** %11, align 8
  %71 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %74 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nvkm_client*, %struct.nvkm_client** %11, align 8
  %77 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %80 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.nvkm_client*, %struct.nvkm_client** %11, align 8
  %83 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %86 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nvkm_client*, %struct.nvkm_client** %11, align 8
  %91 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.nvkm_client*, %struct.nvkm_client** %11, align 8
  %93 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %92, i32 0, i32 0
  %94 = load %struct.nvkm_object**, %struct.nvkm_object*** %9, align 8
  store %struct.nvkm_object* %93, %struct.nvkm_object** %94, align 8
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %54, %52, %49
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @nvkm_client_new(i64*, i32, i32*, i32*, i32, %struct.nvkm_client**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
