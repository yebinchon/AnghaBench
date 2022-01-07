; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_resource.c_dce80_create_resource_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_resource.c_dce80_create_resource_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_pool = type { i32 }
%struct.dc = type { i32 }
%struct.dce110_resource_pool = type { %struct.resource_pool }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource_pool* @dce80_create_resource_pool(i32 %0, %struct.dc* %1) #0 {
  %3 = alloca %struct.resource_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dce110_resource_pool*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dc* %1, %struct.dc** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dce110_resource_pool* @kzalloc(i32 4, i32 %7)
  store %struct.dce110_resource_pool* %8, %struct.dce110_resource_pool** %6, align 8
  %9 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %6, align 8
  %10 = icmp ne %struct.dce110_resource_pool* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.resource_pool* null, %struct.resource_pool** %3, align 8
  br label %23

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.dc*, %struct.dc** %5, align 8
  %15 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %6, align 8
  %16 = call i64 @dce80_construct(i32 %13, %struct.dc* %14, %struct.dce110_resource_pool* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %6, align 8
  %20 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %19, i32 0, i32 0
  store %struct.resource_pool* %20, %struct.resource_pool** %3, align 8
  br label %23

21:                                               ; preds = %12
  %22 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.resource_pool* null, %struct.resource_pool** %3, align 8
  br label %23

23:                                               ; preds = %21, %18, %11
  %24 = load %struct.resource_pool*, %struct.resource_pool** %3, align 8
  ret %struct.resource_pool* %24
}

declare dso_local %struct.dce110_resource_pool* @kzalloc(i32, i32) #1

declare dso_local i64 @dce80_construct(i32, %struct.dc*, %struct.dce110_resource_pool*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
