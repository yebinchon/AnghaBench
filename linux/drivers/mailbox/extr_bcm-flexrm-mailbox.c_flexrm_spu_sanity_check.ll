; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_spu_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_spu_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@SRC_LENGTH_MASK = common dso_local global i32 0, align 4
@MSRC_LENGTH_MASK = common dso_local global i32 0, align 4
@DST_LENGTH_MASK = common dso_local global i32 0, align 4
@MDST_LENGTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcm_message*)* @flexrm_spu_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexrm_spu_sanity_check(%struct.brcm_message* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcm_message*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  store %struct.brcm_message* %0, %struct.brcm_message** %3, align 8
  %5 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %6 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %9 = icmp ne %struct.scatterlist* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %12 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %15 = icmp ne %struct.scatterlist* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %88

17:                                               ; preds = %10
  %18 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %19 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  store %struct.scatterlist* %21, %struct.scatterlist** %4, align 8
  br label %22

22:                                               ; preds = %49, %17
  %23 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %24 = icmp ne %struct.scatterlist* %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %27 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 15
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SRC_LENGTH_MASK, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %88

38:                                               ; preds = %31
  br label %48

39:                                               ; preds = %25
  %40 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MSRC_LENGTH_MASK, align 4
  %44 = mul nsw i32 %43, 16
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %88

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %51 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %50)
  store %struct.scatterlist* %51, %struct.scatterlist** %4, align 8
  br label %22

52:                                               ; preds = %22
  %53 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %54 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.scatterlist*, %struct.scatterlist** %55, align 8
  store %struct.scatterlist* %56, %struct.scatterlist** %4, align 8
  br label %57

57:                                               ; preds = %84, %52
  %58 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %59 = icmp ne %struct.scatterlist* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %62 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 15
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %68 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DST_LENGTH_MASK, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %88

73:                                               ; preds = %66
  br label %83

74:                                               ; preds = %60
  %75 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %76 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MDST_LENGTH_MASK, align 4
  %79 = mul nsw i32 %78, 16
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %88

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %73
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %86 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %85)
  store %struct.scatterlist* %86, %struct.scatterlist** %4, align 8
  br label %57

87:                                               ; preds = %57
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %81, %72, %46, %37, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
