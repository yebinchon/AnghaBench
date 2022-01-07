; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_uverbs_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_uverbs_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*, i8*, i64)* @uverbs_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uverbs_request(%struct.uverbs_attr_bundle* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uverbs_attr_bundle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %10 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %14 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @min(i64 %16, i64 %17)
  %19 = call i64 @copy_from_user(i8* %8, i64 %12, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %73

24:                                               ; preds = %3
  %25 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %26 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %34 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr i8, i8* %32, i64 %36
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %40 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %38, %42
  %44 = call i32 @memset(i8* %37, i32 0, i64 %43)
  br label %72

45:                                               ; preds = %24
  %46 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %47 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %45
  %53 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %54 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %56, %57
  %59 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %5, align 8
  %60 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %62, %63
  %65 = call i32 @ib_is_buffer_cleared(i64 %58, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %52
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %73

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70, %45
  br label %72

72:                                               ; preds = %71, %31
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %67, %21
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @copy_from_user(i8*, i64, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @ib_is_buffer_cleared(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
