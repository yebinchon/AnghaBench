; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_kms.c_bochs_kms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_kms.c_bochs_kms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bochs_device = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32*, i64, i32 }

@bochs_mode_funcs = common dso_local global i32 0, align 4
@bochs_pipe_funcs = common dso_local global i32 0, align 4
@bochs_formats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bochs_kms_init(%struct.bochs_device* %0) #0 {
  %2 = alloca %struct.bochs_device*, align 8
  store %struct.bochs_device* %0, %struct.bochs_device** %2, align 8
  %3 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %4 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %3, i32 0, i32 0
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = call i32 @drm_mode_config_init(%struct.TYPE_7__* %5)
  %7 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %8 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 8192, i32* %11, align 8
  %12 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %13 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 8192, i32* %16, align 4
  %17 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %18 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %21 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 7
  store i32 %19, i32* %24, align 8
  %25 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %26 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 24, i32* %29, align 8
  %30 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %31 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %36 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32 1, i32* %39, align 4
  %40 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %41 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  store i32 1, i32* %44, align 8
  %45 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %46 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 5
  store i32* @bochs_mode_funcs, i32** %49, align 8
  %50 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %51 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 @bochs_connector_init(%struct.TYPE_7__* %52)
  %54 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %55 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %58 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %57, i32 0, i32 2
  %59 = load i32, i32* @bochs_formats, align 4
  %60 = load i32, i32* @bochs_formats, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %63 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %62, i32 0, i32 1
  %64 = call i32 @drm_simple_display_pipe_init(%struct.TYPE_7__* %56, i32* %58, i32* @bochs_pipe_funcs, i32 %59, i32 %61, i32* null, i32* %63)
  %65 = load %struct.bochs_device*, %struct.bochs_device** %2, align 8
  %66 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 @drm_mode_config_reset(%struct.TYPE_7__* %67)
  ret i32 0
}

declare dso_local i32 @drm_mode_config_init(%struct.TYPE_7__*) #1

declare dso_local i32 @bochs_connector_init(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_simple_display_pipe_init(%struct.TYPE_7__*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
