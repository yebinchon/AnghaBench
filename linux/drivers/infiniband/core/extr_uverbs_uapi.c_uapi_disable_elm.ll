; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_disable_elm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_disable_elm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api = type { i32 }
%struct.uapi_definition = type { i64 }
%struct.uverbs_api_object = type { i32 }
%struct.uverbs_api_ioctl_method = type { i32 }
%struct.uverbs_api_write_method = type { i32 }

@UAPI_SCOPE_OBJECT = common dso_local global i64 0, align 8
@UAPI_SCOPE_METHOD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_api*, %struct.uapi_definition*, i32, i32)* @uapi_disable_elm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uapi_disable_elm(%struct.uverbs_api* %0, %struct.uapi_definition* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uverbs_api*, align 8
  %7 = alloca %struct.uapi_definition*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uverbs_api_object*, align 8
  %12 = alloca %struct.uverbs_api_ioctl_method*, align 8
  %13 = alloca %struct.uverbs_api_write_method*, align 8
  store %struct.uverbs_api* %0, %struct.uverbs_api** %6, align 8
  store %struct.uapi_definition* %1, %struct.uapi_definition** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.uapi_definition*, %struct.uapi_definition** %7, align 8
  %15 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UAPI_SCOPE_OBJECT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %4
  %20 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.uverbs_api_write_method* @uapi_add_get_elm(%struct.uverbs_api* %20, i32 %21, i32 4, i32* %10)
  %23 = bitcast %struct.uverbs_api_write_method* %22 to %struct.uverbs_api_object*
  store %struct.uverbs_api_object* %23, %struct.uverbs_api_object** %11, align 8
  %24 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %11, align 8
  %25 = bitcast %struct.uverbs_api_object* %24 to %struct.uverbs_api_write_method*
  %26 = call i64 @IS_ERR(%struct.uverbs_api_write_method* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %11, align 8
  %30 = bitcast %struct.uverbs_api_object* %29 to %struct.uverbs_api_write_method*
  %31 = call i32 @PTR_ERR(%struct.uverbs_api_write_method* %30)
  store i32 %31, i32* %5, align 4
  br label %92

32:                                               ; preds = %19
  %33 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %11, align 8
  %34 = getelementptr inbounds %struct.uverbs_api_object, %struct.uverbs_api_object* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %92

35:                                               ; preds = %4
  %36 = load %struct.uapi_definition*, %struct.uapi_definition** %7, align 8
  %37 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UAPI_SCOPE_METHOD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @uapi_key_is_ioctl_method(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call %struct.uverbs_api_write_method* @uapi_add_get_elm(%struct.uverbs_api* %46, i32 %47, i32 4, i32* %10)
  %49 = bitcast %struct.uverbs_api_write_method* %48 to %struct.uverbs_api_ioctl_method*
  store %struct.uverbs_api_ioctl_method* %49, %struct.uverbs_api_ioctl_method** %12, align 8
  %50 = load %struct.uverbs_api_ioctl_method*, %struct.uverbs_api_ioctl_method** %12, align 8
  %51 = bitcast %struct.uverbs_api_ioctl_method* %50 to %struct.uverbs_api_write_method*
  %52 = call i64 @IS_ERR(%struct.uverbs_api_write_method* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.uverbs_api_ioctl_method*, %struct.uverbs_api_ioctl_method** %12, align 8
  %56 = bitcast %struct.uverbs_api_ioctl_method* %55 to %struct.uverbs_api_write_method*
  %57 = call i32 @PTR_ERR(%struct.uverbs_api_write_method* %56)
  store i32 %57, i32* %5, align 4
  br label %92

58:                                               ; preds = %45
  %59 = load %struct.uverbs_api_ioctl_method*, %struct.uverbs_api_ioctl_method** %12, align 8
  %60 = getelementptr inbounds %struct.uverbs_api_ioctl_method, %struct.uverbs_api_ioctl_method* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  store i32 0, i32* %5, align 4
  br label %92

61:                                               ; preds = %41, %35
  %62 = load %struct.uapi_definition*, %struct.uapi_definition** %7, align 8
  %63 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @UAPI_SCOPE_METHOD, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @uapi_key_is_write_method(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @uapi_key_is_write_ex_method(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %71, %67
  %76 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.uverbs_api_write_method* @uapi_add_get_elm(%struct.uverbs_api* %76, i32 %77, i32 4, i32* %10)
  store %struct.uverbs_api_write_method* %78, %struct.uverbs_api_write_method** %13, align 8
  %79 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %13, align 8
  %80 = call i64 @IS_ERR(%struct.uverbs_api_write_method* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %13, align 8
  %84 = call i32 @PTR_ERR(%struct.uverbs_api_write_method* %83)
  store i32 %84, i32* %5, align 4
  br label %92

85:                                               ; preds = %75
  %86 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %13, align 8
  %87 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  store i32 0, i32* %5, align 4
  br label %92

88:                                               ; preds = %71, %61
  %89 = call i32 @WARN_ON(i32 1)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %85, %82, %58, %54, %32, %28
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.uverbs_api_write_method* @uapi_add_get_elm(%struct.uverbs_api*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.uverbs_api_write_method*) #1

declare dso_local i32 @PTR_ERR(%struct.uverbs_api_write_method*) #1

declare dso_local i64 @uapi_key_is_ioctl_method(i32) #1

declare dso_local i64 @uapi_key_is_write_method(i32) #1

declare dso_local i64 @uapi_key_is_write_ex_method(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
