; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { %struct.vmw_buffer_object*, %struct.TYPE_4__*, i32, i32 }
%struct.vmw_buffer_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmw_bo_bo_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*, i32)* @vmw_resource_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_resource_buf_alloc(%struct.vmw_resource* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmw_buffer_object*, align 8
  %8 = alloca i32, align 4
  store %struct.vmw_resource* %0, %struct.vmw_resource** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %10 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = add i64 %12, %13
  %15 = sub i64 %14, 1
  %16 = load i32, i32* @PAGE_MASK, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %15, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %20 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %19, i32 0, i32 0
  %21 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %20, align 8
  %22 = call i64 @likely(%struct.vmw_buffer_object* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %26 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %25, i32 0, i32 0
  %27 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %26, align 8
  %28 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = mul i64 %30, %31
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  store i32 0, i32* %3, align 4
  br label %76

37:                                               ; preds = %2
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.vmw_buffer_object* @kzalloc(i32 8, i32 %38)
  store %struct.vmw_buffer_object* %39, %struct.vmw_buffer_object** %7, align 8
  %40 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %41 = icmp ne %struct.vmw_buffer_object* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %37
  %50 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %51 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %54 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %55 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %58 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @vmw_bo_init(i32 %52, %struct.vmw_buffer_object* %53, i32 %56, i32 %61, i32 %62, i32* @vmw_bo_bo_free)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  br label %74

70:                                               ; preds = %49
  %71 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %72 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %73 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %72, i32 0, i32 0
  store %struct.vmw_buffer_object* %71, %struct.vmw_buffer_object** %73, align 8
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %46, %24
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @likely(%struct.vmw_buffer_object*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.vmw_buffer_object* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_bo_init(i32, %struct.vmw_buffer_object*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
