; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.kref, i32 }
%struct.TYPE_8__ = type { %struct.display_mode_lib }
%struct.display_mode_lib = type { i32 }
%struct.kref = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32, %struct.dc.0*, %struct.TYPE_9__*)*, i32 (%struct.dc.1*)* }
%struct.dc.0 = type opaque
%struct.dc.1 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_set_power_state(%struct.dc* %0, i32 %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kref, align 4
  %6 = alloca %struct.display_mode_lib*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.display_mode_lib* @kzalloc(i32 4, i32 %7)
  store %struct.display_mode_lib* %8, %struct.display_mode_lib** %6, align 8
  %9 = load %struct.display_mode_lib*, %struct.display_mode_lib** %6, align 8
  %10 = ptrtoint %struct.display_mode_lib* %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.display_mode_lib*, %struct.display_mode_lib** %6, align 8
  %13 = icmp ne %struct.display_mode_lib* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %77

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %30 [
    i32 128, label %17
  ]

17:                                               ; preds = %15
  %18 = load %struct.dc*, %struct.dc** %3, align 8
  %19 = load %struct.dc*, %struct.dc** %3, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = call i32 @dc_resource_state_construct(%struct.dc* %18, %struct.TYPE_10__* %21)
  %23 = load %struct.dc*, %struct.dc** %3, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32 (%struct.dc.1*)*, i32 (%struct.dc.1*)** %25, align 8
  %27 = load %struct.dc*, %struct.dc** %3, align 8
  %28 = bitcast %struct.dc* %27 to %struct.dc.1*
  %29 = call i32 %26(%struct.dc.1* %28)
  br label %74

30:                                               ; preds = %15
  %31 = load %struct.dc*, %struct.dc** %3, align 8
  %32 = getelementptr inbounds %struct.dc, %struct.dc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.dc*, %struct.dc** %3, align 8
  %40 = getelementptr inbounds %struct.dc, %struct.dc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = bitcast %struct.kref* %5 to i8*
  %44 = bitcast %struct.kref* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load %struct.display_mode_lib*, %struct.display_mode_lib** %6, align 8
  %46 = load %struct.dc*, %struct.dc** %3, align 8
  %47 = getelementptr inbounds %struct.dc, %struct.dc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = call i32 @memcpy(%struct.display_mode_lib* %45, %struct.display_mode_lib* %50, i32 4)
  %52 = load %struct.dc*, %struct.dc** %3, align 8
  %53 = getelementptr inbounds %struct.dc, %struct.dc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i32 @dc_resource_state_destruct(%struct.TYPE_10__* %54)
  %56 = load %struct.dc*, %struct.dc** %3, align 8
  %57 = getelementptr inbounds %struct.dc, %struct.dc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = call i32 @memset(%struct.TYPE_10__* %58, i32 0, i32 12)
  %60 = load %struct.dc*, %struct.dc** %3, align 8
  %61 = getelementptr inbounds %struct.dc, %struct.dc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = bitcast %struct.kref* %63 to i8*
  %65 = bitcast %struct.kref* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  %66 = load %struct.dc*, %struct.dc** %3, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.display_mode_lib*, %struct.display_mode_lib** %6, align 8
  %72 = bitcast %struct.display_mode_lib* %70 to i8*
  %73 = bitcast %struct.display_mode_lib* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  br label %74

74:                                               ; preds = %30, %17
  %75 = load %struct.display_mode_lib*, %struct.display_mode_lib** %6, align 8
  %76 = call i32 @kfree(%struct.display_mode_lib* %75)
  br label %77

77:                                               ; preds = %74, %14
  ret void
}

declare dso_local %struct.display_mode_lib* @kzalloc(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dc_resource_state_construct(%struct.dc*, %struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.display_mode_lib*, %struct.display_mode_lib*, i32) #1

declare dso_local i32 @dc_resource_state_destruct(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.display_mode_lib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
