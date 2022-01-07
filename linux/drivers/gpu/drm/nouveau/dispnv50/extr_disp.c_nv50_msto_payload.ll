; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_msto_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_msto_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_payload = type { i32, i32, i32 }
%struct.nv50_msto = type { %struct.TYPE_10__, %struct.nv50_mstc* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.nv50_mstc = type { %struct.TYPE_9__*, %struct.nv50_mstm* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nv50_mstm = type { %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, %struct.drm_dp_payload*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: vcpi %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: %d: vcpi %d start 0x%02x slots 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_dp_payload* (%struct.nv50_msto*)* @nv50_msto_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_dp_payload* @nv50_msto_payload(%struct.nv50_msto* %0) #0 {
  %2 = alloca %struct.drm_dp_payload*, align 8
  %3 = alloca %struct.nv50_msto*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nv50_mstc*, align 8
  %6 = alloca %struct.nv50_mstm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_dp_payload*, align 8
  %10 = alloca %struct.drm_dp_payload*, align 8
  store %struct.nv50_msto* %0, %struct.nv50_msto** %3, align 8
  %11 = load %struct.nv50_msto*, %struct.nv50_msto** %3, align 8
  %12 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nouveau_drm* @nouveau_drm(i32 %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %4, align 8
  %16 = load %struct.nv50_msto*, %struct.nv50_msto** %3, align 8
  %17 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %16, i32 0, i32 1
  %18 = load %struct.nv50_mstc*, %struct.nv50_mstc** %17, align 8
  store %struct.nv50_mstc* %18, %struct.nv50_mstc** %5, align 8
  %19 = load %struct.nv50_mstc*, %struct.nv50_mstc** %5, align 8
  %20 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %19, i32 0, i32 1
  %21 = load %struct.nv50_mstm*, %struct.nv50_mstm** %20, align 8
  store %struct.nv50_mstm* %21, %struct.nv50_mstm** %6, align 8
  %22 = load %struct.nv50_mstc*, %struct.nv50_mstc** %5, align 8
  %23 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %29 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = call i32 @mutex_is_locked(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %37 = load %struct.nv50_msto*, %struct.nv50_msto** %3, align 8
  %38 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, ...) @NV_ATOMIC(%struct.nouveau_drm* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %77, %1
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %46 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %43
  %51 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %52 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.drm_dp_payload*, %struct.drm_dp_payload** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.drm_dp_payload, %struct.drm_dp_payload* %54, i64 %56
  store %struct.drm_dp_payload* %57, %struct.drm_dp_payload** %9, align 8
  %58 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %59 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %60 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.drm_dp_payload*, %struct.drm_dp_payload** %9, align 8
  %68 = getelementptr inbounds %struct.drm_dp_payload, %struct.drm_dp_payload* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.drm_dp_payload*, %struct.drm_dp_payload** %9, align 8
  %71 = getelementptr inbounds %struct.drm_dp_payload, %struct.drm_dp_payload* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.drm_dp_payload*, %struct.drm_dp_payload** %9, align 8
  %74 = getelementptr inbounds %struct.drm_dp_payload, %struct.drm_dp_payload* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, ...) @NV_ATOMIC(%struct.nouveau_drm* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66, i32 %69, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %50
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %43

80:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %84 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %81
  %89 = load %struct.nv50_mstm*, %struct.nv50_mstm** %6, align 8
  %90 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.drm_dp_payload*, %struct.drm_dp_payload** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.drm_dp_payload, %struct.drm_dp_payload* %92, i64 %94
  store %struct.drm_dp_payload* %95, %struct.drm_dp_payload** %10, align 8
  %96 = load %struct.drm_dp_payload*, %struct.drm_dp_payload** %10, align 8
  %97 = getelementptr inbounds %struct.drm_dp_payload, %struct.drm_dp_payload* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %88
  %102 = load %struct.drm_dp_payload*, %struct.drm_dp_payload** %10, align 8
  store %struct.drm_dp_payload* %102, %struct.drm_dp_payload** %2, align 8
  br label %108

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %81

107:                                              ; preds = %81
  store %struct.drm_dp_payload* null, %struct.drm_dp_payload** %2, align 8
  br label %108

108:                                              ; preds = %107, %101
  %109 = load %struct.drm_dp_payload*, %struct.drm_dp_payload** %2, align 8
  ret %struct.drm_dp_payload* %109
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @NV_ATOMIC(%struct.nouveau_drm*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
