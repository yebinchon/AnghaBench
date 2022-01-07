; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_add_get_elm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_add_get_elm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.uverbs_api*, i32, i64, i32*)* @uapi_add_get_elm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @uapi_add_get_elm(%struct.uverbs_api* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uverbs_api*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.uverbs_api* %0, %struct.uverbs_api** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i64, i64* %8, align 8
  %14 = call i8* @uapi_add_elm(%struct.uverbs_api* %11, i32 %12, i64 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @IS_ERR(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %5, align 8
  br label %47

21:                                               ; preds = %4
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i8* @ERR_PTR(i32 %24)
  %26 = icmp ne i8* %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %5, align 8
  br label %47

29:                                               ; preds = %21
  %30 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %31 = getelementptr inbounds %struct.uverbs_api, %struct.uverbs_api* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @radix_tree_lookup(i32* %31, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i8* @ERR_PTR(i32 %42)
  store i8* %43, i8** %5, align 8
  br label %47

44:                                               ; preds = %29
  %45 = load i32*, i32** %9, align 8
  store i32 1, i32* %45, align 4
  %46 = load i8*, i8** %10, align 8
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %44, %40, %27, %18
  %48 = load i8*, i8** %5, align 8
  ret i8* %48
}

declare dso_local i8* @uapi_add_elm(%struct.uverbs_api*, i32, i64) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @radix_tree_lookup(i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
