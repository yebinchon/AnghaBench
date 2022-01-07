; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_add_elm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_add_elm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api = type { i32 }

@UVERBS_API_KEY_ERR = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.uverbs_api*, i64, i64)* @uapi_add_elm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @uapi_add_elm(%struct.uverbs_api* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uverbs_api*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.uverbs_api* %0, %struct.uverbs_api** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @UVERBS_API_KEY_ERR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @EOVERFLOW, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i8* @ERR_PTR(i32 %15)
  store i8* %16, i8** %4, align 8
  br label %42

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i64 %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i8* @ERR_PTR(i32 %25)
  store i8* %26, i8** %4, align 8
  br label %42

27:                                               ; preds = %17
  %28 = load %struct.uverbs_api*, %struct.uverbs_api** %5, align 8
  %29 = getelementptr inbounds %struct.uverbs_api, %struct.uverbs_api* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @radix_tree_insert(i32* %29, i64 %30, i8* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @kfree(i8* %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i8* @ERR_PTR(i32 %38)
  store i8* %39, i8** %4, align 8
  br label %42

40:                                               ; preds = %27
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %40, %35, %23, %13
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
