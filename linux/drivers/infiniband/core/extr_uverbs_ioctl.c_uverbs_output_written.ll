; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c_uverbs_output_written.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c_uverbs_output_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.uverbs_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uverbs_output_written(%struct.uverbs_attr_bundle* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uverbs_attr_bundle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uverbs_attr*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.uverbs_attr* @uverbs_attr_get(%struct.uverbs_attr_bundle* %7, i64 %8)
  store %struct.uverbs_attr* %9, %struct.uverbs_attr** %6, align 8
  %10 = load %struct.uverbs_attr*, %struct.uverbs_attr** %6, align 8
  %11 = call i64 @IS_ERR(%struct.uverbs_attr* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.uverbs_attr*, %struct.uverbs_attr** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.uverbs_attr* %14)
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %18 = load %struct.uverbs_attr*, %struct.uverbs_attr** %6, align 8
  %19 = call i32 @uverbs_set_output(%struct.uverbs_attr_bundle* %17, %struct.uverbs_attr* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.uverbs_attr* @uverbs_attr_get(%struct.uverbs_attr_bundle*, i64) #1

declare dso_local i64 @IS_ERR(%struct.uverbs_attr*) #1

declare dso_local i32 @PTR_ERR(%struct.uverbs_attr*) #1

declare dso_local i32 @uverbs_set_output(%struct.uverbs_attr_bundle*, %struct.uverbs_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
