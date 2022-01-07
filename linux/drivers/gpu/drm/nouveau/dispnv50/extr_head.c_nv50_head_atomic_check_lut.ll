; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_atomic_check_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head.c_nv50_head_atomic_check_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_18__*, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { {}*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_17__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.drm_property_blob* }
%struct.drm_property_blob = type { i32 }
%struct.nv50_disp = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_head*, %struct.nv50_head_atom*)* @nv50_head_atomic_check_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_head_atomic_check_lut(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nv50_head*, align 8
  %5 = alloca %struct.nv50_head_atom*, align 8
  %6 = alloca %struct.nv50_disp*, align 8
  %7 = alloca %struct.drm_property_blob*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %4, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %5, align 8
  %8 = load %struct.nv50_head*, %struct.nv50_head** %4, align 8
  %9 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.nv50_disp* @nv50_disp(i32 %12)
  store %struct.nv50_disp* %13, %struct.nv50_disp** %6, align 8
  %14 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %15 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.drm_property_blob*, %struct.drm_property_blob** %16, align 8
  store %struct.drm_property_blob* %17, %struct.drm_property_blob** %7, align 8
  %18 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %19 = icmp ne %struct.drm_property_blob* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %22 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %28 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %32 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %85

39:                                               ; preds = %26
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %7, align 8
  br label %40

40:                                               ; preds = %39, %20
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %43 = icmp ne %struct.drm_property_blob* %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load %struct.nv50_head*, %struct.nv50_head** %4, align 8
  %46 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %53 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %85

55:                                               ; preds = %44, %41
  %56 = load %struct.nv50_disp*, %struct.nv50_disp** %6, align 8
  %57 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %56, i32 0, i32 0
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %64 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %67 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %74 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.nv50_head*, %struct.nv50_head** %4, align 8
  %77 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %76, i32 0, i32 0
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = bitcast {}** %79 to i32 (%struct.nv50_head*, %struct.nv50_head_atom*)**
  %81 = load i32 (%struct.nv50_head*, %struct.nv50_head_atom*)*, i32 (%struct.nv50_head*, %struct.nv50_head_atom*)** %80, align 8
  %82 = load %struct.nv50_head*, %struct.nv50_head** %4, align 8
  %83 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %5, align 8
  %84 = call i32 %81(%struct.nv50_head* %82, %struct.nv50_head_atom* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %55, %51, %36
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.nv50_disp* @nv50_disp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
