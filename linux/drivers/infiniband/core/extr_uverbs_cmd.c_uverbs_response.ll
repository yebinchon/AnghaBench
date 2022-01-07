; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_uverbs_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_uverbs_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@UVERBS_ATTR_CORE_OUT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*, i8*, i64)* @uverbs_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uverbs_response(%struct.uverbs_attr_bundle* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uverbs_attr_bundle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %10 = load i32, i32* @UVERBS_ATTR_CORE_OUT, align 4
  %11 = call i64 @uverbs_attr_is_valid(%struct.uverbs_attr_bundle* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %15 = load i32, i32* @UVERBS_ATTR_CORE_OUT, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @uverbs_copy_to_struct_or_zero(%struct.uverbs_attr_bundle* %14, i32 %15, i8* %16, i64 %17)
  store i32 %18, i32* %4, align 4
  br label %64

19:                                               ; preds = %3
  %20 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %21 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %26 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @min(i64 %28, i64 %29)
  %31 = call i64 @copy_to_user(i64 %23, i8* %24, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %19
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %39 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %45 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %51 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = sub i64 %53, %54
  %56 = call i32 @clear_user(i64 %49, i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @EFAULT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %36
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %59, %33, %13
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @uverbs_attr_is_valid(%struct.uverbs_attr_bundle*, i32) #1

declare dso_local i32 @uverbs_copy_to_struct_or_zero(%struct.uverbs_attr_bundle*, i32, i8*, i64) #1

declare dso_local i64 @copy_to_user(i64, i8*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @clear_user(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
