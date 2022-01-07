; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_user.c_nvkm_ufault_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_user.c_nvkm_ufault_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_fault* }
%struct.nvkm_fault = type { %struct.TYPE_4__*, %struct.nvkm_fault_buffer** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.nvkm_fault_buffer = type { %struct.nvkm_object, i32, i32, i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_oclass = type { i32 }
%union.anon = type { %struct.nvif_clb069_v0 }
%struct.nvif_clb069_v0 = type { i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@nvkm_ufault = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_ufault_new(%struct.nvkm_device* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_object**, align 8
  %12 = alloca %union.anon*, align 8
  %13 = alloca %struct.nvkm_fault*, align 8
  %14 = alloca %struct.nvkm_fault_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca { i64, i32 }, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_object** %4, %struct.nvkm_object*** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %union.anon*
  store %union.anon* %18, %union.anon** %12, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 0
  %21 = load %struct.nvkm_fault*, %struct.nvkm_fault** %20, align 8
  store %struct.nvkm_fault* %21, %struct.nvkm_fault** %13, align 8
  %22 = load %struct.nvkm_fault*, %struct.nvkm_fault** %13, align 8
  %23 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %22, i32 0, i32 1
  %24 = load %struct.nvkm_fault_buffer**, %struct.nvkm_fault_buffer*** %23, align 8
  %25 = load %struct.nvkm_fault*, %struct.nvkm_fault** %13, align 8
  %26 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %24, i64 %30
  %32 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %31, align 8
  store %struct.nvkm_fault_buffer* %32, %struct.nvkm_fault_buffer** %14, align 8
  %33 = load i32, i32* @ENOSYS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load %union.anon*, %union.anon** %12, align 8
  %37 = bitcast %union.anon* %36 to %struct.nvif_clb069_v0*
  %38 = bitcast { i64, i32 }* %16 to i8*
  %39 = bitcast %struct.nvif_clb069_v0* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 12, i1 false)
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %41 = load i64, i64* %40, align 4
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nvif_unpack(i32 %35, i8** %9, i32* %10, i64 %41, i32 %43, i32 0, i32 0, i32 0)
  store i32 %44, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %5
  %47 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %14, align 8
  %48 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %union.anon*, %union.anon** %12, align 8
  %51 = bitcast %union.anon* %50 to %struct.nvif_clb069_v0*
  %52 = getelementptr inbounds %struct.nvif_clb069_v0, %struct.nvif_clb069_v0* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %14, align 8
  %54 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %union.anon*, %union.anon** %12, align 8
  %57 = bitcast %union.anon* %56 to %struct.nvif_clb069_v0*
  %58 = getelementptr inbounds %struct.nvif_clb069_v0, %struct.nvif_clb069_v0* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %14, align 8
  %60 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %union.anon*, %union.anon** %12, align 8
  %63 = bitcast %union.anon* %62 to %struct.nvif_clb069_v0*
  %64 = getelementptr inbounds %struct.nvif_clb069_v0, %struct.nvif_clb069_v0* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  br label %67

65:                                               ; preds = %5
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %6, align 4
  br label %75

67:                                               ; preds = %46
  %68 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %69 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %14, align 8
  %70 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %69, i32 0, i32 0
  %71 = call i32 @nvkm_object_ctor(i32* @nvkm_ufault, %struct.nvkm_oclass* %68, %struct.nvkm_object* %70)
  %72 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %14, align 8
  %73 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %72, i32 0, i32 0
  %74 = load %struct.nvkm_object**, %struct.nvkm_object*** %11, align 8
  store %struct.nvkm_object* %73, %struct.nvkm_object** %74, align 8
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %67, %65
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
