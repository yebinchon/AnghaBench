; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_k8_dbam_to_chip_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_k8_dbam_to_chip_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, i64 }

@K8_REV_F = common dso_local global i64 0, align 8
@WIDTH_128 = common dso_local global i32 0, align 4
@K8_REV_D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i64, i32, i32)* @k8_dbam_to_chip_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k8_dbam_to_chip_select(%struct.amd64_pvt* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %16 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  br label %22

18:                                               ; preds = %4
  %19 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %20 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  store i32 %23, i32* %10, align 4
  %24 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %25 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @K8_REV_F, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %30, 11
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @WIDTH_128, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @ddr2_cs_size(i32 %34, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %67

39:                                               ; preds = %22
  %40 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %41 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @K8_REV_D, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = icmp ugt i32 %46, 10
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = udiv i32 %50, 3
  %52 = load i32, i32* %8, align 4
  %53 = icmp ugt i32 %52, 5
  %54 = zext i1 %53 to i32
  %55 = add i32 %51, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub i32 %56, %57
  %59 = shl i32 32, %58
  store i32 %59, i32* %5, align 4
  br label %67

60:                                               ; preds = %39
  %61 = load i32, i32* %8, align 4
  %62 = icmp ugt i32 %61, 6
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 32, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %60, %45, %29
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ddr2_cs_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
