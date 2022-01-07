; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_legacy_srf_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_legacy_srf_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32, i64, %struct.vmw_private* }
%struct.vmw_private = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*)* @vmw_legacy_srf_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_legacy_srf_destroy(%struct.vmw_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_resource*, align 8
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %3, align 8
  %7 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %7, i32 0, i32 2
  %9 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  store %struct.vmw_private* %9, %struct.vmw_private** %4, align 8
  %10 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = call i32 (...) @vmw_surface_destroy_size()
  store i32 %16, i32* %5, align 4
  %17 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32* @VMW_FIFO_RESERVE(%struct.vmw_private* %17, i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %1
  %30 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %31 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @vmw_surface_destroy_encode(i32 %32, i32* %33)
  %35 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @vmw_fifo_commit(%struct.vmw_private* %35, i32 %36)
  %38 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %39 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %42 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %48 = call i32 @vmw_resource_release_id(%struct.vmw_resource* %47)
  %49 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %50 = call i32 @vmw_fifo_resource_dec(%struct.vmw_private* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %29, %26
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_surface_destroy_size(...) #1

declare dso_local i32* @VMW_FIFO_RESERVE(%struct.vmw_private*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_surface_destroy_encode(i32, i32*) #1

declare dso_local i32 @vmw_fifo_commit(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_resource_release_id(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_fifo_resource_dec(%struct.vmw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
