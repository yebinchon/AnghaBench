; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mr_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i64, i64, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"HW2SW_MPT failed (%d)\0A\00", align 1
@MR_TYPE_MR = common dso_local global i64 0, align 8
@BA_BYTE_LEN = common dso_local global i32 0, align 4
@BITMAP_NO_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_mr*)* @hns_roce_mr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_mr_free(%struct.hns_roce_dev* %0, %struct.hns_roce_mr* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_mr*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_mr* %1, %struct.hns_roce_mr** %4, align 8
  %8 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %12 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %17 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %18 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @key_to_hw_index(i32 %19)
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %20, %25
  %27 = call i32 @hns_roce_hw2sw_mpt(%struct.hns_roce_dev* %16, i32* null, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %15
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %15
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %37 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %42 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MR_TYPE_MR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %48 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ib_umem_page_count(i32 %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %53 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @BA_BYTE_LEN, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %63 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %66 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_free_coherent(%struct.device* %58, i32 %61, i32 %64, i32 %67)
  br label %73

69:                                               ; preds = %51
  %70 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %71 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %72 = call i32 @hns_roce_mhop_free(%struct.hns_roce_dev* %70, %struct.hns_roce_mr* %71)
  br label %73

73:                                               ; preds = %69, %57
  br label %74

74:                                               ; preds = %73, %35
  %75 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %76 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %85 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @key_to_hw_index(i32 %86)
  %88 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %80, i32* %83, i32 %87)
  br label %89

89:                                               ; preds = %79, %74
  %90 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %91 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %4, align 8
  %94 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @key_to_hw_index(i32 %95)
  %97 = load i32, i32* @BITMAP_NO_RR, align 4
  %98 = call i32 @hns_roce_bitmap_free(i32* %92, i32 %96, i32 %97)
  ret void
}

declare dso_local i32 @hns_roce_hw2sw_mpt(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @ib_umem_page_count(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @hns_roce_mhop_free(%struct.hns_roce_dev*, %struct.hns_roce_mr*) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @hns_roce_bitmap_free(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
