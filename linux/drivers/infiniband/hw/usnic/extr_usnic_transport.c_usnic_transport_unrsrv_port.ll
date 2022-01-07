; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_transport.c_usnic_transport_unrsrv_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_transport.c_usnic_transport_unrsrv_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USNIC_TRANSPORT_ROCE_CUSTOM = common dso_local global i32 0, align 4
@roce_bitmap_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unreserved invalid port num 0 for %s\0A\00", align 1
@roce_bitmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unreserving invalid %hu for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Freeing port %hu for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Freeing invalid port %hu for %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usnic_transport_unrsrv_port(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @USNIC_TRANSPORT_ROCE_CUSTOM, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = call i32 @spin_lock(i32* @roce_bitmap_lock)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @usnic_transport_to_str(i32 %13)
  %15 = call i32 (i8*, i32, ...) @usnic_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %34

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @roce_bitmap, align 4
  %19 = call i32 @test_bit(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @usnic_transport_to_str(i32 %23)
  %25 = call i32 (i8*, i32, ...) @usnic_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %24)
  br label %34

26:                                               ; preds = %16
  %27 = load i32, i32* @roce_bitmap, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @bitmap_clear(i32 %27, i32 %28, i32 1)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @usnic_transport_to_str(i32 %31)
  %33 = call i32 @usnic_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %26, %21, %12
  %35 = call i32 @spin_unlock(i32* @roce_bitmap_lock)
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i8*, i32, ...) @usnic_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %34
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @usnic_err(i8*, i32, ...) #1

declare dso_local i32 @usnic_transport_to_str(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

declare dso_local i32 @usnic_dbg(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
