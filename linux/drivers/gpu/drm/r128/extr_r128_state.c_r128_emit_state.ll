; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_emit_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_emit_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"dirty=0x%08x\0A\00", align 1
@R128_UPLOAD_CORE = common dso_local global i32 0, align 4
@R128_UPLOAD_CONTEXT = common dso_local global i32 0, align 4
@R128_UPLOAD_SETUP = common dso_local global i32 0, align 4
@R128_UPLOAD_MASKS = common dso_local global i32 0, align 4
@R128_UPLOAD_WINDOW = common dso_local global i32 0, align 4
@R128_UPLOAD_TEX0 = common dso_local global i32 0, align 4
@R128_UPLOAD_TEX1 = common dso_local global i32 0, align 4
@R128_TEX_CACHE_FLUSH = common dso_local global i32 0, align 4
@R128_REQUIRE_QUIESCENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @r128_emit_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r128_emit_state(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @R128_UPLOAD_CORE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = call i32 @r128_emit_core(%struct.TYPE_14__* %18)
  %20 = load i32, i32* @R128_UPLOAD_CORE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %17, %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @R128_UPLOAD_CONTEXT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %33 = call i32 @r128_emit_context(%struct.TYPE_14__* %32)
  %34 = load i32, i32* @R128_UPLOAD_CONTEXT, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %31, %26
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @R128_UPLOAD_SETUP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = call i32 @r128_emit_setup(%struct.TYPE_14__* %46)
  %48 = load i32, i32* @R128_UPLOAD_SETUP, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %45, %40
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @R128_UPLOAD_MASKS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %61 = call i32 @r128_emit_masks(%struct.TYPE_14__* %60)
  %62 = load i32, i32* @R128_UPLOAD_MASKS, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %59, %54
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @R128_UPLOAD_WINDOW, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %75 = call i32 @r128_emit_window(%struct.TYPE_14__* %74)
  %76 = load i32, i32* @R128_UPLOAD_WINDOW, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %73, %68
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @R128_UPLOAD_TEX0, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %89 = call i32 @r128_emit_tex0(%struct.TYPE_14__* %88)
  %90 = load i32, i32* @R128_UPLOAD_TEX0, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %87, %82
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @R128_UPLOAD_TEX1, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = call i32 @r128_emit_tex1(%struct.TYPE_14__* %102)
  %104 = load i32, i32* @R128_UPLOAD_TEX1, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %101, %96
  %111 = load i32, i32* @R128_TEX_CACHE_FLUSH, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @R128_REQUIRE_QUIESCENCE, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @r128_emit_core(%struct.TYPE_14__*) #1

declare dso_local i32 @r128_emit_context(%struct.TYPE_14__*) #1

declare dso_local i32 @r128_emit_setup(%struct.TYPE_14__*) #1

declare dso_local i32 @r128_emit_masks(%struct.TYPE_14__*) #1

declare dso_local i32 @r128_emit_window(%struct.TYPE_14__*) #1

declare dso_local i32 @r128_emit_tex0(%struct.TYPE_14__*) #1

declare dso_local i32 @r128_emit_tex1(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
