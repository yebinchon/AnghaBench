; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_buf = type { i32, i32, i32, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"indirect: buf=%d s=0x%x e=0x%x\0A\00", align 1
@R128_CCE_PACKET2 = common dso_local global i32 0, align 4
@R128_PM4_IW_INDOFF = common dso_local global i32 0, align 4
@R128_LAST_DISPATCH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_buf*, i32, i32)* @r128_cce_dispatch_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r128_cce_dispatch_indirect(%struct.drm_device* %0, %struct.drm_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_buf* %1, %struct.drm_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  %17 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %18 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %17, i32 0, i32 5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %10, align 8
  %20 = load i32, i32* @RING_LOCALS, align 4
  %21 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %22 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %81

30:                                               ; preds = %4
  %31 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %32 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %36, %37
  %39 = add nsw i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = udiv i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %30
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %54 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %13, align 8
  %62 = load i32, i32* @R128_CCE_PACKET2, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %63, i32* %68, align 4
  br label %69

69:                                               ; preds = %46, %30
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = call i32 @BEGIN_RING(i32 3)
  %73 = load i32, i32* @R128_PM4_IW_INDOFF, align 4
  %74 = call i32 @CCE_PACKET0(i32 %73, i32 1)
  %75 = call i32 @OUT_RING(i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @OUT_RING(i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @OUT_RING(i32 %78)
  %80 = call i32 (...) @ADVANCE_RING()
  br label %81

81:                                               ; preds = %69, %4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = call i32 @BEGIN_RING(i32 2)
  %95 = load i32, i32* @R128_LAST_DISPATCH_REG, align 4
  %96 = call i32 @CCE_PACKET0(i32 %95, i32 0)
  %97 = call i32 @OUT_RING(i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @OUT_RING(i32 %100)
  %102 = call i32 (...) @ADVANCE_RING()
  %103 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %104 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %106 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %86, %81
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
