; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_aux.c_nvkm_i2c_aux_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_aux.c_nvkm_i2c_aux_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_aux_func = type { i32 }
%struct.nvkm_i2c_pad = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_i2c_aux = type { i32, %struct.TYPE_8__, i32, i32, %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_aux_func* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ctor\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"nvkm-%s-aux-%04x\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@nvkm_i2c_aux_i2c_algo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_i2c_aux_ctor(%struct.nvkm_i2c_aux_func* %0, %struct.nvkm_i2c_pad* %1, i32 %2, %struct.nvkm_i2c_aux* %3) #0 {
  %5 = alloca %struct.nvkm_i2c_aux_func*, align 8
  %6 = alloca %struct.nvkm_i2c_pad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_i2c_aux*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_i2c_aux_func* %0, %struct.nvkm_i2c_aux_func** %5, align 8
  store %struct.nvkm_i2c_pad* %1, %struct.nvkm_i2c_pad** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_i2c_aux* %3, %struct.nvkm_i2c_aux** %8, align 8
  %10 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %6, align 8
  %11 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %9, align 8
  %16 = load %struct.nvkm_i2c_aux_func*, %struct.nvkm_i2c_aux_func** %5, align 8
  %17 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %18 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %17, i32 0, i32 5
  store %struct.nvkm_i2c_aux_func* %16, %struct.nvkm_i2c_aux_func** %18, align 8
  %19 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %6, align 8
  %20 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %20, i32 0, i32 4
  store %struct.nvkm_i2c_pad* %19, %struct.nvkm_i2c_pad** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %26 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %25, i32 0, i32 3
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %29 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %28, i32 0, i32 2
  %30 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %6, align 8
  %31 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail(i32* %29, i32* %33)
  %35 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %36 = call i32 @AUX_TRACE(%struct.nvkm_i2c_aux* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %38 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %42 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @dev_name(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @snprintf(i32 %40, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* @THIS_MODULE, align 4
  %48 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %49 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %52 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %55 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %59 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32* @nvkm_i2c_aux_i2c_algo, i32** %60, align 8
  %61 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  %62 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %61, i32 0, i32 1
  %63 = call i32 @i2c_add_adapter(%struct.TYPE_8__* %62)
  ret i32 %63
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @AUX_TRACE(%struct.nvkm_i2c_aux*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
