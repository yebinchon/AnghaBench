; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c__uverbs_get_const.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c__uverbs_get_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.uverbs_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_uverbs_get_const(i64* %0, %struct.uverbs_attr_bundle* %1, i64 %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.uverbs_attr_bundle*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.uverbs_attr*, align 8
  store i64* %0, i64** %8, align 8
  store %struct.uverbs_attr_bundle* %1, %struct.uverbs_attr_bundle** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %15 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call %struct.uverbs_attr* @uverbs_attr_get(%struct.uverbs_attr_bundle* %15, i64 %16)
  store %struct.uverbs_attr* %17, %struct.uverbs_attr** %14, align 8
  %18 = load %struct.uverbs_attr*, %struct.uverbs_attr** %14, align 8
  %19 = call i64 @IS_ERR(%struct.uverbs_attr* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %6
  %22 = load %struct.uverbs_attr*, %struct.uverbs_attr** %14, align 8
  %23 = call i32 @PTR_ERR(%struct.uverbs_attr* %22)
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i64*, i64** %13, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.uverbs_attr*, %struct.uverbs_attr** %14, align 8
  %32 = call i32 @PTR_ERR(%struct.uverbs_attr* %31)
  store i32 %32, i32* %7, align 4
  br label %61

33:                                               ; preds = %27
  %34 = load i64*, i64** %13, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %8, align 8
  store i64 %35, i64* %36, align 8
  br label %43

37:                                               ; preds = %6
  %38 = load %struct.uverbs_attr*, %struct.uverbs_attr** %14, align 8
  %39 = getelementptr inbounds %struct.uverbs_attr, %struct.uverbs_attr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %8, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %33
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %43
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %61

60:                                               ; preds = %52, %48
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %57, %30
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local %struct.uverbs_attr* @uverbs_attr_get(%struct.uverbs_attr_bundle*, i64) #1

declare dso_local i64 @IS_ERR(%struct.uverbs_attr*) #1

declare dso_local i32 @PTR_ERR(%struct.uverbs_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
