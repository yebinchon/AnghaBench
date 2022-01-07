; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_create_resource_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_create_resource_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_pool = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.dc = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dc_init_data = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource_pool* @dc_create_resource_pool(%struct.dc* %0, %struct.dc_init_data* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_init_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource_pool*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_init_data* %1, %struct.dc_init_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.resource_pool* null, %struct.resource_pool** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %54 [
    i32 134, label %9
    i32 133, label %15
    i32 132, label %21
    i32 140, label %27
    i32 139, label %33
    i32 138, label %42
    i32 137, label %42
    i32 136, label %48
    i32 135, label %48
  ]

9:                                                ; preds = %3
  %10 = load %struct.dc_init_data*, %struct.dc_init_data** %5, align 8
  %11 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dc*, %struct.dc** %4, align 8
  %14 = call %struct.resource_pool* @dce80_create_resource_pool(i32 %12, %struct.dc* %13)
  store %struct.resource_pool* %14, %struct.resource_pool** %7, align 8
  br label %55

15:                                               ; preds = %3
  %16 = load %struct.dc_init_data*, %struct.dc_init_data** %5, align 8
  %17 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dc*, %struct.dc** %4, align 8
  %20 = call %struct.resource_pool* @dce81_create_resource_pool(i32 %18, %struct.dc* %19)
  store %struct.resource_pool* %20, %struct.resource_pool** %7, align 8
  br label %55

21:                                               ; preds = %3
  %22 = load %struct.dc_init_data*, %struct.dc_init_data** %5, align 8
  %23 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dc*, %struct.dc** %4, align 8
  %26 = call %struct.resource_pool* @dce83_create_resource_pool(i32 %24, %struct.dc* %25)
  store %struct.resource_pool* %26, %struct.resource_pool** %7, align 8
  br label %55

27:                                               ; preds = %3
  %28 = load %struct.dc_init_data*, %struct.dc_init_data** %5, align 8
  %29 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dc*, %struct.dc** %4, align 8
  %32 = call %struct.resource_pool* @dce100_create_resource_pool(i32 %30, %struct.dc* %31)
  store %struct.resource_pool* %32, %struct.resource_pool** %7, align 8
  br label %55

33:                                               ; preds = %3
  %34 = load %struct.dc_init_data*, %struct.dc_init_data** %5, align 8
  %35 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dc*, %struct.dc** %4, align 8
  %38 = load %struct.dc_init_data*, %struct.dc_init_data** %5, align 8
  %39 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.resource_pool* @dce110_create_resource_pool(i32 %36, %struct.dc* %37, i32 %40)
  store %struct.resource_pool* %41, %struct.resource_pool** %7, align 8
  br label %55

42:                                               ; preds = %3, %3
  %43 = load %struct.dc_init_data*, %struct.dc_init_data** %5, align 8
  %44 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dc*, %struct.dc** %4, align 8
  %47 = call %struct.resource_pool* @dce112_create_resource_pool(i32 %45, %struct.dc* %46)
  store %struct.resource_pool* %47, %struct.resource_pool** %7, align 8
  br label %55

48:                                               ; preds = %3, %3
  %49 = load %struct.dc_init_data*, %struct.dc_init_data** %5, align 8
  %50 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dc*, %struct.dc** %4, align 8
  %53 = call %struct.resource_pool* @dce120_create_resource_pool(i32 %51, %struct.dc* %52)
  store %struct.resource_pool* %53, %struct.resource_pool** %7, align 8
  br label %55

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %54, %48, %42, %33, %27, %21, %15, %9
  %56 = load %struct.resource_pool*, %struct.resource_pool** %7, align 8
  %57 = icmp ne %struct.resource_pool* %56, null
  br i1 %57, label %58, label %97

58:                                               ; preds = %55
  %59 = load %struct.dc*, %struct.dc** %4, align 8
  %60 = getelementptr inbounds %struct.dc, %struct.dc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %58
  %68 = load %struct.dc*, %struct.dc** %4, align 8
  %69 = getelementptr inbounds %struct.dc, %struct.dc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.resource_pool*, %struct.resource_pool** %7, align 8
  %78 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.resource_pool*, %struct.resource_pool** %7, align 8
  %81 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.resource_pool*, %struct.resource_pool** %7, align 8
  %85 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load %struct.resource_pool*, %struct.resource_pool** %7, align 8
  %88 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.resource_pool*, %struct.resource_pool** %7, align 8
  %92 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  br label %96

94:                                               ; preds = %58
  %95 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %96

96:                                               ; preds = %94, %67
  br label %97

97:                                               ; preds = %96, %55
  %98 = load %struct.resource_pool*, %struct.resource_pool** %7, align 8
  ret %struct.resource_pool* %98
}

declare dso_local %struct.resource_pool* @dce80_create_resource_pool(i32, %struct.dc*) #1

declare dso_local %struct.resource_pool* @dce81_create_resource_pool(i32, %struct.dc*) #1

declare dso_local %struct.resource_pool* @dce83_create_resource_pool(i32, %struct.dc*) #1

declare dso_local %struct.resource_pool* @dce100_create_resource_pool(i32, %struct.dc*) #1

declare dso_local %struct.resource_pool* @dce110_create_resource_pool(i32, %struct.dc*, i32) #1

declare dso_local %struct.resource_pool* @dce112_create_resource_pool(i32, %struct.dc*) #1

declare dso_local %struct.resource_pool* @dce120_create_resource_pool(i32, %struct.dc*) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
