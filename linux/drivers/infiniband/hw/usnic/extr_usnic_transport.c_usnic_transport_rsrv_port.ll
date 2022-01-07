; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_transport.c_usnic_transport_rsrv_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_transport.c_usnic_transport_rsrv_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USNIC_TRANSPORT_ROCE_CUSTOM = common dso_local global i32 0, align 4
@roce_bitmap_lock = common dso_local global i32 0, align 4
@roce_bitmap = common dso_local global i32 0, align 4
@ROCE_BITMAP_SZ = common dso_local global i32 0, align 4
@roce_next_port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate port for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to allocate port - transport %s unsupported\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Allocating port %hu for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_transport_rsrv_port(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @USNIC_TRANSPORT_ROCE_CUSTOM, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = call i32 @spin_lock(i32* @roce_bitmap_lock)
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @roce_bitmap, align 4
  %15 = load i32, i32* @ROCE_BITMAP_SZ, align 4
  %16 = load i32, i32* @roce_next_port, align 4
  %17 = call i32 @bitmap_find_next_zero_area(i32 %14, i32 %15, i32 %16, i32 1, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 4095
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @roce_next_port, align 4
  br label %32

21:                                               ; preds = %9
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @roce_bitmap, align 4
  %24 = call i64 @test_bit(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @usnic_transport_to_str(i32 %27)
  %29 = call i32 @usnic_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call i32 @spin_unlock(i32* @roce_bitmap_lock)
  br label %47

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i32, i32* @roce_bitmap, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @bitmap_set(i32 %33, i32 %34, i32 1)
  %36 = call i32 @spin_unlock(i32* @roce_bitmap_lock)
  br label %41

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @usnic_transport_to_str(i32 %38)
  %40 = call i32 @usnic_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @usnic_transport_to_str(i32 %43)
  %45 = call i32 @usnic_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %37, %26
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

declare dso_local i32 @usnic_transport_to_str(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @usnic_dbg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
