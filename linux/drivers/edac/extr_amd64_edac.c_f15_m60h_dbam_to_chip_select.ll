; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f15_m60h_dbam_to_chip_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f15_m60h_dbam_to_chip_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@MEM_DDR4 = common dso_local global i64 0, align 8
@MEM_LRDDR3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i64, i32, i32)* @f15_m60h_dbam_to_chip_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f15_m60h_dbam_to_chip_select(%struct.amd64_pvt* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %14 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ugt i32 %24, 12
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %29 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MEM_DDR4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ugt i32 %34, 9
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %66

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ddr4_cs_size(i32 %38)
  store i32 %39, i32* %10, align 4
  br label %64

40:                                               ; preds = %4
  %41 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %42 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MEM_LRDDR3, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 15
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 4, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @ddr3_lrdimm_cs_size(i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %63

56:                                               ; preds = %40
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  br label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @ddr3_cs_size(i32 %61, i32 0)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %59, %36
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ddr4_cs_size(i32) #1

declare dso_local i32 @ddr3_lrdimm_cs_size(i32, i32) #1

declare dso_local i32 @ddr3_cs_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
