; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_do_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_do_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32, %struct.vmw_res_func* }
%struct.vmw_res_func = type { i32 (%struct.vmw_resource*)*, i32 (%struct.vmw_resource*, %struct.ttm_validate_buffer*)*, i32 (%struct.vmw_resource*)*, i64 }
%struct.ttm_validate_buffer = type opaque
%struct.ttm_validate_buffer.0 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_resource*, %struct.ttm_validate_buffer.0*)* @vmw_resource_do_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_resource_do_validate(%struct.vmw_resource* %0, %struct.ttm_validate_buffer.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_resource*, align 8
  %5 = alloca %struct.ttm_validate_buffer.0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_res_func*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %4, align 8
  store %struct.ttm_validate_buffer.0* %1, %struct.ttm_validate_buffer.0** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %9 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %8, i32 0, i32 1
  %10 = load %struct.vmw_res_func*, %struct.vmw_res_func** %9, align 8
  store %struct.vmw_res_func* %10, %struct.vmw_res_func** %7, align 8
  %11 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %12 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.vmw_res_func*, %struct.vmw_res_func** %7, align 8
  %20 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %19, i32 0, i32 0
  %21 = load i32 (%struct.vmw_resource*)*, i32 (%struct.vmw_resource*)** %20, align 8
  %22 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %23 = call i32 %21(%struct.vmw_resource* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %92

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.vmw_res_func*, %struct.vmw_res_func** %7, align 8
  %34 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %33, i32 0, i32 1
  %35 = load i32 (%struct.vmw_resource*, %struct.ttm_validate_buffer*)*, i32 (%struct.vmw_resource*, %struct.ttm_validate_buffer*)** %34, align 8
  %36 = icmp ne i32 (%struct.vmw_resource*, %struct.ttm_validate_buffer*)* %35, null
  br i1 %36, label %37, label %84

37:                                               ; preds = %32
  %38 = load %struct.vmw_res_func*, %struct.vmw_res_func** %7, align 8
  %39 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %44 = call i32 @vmw_resource_mob_attached(%struct.vmw_resource* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load %struct.ttm_validate_buffer.0*, %struct.ttm_validate_buffer.0** %5, align 8
  %48 = getelementptr inbounds %struct.ttm_validate_buffer.0, %struct.ttm_validate_buffer.0* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %46, %42, %37
  %52 = load %struct.vmw_res_func*, %struct.vmw_res_func** %7, align 8
  %53 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %84, label %56

56:                                               ; preds = %51
  %57 = load %struct.ttm_validate_buffer.0*, %struct.ttm_validate_buffer.0** %5, align 8
  %58 = getelementptr inbounds %struct.ttm_validate_buffer.0, %struct.ttm_validate_buffer.0* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %84

61:                                               ; preds = %56, %46
  %62 = load %struct.vmw_res_func*, %struct.vmw_res_func** %7, align 8
  %63 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %62, i32 0, i32 1
  %64 = load i32 (%struct.vmw_resource*, %struct.ttm_validate_buffer*)*, i32 (%struct.vmw_resource*, %struct.ttm_validate_buffer*)** %63, align 8
  %65 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %66 = load %struct.ttm_validate_buffer.0*, %struct.ttm_validate_buffer.0** %5, align 8
  %67 = bitcast %struct.ttm_validate_buffer.0* %66 to %struct.ttm_validate_buffer*
  %68 = call i32 %64(%struct.vmw_resource* %65, %struct.ttm_validate_buffer* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %85

75:                                               ; preds = %61
  %76 = load %struct.vmw_res_func*, %struct.vmw_res_func** %7, align 8
  %77 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %82 = call i32 @vmw_resource_mob_attach(%struct.vmw_resource* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %56, %51, %32
  store i32 0, i32* %3, align 4
  br label %92

85:                                               ; preds = %74
  %86 = load %struct.vmw_res_func*, %struct.vmw_res_func** %7, align 8
  %87 = getelementptr inbounds %struct.vmw_res_func, %struct.vmw_res_func* %86, i32 0, i32 2
  %88 = load i32 (%struct.vmw_resource*)*, i32 (%struct.vmw_resource*)** %87, align 8
  %89 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %90 = call i32 %88(%struct.vmw_resource* %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %85, %84, %29
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_resource_mob_attached(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_resource_mob_attach(%struct.vmw_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
