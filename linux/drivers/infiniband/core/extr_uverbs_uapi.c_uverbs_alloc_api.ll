; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uverbs_alloc_api.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uverbs_alloc_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api = type { i32, i32 }
%struct.ib_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uverbs_core_api = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Setup of uverbs_api failed, kernel parsing tree description is not valid (%d)??\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uverbs_api* @uverbs_alloc_api(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.uverbs_api*, align 8
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.uverbs_api*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.uverbs_api* @kzalloc(i32 8, i32 %6)
  store %struct.uverbs_api* %7, %struct.uverbs_api** %4, align 8
  %8 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %9 = icmp ne %struct.uverbs_api* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.uverbs_api* @ERR_PTR(i32 %12)
  store %struct.uverbs_api* %13, %struct.uverbs_api** %2, align 8
  br label %67

14:                                               ; preds = %1
  %15 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %16 = getelementptr inbounds %struct.uverbs_api, %struct.uverbs_api* %15, i32 0, i32 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @INIT_RADIX_TREE(i32* %16, i32 %17)
  %19 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %20 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %24 = getelementptr inbounds %struct.uverbs_api, %struct.uverbs_api* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %27 = load i32, i32* @uverbs_core_api, align 4
  %28 = call i32 @uapi_merge_def(%struct.uverbs_api* %25, %struct.ib_device* %26, i32 %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %52

32:                                               ; preds = %14
  %33 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %34 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %35 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %36 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @uapi_merge_def(%struct.uverbs_api* %33, %struct.ib_device* %34, i32 %37, i32 1)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %52

42:                                               ; preds = %32
  %43 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %44 = call i32 @uapi_finalize_disable(%struct.uverbs_api* %43)
  %45 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %46 = call i32 @uapi_finalize(%struct.uverbs_api* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %52

50:                                               ; preds = %42
  %51 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  store %struct.uverbs_api* %51, %struct.uverbs_api** %2, align 8
  br label %67

52:                                               ; preds = %49, %41, %31
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %59 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %58, i32 0, i32 0
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.uverbs_api*, %struct.uverbs_api** %4, align 8
  %64 = call i32 @uverbs_destroy_api(%struct.uverbs_api* %63)
  %65 = load i32, i32* %5, align 4
  %66 = call %struct.uverbs_api* @ERR_PTR(i32 %65)
  store %struct.uverbs_api* %66, %struct.uverbs_api** %2, align 8
  br label %67

67:                                               ; preds = %62, %50, %10
  %68 = load %struct.uverbs_api*, %struct.uverbs_api** %2, align 8
  ret %struct.uverbs_api* %68
}

declare dso_local %struct.uverbs_api* @kzalloc(i32, i32) #1

declare dso_local %struct.uverbs_api* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @uapi_merge_def(%struct.uverbs_api*, %struct.ib_device*, i32, i32) #1

declare dso_local i32 @uapi_finalize_disable(%struct.uverbs_api*) #1

declare dso_local i32 @uapi_finalize(%struct.uverbs_api*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @uverbs_destroy_api(%struct.uverbs_api*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
