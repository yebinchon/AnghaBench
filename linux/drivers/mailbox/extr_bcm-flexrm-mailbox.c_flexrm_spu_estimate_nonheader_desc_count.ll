; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_spu_estimate_nonheader_desc_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_spu_estimate_nonheader_desc_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcm_message*)* @flexrm_spu_estimate_nonheader_desc_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flexrm_spu_estimate_nonheader_desc_count(%struct.brcm_message* %0) #0 {
  %2 = alloca %struct.brcm_message*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  store %struct.brcm_message* %0, %struct.brcm_message** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.brcm_message*, %struct.brcm_message** %2, align 8
  %8 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %10, %struct.scatterlist** %5, align 8
  %11 = load %struct.brcm_message*, %struct.brcm_message** %2, align 8
  %12 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  store %struct.scatterlist* %14, %struct.scatterlist** %6, align 8
  br label %15

15:                                               ; preds = %63, %1
  %16 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %17 = icmp ne %struct.scatterlist* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %20 = icmp ne %struct.scatterlist* %19, null
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ true, %15 ], [ %20, %18 ]
  br i1 %22, label %23, label %64

23:                                               ; preds = %21
  %24 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %25 = icmp ne %struct.scatterlist* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i64, i64* %3, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %3, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %30 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %33 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %32)
  store %struct.scatterlist* %33, %struct.scatterlist** %5, align 8
  br label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @UINT_MAX, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %26
  br label %37

37:                                               ; preds = %60, %36
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %42 = icmp ne %struct.scatterlist* %41, null
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i1 [ false, %37 ], [ %42, %40 ]
  br i1 %44, label %45, label %63

45:                                               ; preds = %43
  %46 = load i64, i64* %3, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %3, align 8
  %48 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %55 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sub i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %62 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %61)
  store %struct.scatterlist* %62, %struct.scatterlist** %6, align 8
  br label %37

63:                                               ; preds = %43
  br label %15

64:                                               ; preds = %21
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
