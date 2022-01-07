; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_alloc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/extr_hsi_core.c_hsi_alloc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hsi_msg* @hsi_alloc_msg(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.hsi_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hsi_msg*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.hsi_msg* @kzalloc(i32 4, i32 %8)
  store %struct.hsi_msg* %9, %struct.hsi_msg** %6, align 8
  %10 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %11 = icmp ne %struct.hsi_msg* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.hsi_msg* null, %struct.hsi_msg** %3, align 8
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  store %struct.hsi_msg* %17, %struct.hsi_msg** %3, align 8
  br label %32

18:                                               ; preds = %13
  %19 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %20 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sg_alloc_table(i32* %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %29 = call i32 @kfree(%struct.hsi_msg* %28)
  store %struct.hsi_msg* null, %struct.hsi_msg** %6, align 8
  br label %30

30:                                               ; preds = %27, %18
  %31 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  store %struct.hsi_msg* %31, %struct.hsi_msg** %3, align 8
  br label %32

32:                                               ; preds = %30, %16, %12
  %33 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  ret %struct.hsi_msg* %33
}

declare dso_local %struct.hsi_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_alloc_table(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
