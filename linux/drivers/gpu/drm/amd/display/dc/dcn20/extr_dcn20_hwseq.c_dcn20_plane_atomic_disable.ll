; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_plane_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_plane_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 (%struct.dc.0*, %struct.dpp*, %struct.hubp*)*, i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.dc.1*, i32, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.dpp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.dpp*, i32, i32)* }
%struct.hubp = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hubp*, i32)* }
%struct.dc.1 = type opaque
%struct.pipe_ctx = type { i32*, i32*, i32*, %struct.TYPE_8__, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i64, %struct.hubp*, %struct.dpp* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @dcn20_plane_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_plane_atomic_disable(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.hubp*, align 8
  %6 = alloca %struct.dpp*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %7 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.hubp*, %struct.hubp** %9, align 8
  store %struct.hubp* %10, %struct.hubp** %5, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load %struct.dpp*, %struct.dpp** %13, align 8
  store %struct.dpp* %14, %struct.dpp** %6, align 8
  %15 = load %struct.dc*, %struct.dc** %3, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32 (%struct.dc.1*, i32, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, i32, %struct.pipe_ctx*)** %17, align 8
  %19 = load %struct.dc*, %struct.dc** %3, align 8
  %20 = bitcast %struct.dc* %19 to %struct.dc.1*
  %21 = load %struct.dc*, %struct.dc** %3, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %25 = call i32 %18(%struct.dc.1* %20, i32 %23, %struct.pipe_ctx* %24)
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.dc*, %struct.dc** %3, align 8
  %33 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %34 = call i32 @dcn20_setup_gsl_group_as_lock(%struct.dc* %32, %struct.pipe_ctx* %33, i32 0)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.dc*, %struct.dc** %3, align 8
  %37 = getelementptr inbounds %struct.dc, %struct.dc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32 (%struct.pipe_ctx*, i32)*, i32 (%struct.pipe_ctx*, i32)** %38, align 8
  %40 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %41 = call i32 %39(%struct.pipe_ctx* %40, i32 0)
  %42 = load %struct.hubp*, %struct.hubp** %5, align 8
  %43 = getelementptr inbounds %struct.hubp, %struct.hubp* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %45, align 8
  %47 = load %struct.hubp*, %struct.hubp** %5, align 8
  %48 = call i32 %46(%struct.hubp* %47, i32 0)
  %49 = load %struct.dpp*, %struct.dpp** %6, align 8
  %50 = getelementptr inbounds %struct.dpp, %struct.dpp* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dpp*, i32, i32)*, i32 (%struct.dpp*, i32, i32)** %52, align 8
  %54 = load %struct.dpp*, %struct.dpp** %6, align 8
  %55 = call i32 %53(%struct.dpp* %54, i32 0, i32 0)
  %56 = load %struct.hubp*, %struct.hubp** %5, align 8
  %57 = getelementptr inbounds %struct.hubp, %struct.hubp* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.dc*, %struct.dc** %3, align 8
  %59 = getelementptr inbounds %struct.dc, %struct.dc* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.dc*, %struct.dc** %3, align 8
  %61 = getelementptr inbounds %struct.dc, %struct.dc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32 (%struct.dc.0*, %struct.dpp*, %struct.hubp*)*, i32 (%struct.dc.0*, %struct.dpp*, %struct.hubp*)** %62, align 8
  %64 = load %struct.dc*, %struct.dc** %3, align 8
  %65 = bitcast %struct.dc* %64 to %struct.dc.0*
  %66 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load %struct.dpp*, %struct.dpp** %68, align 8
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.hubp*, %struct.hubp** %72, align 8
  %74 = call i32 %63(%struct.dc.0* %65, %struct.dpp* %69, %struct.hubp* %73)
  %75 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %75, i32 0, i32 5
  store i32* null, i32** %76, align 8
  %77 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %77, i32 0, i32 4
  %79 = call i32 @memset(%struct.TYPE_8__* %78, i32 0, i32 24)
  %80 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %80, i32 0, i32 3
  %82 = call i32 @memset(%struct.TYPE_8__* %81, i32 0, i32 24)
  %83 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %83, i32 0, i32 2
  store i32* null, i32** %84, align 8
  %85 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  %87 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  ret void
}

declare dso_local i32 @dcn20_setup_gsl_group_as_lock(%struct.dc*, %struct.pipe_ctx*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
