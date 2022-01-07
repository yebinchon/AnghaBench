; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_alloc_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_alloc_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_cc = type { i32, i32, i32, i32, i64 }

@EDMA_SLOT_ANY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@dummy_paramset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edma_cc*, i32)* @edma_alloc_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edma_alloc_slot(%struct.edma_cc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edma_cc*, align 8
  %5 = alloca i32, align 4
  store %struct.edma_cc* %0, %struct.edma_cc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @EDMA_CHAN_SLOT(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %12 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %18 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @EDMA_SLOT_ANY, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %15, %8
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %24
  %28 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %29 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %37

33:                                               ; preds = %27
  %34 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %35 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %32
  br label %38

38:                                               ; preds = %63, %37
  %39 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %40 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %43 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @find_next_zero_bit(i32 %41, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %49 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %95

55:                                               ; preds = %38
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %58 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @test_and_set_bit(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %64

63:                                               ; preds = %55
  br label %38

64:                                               ; preds = %62
  br label %86

65:                                               ; preds = %24
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %68 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %95

74:                                               ; preds = %65
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %77 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @test_and_set_bit(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %95

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %64
  %87 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @edma_write_slot(%struct.edma_cc* %87, i32 %88, i32* @dummy_paramset)
  %90 = load %struct.edma_cc*, %struct.edma_cc** %4, align 8
  %91 = getelementptr inbounds %struct.edma_cc, %struct.edma_cc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @EDMA_CTLR_CHAN(i32 %92, i32 %93)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %86, %81, %71, %52
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @edma_write_slot(%struct.edma_cc*, i32, i32*) #1

declare dso_local i32 @EDMA_CTLR_CHAN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
