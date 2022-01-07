; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c_uverbs_is_attr_cleared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c_uverbs_is_attr_cleared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_attr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_uverbs_attr*, i32)* @uverbs_is_attr_cleared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uverbs_is_attr_cleared(%struct.ib_uverbs_attr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_uverbs_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_uverbs_attr* %0, %struct.ib_uverbs_attr** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %4, align 8
  %7 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ugt i64 %9, 4
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %4, align 8
  %13 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @u64_to_user_ptr(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %15, %16
  %18 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %4, align 8
  %19 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %20, %21
  %23 = call i32 @ib_is_buffer_cleared(i32 %17, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %2
  %25 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %4, align 8
  %26 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %25, i32 0, i32 1
  %27 = bitcast i32* %26 to i8*
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %27, i64 %29
  %31 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %4, align 8
  %32 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @memchr_inv(i8* %30, i32 0, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %24, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ib_is_buffer_cleared(i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @memchr_inv(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
