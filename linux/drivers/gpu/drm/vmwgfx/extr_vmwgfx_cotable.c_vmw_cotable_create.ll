; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cotable.c_vmw_cotable_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cotable.c_vmw_cotable_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vmw_resource = type { i64, i64 }
%struct.vmw_cotable = type { i32, i64, i64 }

@co_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*)* @vmw_cotable_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cotable_create(%struct.vmw_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_resource*, align 8
  %4 = alloca %struct.vmw_cotable*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vmw_resource* %0, %struct.vmw_resource** %3, align 8
  %8 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %9 = call %struct.vmw_cotable* @vmw_cotable(%struct.vmw_resource* %8)
  store %struct.vmw_cotable* %9, %struct.vmw_cotable** %4, align 8
  %10 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.vmw_cotable*, %struct.vmw_cotable** %4, align 8
  %14 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @co_info, align 8
  %18 = load %struct.vmw_cotable*, %struct.vmw_cotable** %4, align 8
  %19 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %16, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %30, %1
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = mul i64 %31, 2
  store i64 %32, i64* %5, align 8
  br label %26

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %36 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ule i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %33
  %43 = load %struct.vmw_cotable*, %struct.vmw_cotable** %4, align 8
  %44 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %49 = call i64 @vmw_resource_mob_attached(%struct.vmw_resource* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %53 = call i32 @vmw_cotable_unscrub(%struct.vmw_resource* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %69

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %47, %42
  %60 = load %struct.vmw_cotable*, %struct.vmw_cotable** %4, align 8
  %61 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %64 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  store i32 0, i32* %2, align 4
  br label %69

65:                                               ; preds = %33
  %66 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @vmw_cotable_resize(%struct.vmw_resource* %66, i64 %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %59, %56
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.vmw_cotable* @vmw_cotable(%struct.vmw_resource*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @vmw_resource_mob_attached(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_cotable_unscrub(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_cotable_resize(%struct.vmw_resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
