; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc = type { i64, i64, i64, i32 }

@REG_MSU_MINTCTL = common dso_local global i64 0, align 8
@M1BLIE = common dso_local global i32 0, align 4
@M0BLIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"MINTCTL ignores writes: no usable interrupts\0A\00", align 1
@REG_MSU_MSUSTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msc*)* @intel_th_msu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_msu_init(%struct.msc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msc* %0, %struct.msc** %3, align 8
  %6 = load %struct.msc*, %struct.msc** %3, align 8
  %7 = getelementptr inbounds %struct.msc, %struct.msc* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.msc*, %struct.msc** %3, align 8
  %13 = getelementptr inbounds %struct.msc, %struct.msc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %71

17:                                               ; preds = %11
  %18 = load %struct.msc*, %struct.msc** %3, align 8
  %19 = getelementptr inbounds %struct.msc, %struct.msc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_MSU_MINTCTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread32(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.msc*, %struct.msc** %3, align 8
  %25 = getelementptr inbounds %struct.msc, %struct.msc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* @M1BLIE, align 4
  br label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @M0BLIE, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.msc*, %struct.msc** %3, align 8
  %38 = getelementptr inbounds %struct.msc, %struct.msc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REG_MSU_MINTCTL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @iowrite32(i32 %36, i64 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.msc*, %struct.msc** %3, align 8
  %45 = getelementptr inbounds %struct.msc, %struct.msc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @REG_MSU_MINTCTL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @ioread32(i64 %48)
  %50 = icmp ne i32 %43, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %32
  %52 = load %struct.msc*, %struct.msc** %3, align 8
  %53 = call i32 @msc_dev(%struct.msc* %52)
  %54 = call i32 @dev_info(i32 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.msc*, %struct.msc** %3, align 8
  %56 = getelementptr inbounds %struct.msc, %struct.msc* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  store i32 0, i32* %2, align 4
  br label %71

57:                                               ; preds = %32
  %58 = load %struct.msc*, %struct.msc** %3, align 8
  %59 = getelementptr inbounds %struct.msc, %struct.msc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @REG_MSU_MSUSTS, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @ioread32(i64 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.msc*, %struct.msc** %3, align 8
  %66 = getelementptr inbounds %struct.msc, %struct.msc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @REG_MSU_MSUSTS, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @iowrite32(i32 %64, i64 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %57, %51, %16, %10
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @msc_dev(%struct.msc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
