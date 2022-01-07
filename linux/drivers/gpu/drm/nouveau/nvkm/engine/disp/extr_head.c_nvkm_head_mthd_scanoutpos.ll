; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_head.c_nvkm_head_mthd_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_head.c_nvkm_head_mthd_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_head = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_head*, i32*, i32*)*, i32 (%struct.nvkm_head*, %struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%union.anon = type { %struct.nv04_disp_scanoutpos_v0 }
%struct.nv04_disp_scanoutpos_v0 = type { i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"head scanoutpos size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"head scanoutpos vers %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_head_mthd_scanoutpos(%struct.nvkm_object* %0, %struct.nvkm_head* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca %struct.nvkm_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.anon*, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %6, align 8
  store %struct.nvkm_head* %1, %struct.nvkm_head** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %union.anon*
  store %union.anon* %13, %union.anon** %10, align 8
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @nvif_ioctl(%struct.nvkm_object* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %11, align 4
  %20 = load %union.anon*, %union.anon** %10, align 8
  %21 = bitcast %union.anon* %20 to %struct.nv04_disp_scanoutpos_v0*
  %22 = call i32 @nvif_unpack(i32 %19, i8** %8, i32* %9, %struct.nv04_disp_scanoutpos_v0* byval(%struct.nv04_disp_scanoutpos_v0) align 8 %21, i32 0, i32 0, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %124, label %24

24:                                               ; preds = %4
  %25 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %26 = load %union.anon*, %union.anon** %10, align 8
  %27 = bitcast %union.anon* %26 to %struct.nv04_disp_scanoutpos_v0*
  %28 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nvif_ioctl(%struct.nvkm_object* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %32 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32 (%struct.nvkm_head*, %struct.TYPE_4__*)*, i32 (%struct.nvkm_head*, %struct.TYPE_4__*)** %34, align 8
  %36 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %37 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %38 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %37, i32 0, i32 1
  %39 = call i32 %35(%struct.nvkm_head* %36, %struct.TYPE_4__* %38)
  %40 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %41 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %union.anon*, %union.anon** %10, align 8
  %45 = bitcast %union.anon* %44 to %struct.nv04_disp_scanoutpos_v0*
  %46 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %48 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %union.anon*, %union.anon** %10, align 8
  %52 = bitcast %union.anon* %51 to %struct.nv04_disp_scanoutpos_v0*
  %53 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %52, i32 0, i32 8
  store i32 %50, i32* %53, align 4
  %54 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %55 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %union.anon*, %union.anon** %10, align 8
  %59 = bitcast %union.anon* %58 to %struct.nv04_disp_scanoutpos_v0*
  %60 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %59, i32 0, i32 7
  store i32 %57, i32* %60, align 8
  %61 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %62 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %union.anon*, %union.anon** %10, align 8
  %66 = bitcast %union.anon* %65 to %struct.nv04_disp_scanoutpos_v0*
  %67 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 8
  %68 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %69 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %union.anon*, %union.anon** %10, align 8
  %73 = bitcast %union.anon* %72 to %struct.nv04_disp_scanoutpos_v0*
  %74 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %73, i32 0, i32 6
  store i32 %71, i32* %74, align 4
  %75 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %76 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %union.anon*, %union.anon** %10, align 8
  %80 = bitcast %union.anon* %79 to %struct.nv04_disp_scanoutpos_v0*
  %81 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %80, i32 0, i32 5
  store i32 %78, i32* %81, align 8
  %82 = load %union.anon*, %union.anon** %10, align 8
  %83 = bitcast %union.anon* %82 to %struct.nv04_disp_scanoutpos_v0*
  %84 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %24
  %88 = load %union.anon*, %union.anon** %10, align 8
  %89 = bitcast %union.anon* %88 to %struct.nv04_disp_scanoutpos_v0*
  %90 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %87, %24
  %94 = load i32, i32* @ENOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %127

96:                                               ; preds = %87
  %97 = call i32 (...) @ktime_get()
  %98 = call i8* @ktime_to_ns(i32 %97)
  %99 = load %union.anon*, %union.anon** %10, align 8
  %100 = bitcast %union.anon* %99 to %struct.nv04_disp_scanoutpos_v0*
  %101 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  store i8* %98, i8** %103, align 8
  %104 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %105 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32 (%struct.nvkm_head*, i32*, i32*)*, i32 (%struct.nvkm_head*, i32*, i32*)** %107, align 8
  %109 = load %struct.nvkm_head*, %struct.nvkm_head** %7, align 8
  %110 = load %union.anon*, %union.anon** %10, align 8
  %111 = bitcast %union.anon* %110 to %struct.nv04_disp_scanoutpos_v0*
  %112 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %111, i32 0, i32 2
  %113 = load %union.anon*, %union.anon** %10, align 8
  %114 = bitcast %union.anon* %113 to %struct.nv04_disp_scanoutpos_v0*
  %115 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %114, i32 0, i32 1
  %116 = call i32 %108(%struct.nvkm_head* %109, i32* %112, i32* %115)
  %117 = call i32 (...) @ktime_get()
  %118 = call i8* @ktime_to_ns(i32 %117)
  %119 = load %union.anon*, %union.anon** %10, align 8
  %120 = bitcast %union.anon* %119 to %struct.nv04_disp_scanoutpos_v0*
  %121 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, %struct.nv04_disp_scanoutpos_v0* %120, i32 0, i32 0
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  store i8* %118, i8** %123, align 8
  br label %126

124:                                              ; preds = %4
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %5, align 4
  br label %127

126:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %124, %93
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nv04_disp_scanoutpos_v0* byval(%struct.nv04_disp_scanoutpos_v0) align 8, i32, i32, i32) #1

declare dso_local i8* @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
