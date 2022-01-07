; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_resource_relocation_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_resource_relocation_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_sw_context = type { i32, i32 }
%struct.vmw_resource = type { i32 }
%struct.vmw_resource_relocation = type { i64, i32, i32, %struct.vmw_resource* }

@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate a resource relocation.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_sw_context*, %struct.vmw_resource*, i64, i32)* @vmw_resource_relocation_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_resource_relocation_add(%struct.vmw_sw_context* %0, %struct.vmw_resource* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_sw_context*, align 8
  %7 = alloca %struct.vmw_resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmw_resource_relocation*, align 8
  store %struct.vmw_sw_context* %0, %struct.vmw_sw_context** %6, align 8
  store %struct.vmw_resource* %1, %struct.vmw_resource** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %6, align 8
  %12 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vmw_resource_relocation* @vmw_validation_mem_alloc(i32 %13, i32 24)
  store %struct.vmw_resource_relocation* %14, %struct.vmw_resource_relocation** %10, align 8
  %15 = load %struct.vmw_resource_relocation*, %struct.vmw_resource_relocation** %10, align 8
  %16 = icmp ne %struct.vmw_resource_relocation* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %40

25:                                               ; preds = %4
  %26 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %27 = load %struct.vmw_resource_relocation*, %struct.vmw_resource_relocation** %10, align 8
  %28 = getelementptr inbounds %struct.vmw_resource_relocation, %struct.vmw_resource_relocation* %27, i32 0, i32 3
  store %struct.vmw_resource* %26, %struct.vmw_resource** %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.vmw_resource_relocation*, %struct.vmw_resource_relocation** %10, align 8
  %31 = getelementptr inbounds %struct.vmw_resource_relocation, %struct.vmw_resource_relocation* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.vmw_resource_relocation*, %struct.vmw_resource_relocation** %10, align 8
  %34 = getelementptr inbounds %struct.vmw_resource_relocation, %struct.vmw_resource_relocation* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.vmw_resource_relocation*, %struct.vmw_resource_relocation** %10, align 8
  %36 = getelementptr inbounds %struct.vmw_resource_relocation, %struct.vmw_resource_relocation* %35, i32 0, i32 2
  %37 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %6, align 8
  %38 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %37, i32 0, i32 0
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %25, %21
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.vmw_resource_relocation* @vmw_validation_mem_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
