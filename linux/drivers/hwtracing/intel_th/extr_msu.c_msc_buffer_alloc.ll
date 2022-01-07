; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@MSC_MODE_SINGLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MSC_MODE_MULTI = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msc*, i64*, i32)* @msc_buffer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msc_buffer_alloc(%struct.msc* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msc*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msc* %0, %struct.msc** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.msc*, %struct.msc** %5, align 8
  %10 = getelementptr inbounds %struct.msc, %struct.msc* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %69

16:                                               ; preds = %3
  %17 = load %struct.msc*, %struct.msc** %5, align 8
  %18 = getelementptr inbounds %struct.msc, %struct.msc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MSC_MODE_SINGLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %69

28:                                               ; preds = %22
  %29 = load %struct.msc*, %struct.msc** %5, align 8
  %30 = load i64*, i64** %6, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = call i32 @msc_buffer_contig_alloc(%struct.msc* %29, i64 %34)
  store i32 %35, i32* %8, align 4
  br label %51

36:                                               ; preds = %16
  %37 = load %struct.msc*, %struct.msc** %5, align 8
  %38 = getelementptr inbounds %struct.msc, %struct.msc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MSC_MODE_MULTI, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.msc*, %struct.msc** %5, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @msc_buffer_multi_alloc(%struct.msc* %43, i64* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @ENOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = call i32 (...) @smp_mb__before_atomic()
  %56 = load %struct.msc*, %struct.msc** %5, align 8
  %57 = getelementptr inbounds %struct.msc, %struct.msc* %56, i32 0, i32 1
  %58 = call i32 @atomic_cmpxchg(i32* %57, i32 -1, i32 0)
  %59 = icmp ne i32 %58, -1
  %60 = zext i1 %59 to i32
  %61 = call i64 @WARN_ON_ONCE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %51
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %63, %25, %13
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @msc_buffer_contig_alloc(%struct.msc*, i64) #1

declare dso_local i32 @msc_buffer_multi_alloc(%struct.msc*, i64*, i32) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
