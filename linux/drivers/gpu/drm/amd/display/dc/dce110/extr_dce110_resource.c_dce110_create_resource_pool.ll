; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_create_resource_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_create_resource_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_pool = type { i32 }
%struct.dc = type { i32 }
%struct.hw_asic_id = type { i32 }
%struct.dce110_resource_pool = type { %struct.resource_pool }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource_pool* @dce110_create_resource_pool(i32 %0, %struct.dc* %1, i32 %2) #0 {
  %4 = alloca %struct.resource_pool*, align 8
  %5 = alloca %struct.hw_asic_id, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dce110_resource_pool*, align 8
  %9 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store i32 %0, i32* %6, align 4
  store %struct.dc* %1, %struct.dc** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dce110_resource_pool* @kzalloc(i32 4, i32 %10)
  store %struct.dce110_resource_pool* %11, %struct.dce110_resource_pool** %8, align 8
  %12 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %8, align 8
  %13 = icmp ne %struct.dce110_resource_pool* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.resource_pool* null, %struct.resource_pool** %4, align 8
  br label %30

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dc*, %struct.dc** %7, align 8
  %18 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %8, align 8
  %19 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @construct(i32 %16, %struct.dc* %17, %struct.dce110_resource_pool* %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %8, align 8
  %25 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %24, i32 0, i32 0
  store %struct.resource_pool* %25, %struct.resource_pool** %4, align 8
  br label %30

26:                                               ; preds = %15
  %27 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %8, align 8
  %28 = call i32 @kfree(%struct.dce110_resource_pool* %27)
  %29 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.resource_pool* null, %struct.resource_pool** %4, align 8
  br label %30

30:                                               ; preds = %26, %23, %14
  %31 = load %struct.resource_pool*, %struct.resource_pool** %4, align 8
  ret %struct.resource_pool* %31
}

declare dso_local %struct.dce110_resource_pool* @kzalloc(i32, i32) #1

declare dso_local i64 @construct(i32, %struct.dc*, %struct.dce110_resource_pool*, i32) #1

declare dso_local i32 @kfree(%struct.dce110_resource_pool*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
