; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_init_vgpu_type_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_init_vgpu_type_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32, i32 }
%struct.intel_gvt = type { i32, %struct.intel_vgpu_type* }
%struct.intel_vgpu_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@gvt_type_attrs = common dso_local global i32 0, align 4
@gvt_vgpu_type_groups = common dso_local global %struct.attribute_group** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_gvt*)* @intel_gvt_init_vgpu_type_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gvt_init_vgpu_type_groups(%struct.intel_gvt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu_type*, align 8
  %7 = alloca %struct.attribute_group*, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %11 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %8
  %15 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %16 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %15, i32 0, i32 1
  %17 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %17, i64 %19
  store %struct.intel_vgpu_type* %20, %struct.intel_vgpu_type** %6, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.attribute_group* @kzalloc(i32 8, i32 %21)
  store %struct.attribute_group* %22, %struct.attribute_group** %7, align 8
  %23 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %24 = icmp ne %struct.attribute_group* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %48

30:                                               ; preds = %14
  %31 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %6, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %35 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @gvt_type_attrs, align 4
  %37 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %38 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %40 = load %struct.attribute_group**, %struct.attribute_group*** @gvt_vgpu_type_groups, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %40, i64 %42
  store %struct.attribute_group* %39, %struct.attribute_group** %43, align 8
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %8

47:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %65

48:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.attribute_group**, %struct.attribute_group*** @gvt_vgpu_type_groups, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %54, i64 %56
  %58 = load %struct.attribute_group*, %struct.attribute_group** %57, align 8
  store %struct.attribute_group* %58, %struct.attribute_group** %7, align 8
  %59 = load %struct.attribute_group*, %struct.attribute_group** %7, align 8
  %60 = call i32 @kfree(%struct.attribute_group* %59)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %49

64:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.attribute_group* @kzalloc(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
