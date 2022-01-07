; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c__msm_gem_kernel_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c__msm_gem_kernel_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.msm_gem_address_space = type { i32 }
%struct.drm_gem_object = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.drm_device*, i32, i32, %struct.msm_gem_address_space*, %struct.drm_gem_object**, i32*, i32)* @_msm_gem_kernel_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_msm_gem_kernel_new(%struct.drm_device* %0, i32 %1, i32 %2, %struct.msm_gem_address_space* %3, %struct.drm_gem_object** %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.msm_gem_address_space*, align 8
  %13 = alloca %struct.drm_gem_object**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.drm_gem_object*, align 8
  %18 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.msm_gem_address_space* %3, %struct.msm_gem_address_space** %12, align 8
  store %struct.drm_gem_object** %4, %struct.drm_gem_object*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i8* @_msm_gem_new(%struct.drm_device* %19, i32 %20, i32 %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %24, %struct.drm_gem_object** %17, align 8
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %26 = bitcast %struct.drm_gem_object* %25 to i8*
  %27 = call i64 @IS_ERR(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %31 = bitcast %struct.drm_gem_object* %30 to i8*
  %32 = call i8* @ERR_CAST(i8* %31)
  store i8* %32, i8** %8, align 8
  br label %82

33:                                               ; preds = %7
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %38 = bitcast %struct.drm_gem_object* %37 to i8*
  %39 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %12, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @msm_gem_get_and_pin_iova(i8* %38, %struct.msm_gem_address_space* %39, i32* %40)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %68

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %33
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %48 = bitcast %struct.drm_gem_object* %47 to i8*
  %49 = call i8* @msm_gem_get_vaddr(i8* %48)
  store i8* %49, i8** %16, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %55 = bitcast %struct.drm_gem_object* %54 to i8*
  %56 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %12, align 8
  %57 = call i32 @msm_gem_unpin_iova(i8* %55, %struct.msm_gem_address_space* %56)
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @PTR_ERR(i8* %58)
  store i32 %59, i32* %18, align 4
  br label %68

60:                                               ; preds = %46
  %61 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %13, align 8
  %62 = icmp ne %struct.drm_gem_object** %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %65 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %13, align 8
  store %struct.drm_gem_object* %64, %struct.drm_gem_object** %65, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i8*, i8** %16, align 8
  store i8* %67, i8** %8, align 8
  br label %82

68:                                               ; preds = %53, %44
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %73 = bitcast %struct.drm_gem_object* %72 to i8*
  %74 = call i32 @drm_gem_object_put(i8* %73)
  br label %79

75:                                               ; preds = %68
  %76 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %77 = bitcast %struct.drm_gem_object* %76 to i8*
  %78 = call i32 @drm_gem_object_put_unlocked(i8* %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %18, align 4
  %81 = call i8* @ERR_PTR(i32 %80)
  store i8* %81, i8** %8, align 8
  br label %82

82:                                               ; preds = %79, %66, %29
  %83 = load i8*, i8** %8, align 8
  ret i8* %83
}

declare dso_local i8* @_msm_gem_new(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_CAST(i8*) #1

declare dso_local i32 @msm_gem_get_and_pin_iova(i8*, %struct.msm_gem_address_space*, i32*) #1

declare dso_local i8* @msm_gem_get_vaddr(i8*) #1

declare dso_local i32 @msm_gem_unpin_iova(i8*, %struct.msm_gem_address_space*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @drm_gem_object_put(i8*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
