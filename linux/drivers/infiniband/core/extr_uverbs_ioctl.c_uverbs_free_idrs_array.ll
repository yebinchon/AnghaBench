; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c_uverbs_free_idrs_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c_uverbs_free_idrs_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api_attr = type { %struct.uverbs_attr_spec }
%struct.uverbs_attr_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uverbs_objs_arr_attr = type { i64, i32* }
%struct.uverbs_attr_bundle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_api_attr*, %struct.uverbs_objs_arr_attr*, i32, %struct.uverbs_attr_bundle*)* @uverbs_free_idrs_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uverbs_free_idrs_array(%struct.uverbs_api_attr* %0, %struct.uverbs_objs_arr_attr* %1, i32 %2, %struct.uverbs_attr_bundle* %3) #0 {
  %5 = alloca %struct.uverbs_api_attr*, align 8
  %6 = alloca %struct.uverbs_objs_arr_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uverbs_attr_bundle*, align 8
  %9 = alloca %struct.uverbs_attr_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.uverbs_api_attr* %0, %struct.uverbs_api_attr** %5, align 8
  store %struct.uverbs_objs_arr_attr* %1, %struct.uverbs_objs_arr_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.uverbs_attr_bundle* %3, %struct.uverbs_attr_bundle** %8, align 8
  %13 = load %struct.uverbs_api_attr*, %struct.uverbs_api_attr** %5, align 8
  %14 = getelementptr inbounds %struct.uverbs_api_attr, %struct.uverbs_api_attr* %13, i32 0, i32 0
  store %struct.uverbs_attr_spec* %14, %struct.uverbs_attr_spec** %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %41, %4
  %16 = load i64, i64* %12, align 8
  %17 = load %struct.uverbs_objs_arr_attr*, %struct.uverbs_objs_arr_attr** %6, align 8
  %18 = getelementptr inbounds %struct.uverbs_objs_arr_attr, %struct.uverbs_objs_arr_attr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load %struct.uverbs_objs_arr_attr*, %struct.uverbs_objs_arr_attr** %6, align 8
  %23 = getelementptr inbounds %struct.uverbs_objs_arr_attr, %struct.uverbs_objs_arr_attr* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uverbs_attr_spec*, %struct.uverbs_attr_spec** %9, align 8
  %29 = getelementptr inbounds %struct.uverbs_attr_spec, %struct.uverbs_attr_spec* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %8, align 8
  %35 = call i32 @uverbs_finalize_object(i32 %27, i32 %32, i32 %33, %struct.uverbs_attr_bundle* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %38, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %12, align 8
  br label %15

44:                                               ; preds = %15
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

declare dso_local i32 @uverbs_finalize_object(i32, i32, i32, %struct.uverbs_attr_bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
