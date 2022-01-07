; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw.h_i40iw_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw.h_i40iw_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, i64*, i64, i64*, i64*)* @i40iw_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_alloc_resource(%struct.i40iw_device* %0, i64* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_device*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %15 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %14, i32 0, i32 0
  %16 = load i64, i64* %13, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i64*, i64** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @find_next_zero_bit(i64* %18, i64 %19, i64 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %5
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @find_first_zero_bit(i64* %27, i64 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %35 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %34, i32 0, i32 0
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* @EOVERFLOW, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %61

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %5
  %42 = load i64, i64* %12, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = call i32 @set_bit(i64 %42, i64* %43)
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i64*, i64** %11, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i64*, i64** %11, align 8
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %52, %41
  %55 = load i64, i64* %12, align 8
  %56 = load i64*, i64** %10, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %58 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %57, i32 0, i32 0
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %54, %33
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @find_next_zero_bit(i64*, i64, i64) #1

declare dso_local i64 @find_first_zero_bit(i64*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
