; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c_uverbs_copy_to_struct_or_zero.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c_uverbs_copy_to_struct_or_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.uverbs_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uverbs_copy_to_struct_or_zero(%struct.uverbs_attr_bundle* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uverbs_attr_bundle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.uverbs_attr*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.uverbs_attr* @uverbs_attr_get(%struct.uverbs_attr_bundle* %11, i64 %12)
  store %struct.uverbs_attr* %13, %struct.uverbs_attr** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.uverbs_attr*, %struct.uverbs_attr** %10, align 8
  %16 = getelementptr inbounds %struct.uverbs_attr, %struct.uverbs_attr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %4
  %21 = load %struct.uverbs_attr*, %struct.uverbs_attr** %10, align 8
  %22 = getelementptr inbounds %struct.uverbs_attr, %struct.uverbs_attr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @u64_to_user_ptr(i32 %24)
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %25, %26
  %28 = load %struct.uverbs_attr*, %struct.uverbs_attr** %10, align 8
  %29 = getelementptr inbounds %struct.uverbs_attr, %struct.uverbs_attr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = sub i64 %31, %32
  %34 = call i64 @clear_user(i64 %27, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %46

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @uverbs_copy_to(%struct.uverbs_attr_bundle* %41, i64 %42, i8* %43, i64 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %36
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.uverbs_attr* @uverbs_attr_get(%struct.uverbs_attr_bundle*, i64) #1

declare dso_local i64 @clear_user(i64, i64) #1

declare dso_local i64 @u64_to_user_ptr(i32) #1

declare dso_local i32 @uverbs_copy_to(%struct.uverbs_attr_bundle*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
