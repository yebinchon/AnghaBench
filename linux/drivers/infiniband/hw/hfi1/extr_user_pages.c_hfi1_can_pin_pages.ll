; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_pages.c_hfi1_can_pin_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_pages.c_hfi1_can_pin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32 }
%struct.mm_struct = type { i32 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@cache_size = common dso_local global i64 0, align 8
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_can_pin_pages(%struct.hfi1_devdata* %0, %struct.mm_struct* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %6, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %17 = call i64 @rlimit(i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* @cache_size, align 8
  %19 = mul i64 %18, 1048576
  store i64 %19, i64* %13, align 8
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* @CAP_IPC_LOCK, align 4
  %28 = call i32 @capable(i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %14, align 4
  %31 = zext i32 %30 to i64
  %32 = udiv i64 %29, %31
  %33 = udiv i64 %32, 4
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %40, %36, %4
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i64 @DIV_ROUND_UP(i64 %43, i32 %44)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %47 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %46, i32 0, i32 0
  %48 = call i64 @atomic64_read(i32* %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* %10, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %70

58:                                               ; preds = %54, %42
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %13, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi i1 [ true, %58 ], [ %66, %64 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %57
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
