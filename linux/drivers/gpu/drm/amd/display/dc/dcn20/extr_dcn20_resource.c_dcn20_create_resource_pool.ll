; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_create_resource_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_create_resource_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_pool = type { i32 }
%struct.dc_init_data = type { i32 }
%struct.dc = type { i32 }
%struct.dcn20_resource_pool = type { %struct.resource_pool }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource_pool* @dcn20_create_resource_pool(%struct.dc_init_data* %0, %struct.dc* %1) #0 {
  %3 = alloca %struct.resource_pool*, align 8
  %4 = alloca %struct.dc_init_data*, align 8
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dcn20_resource_pool*, align 8
  store %struct.dc_init_data* %0, %struct.dc_init_data** %4, align 8
  store %struct.dc* %1, %struct.dc** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dcn20_resource_pool* @kzalloc(i32 4, i32 %7)
  store %struct.dcn20_resource_pool* %8, %struct.dcn20_resource_pool** %6, align 8
  %9 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %6, align 8
  %10 = icmp ne %struct.dcn20_resource_pool* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.resource_pool* null, %struct.resource_pool** %3, align 8
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.dc_init_data*, %struct.dc_init_data** %4, align 8
  %14 = getelementptr inbounds %struct.dc_init_data, %struct.dc_init_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dc*, %struct.dc** %5, align 8
  %17 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %6, align 8
  %18 = call i64 @construct(i32 %15, %struct.dc* %16, %struct.dcn20_resource_pool* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %6, align 8
  %22 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %21, i32 0, i32 0
  store %struct.resource_pool* %22, %struct.resource_pool** %3, align 8
  br label %27

23:                                               ; preds = %12
  %24 = call i32 (...) @BREAK_TO_DEBUGGER()
  %25 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %6, align 8
  %26 = call i32 @kfree(%struct.dcn20_resource_pool* %25)
  store %struct.resource_pool* null, %struct.resource_pool** %3, align 8
  br label %27

27:                                               ; preds = %23, %20, %11
  %28 = load %struct.resource_pool*, %struct.resource_pool** %3, align 8
  ret %struct.resource_pool* %28
}

declare dso_local %struct.dcn20_resource_pool* @kzalloc(i32, i32) #1

declare dso_local i64 @construct(i32, %struct.dc*, %struct.dcn20_resource_pool*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @kfree(%struct.dcn20_resource_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
