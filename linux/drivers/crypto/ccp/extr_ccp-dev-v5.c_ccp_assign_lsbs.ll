; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp_assign_lsbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp_assign_lsbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@lsb_pub = common dso_local global i32 0, align 4
@MAX_LSB_CNT = common dso_local global i32 0, align 4
@qlsb = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LSB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_device*)* @ccp_assign_lsbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_assign_lsbs(%struct.ccp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccp_device* %0, %struct.ccp_device** %3, align 8
  %9 = load i32, i32* @lsb_pub, align 4
  %10 = load i32, i32* @MAX_LSB_CNT, align 4
  %11 = call i32 @DECLARE_BITMAP(i32 %9, i32 %10)
  %12 = load i32, i32* @qlsb, align 4
  %13 = load i32, i32* @MAX_LSB_CNT, align 4
  %14 = call i32 @DECLARE_BITMAP(i32 %12, i32 %13)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @lsb_pub, align 4
  %16 = load i32, i32* @MAX_LSB_CNT, align 4
  %17 = call i32 @bitmap_zero(i32 %15, i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %37, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %21 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i32, i32* @lsb_pub, align 4
  %26 = load i32, i32* @lsb_pub, align 4
  %27 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %28 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX_LSB_CNT, align 4
  %36 = call i32 @bitmap_or(i32 %25, i32 %26, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* @lsb_pub, align 4
  %42 = load i32, i32* @MAX_LSB_CNT, align 4
  %43 = call i32 @bitmap_weight(i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %46 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %72, %49
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MAX_LSB_CNT, align 4
  %56 = icmp sle i32 %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %59, label %75

59:                                               ; preds = %57
  %60 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @lsb_pub, align 4
  %64 = call i32 @ccp_find_and_assign_lsb_to_q(%struct.ccp_device* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %105

70:                                               ; preds = %59
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %50

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75, %40
  store i32 0, i32* %8, align 4
  %77 = load i32, i32* @qlsb, align 4
  %78 = load i32, i32* @lsb_pub, align 4
  %79 = load i32, i32* @MAX_LSB_CNT, align 4
  %80 = call i32 @bitmap_copy(i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @qlsb, align 4
  %82 = load i32, i32* @MAX_LSB_CNT, align 4
  %83 = call i32 @find_first_zero_bit(i32 %81, i32 %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %88, %76
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @MAX_LSB_CNT, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %90 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @LSB_SIZE, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* @LSB_SIZE, align 4
  %96 = call i32 @bitmap_set(i32 %91, i32 %94, i32 %95)
  %97 = load i32, i32* @qlsb, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @bitmap_set(i32 %97, i32 %98, i32 1)
  %100 = load i32, i32* @qlsb, align 4
  %101 = load i32, i32* @MAX_LSB_CNT, align 4
  %102 = call i32 @find_first_zero_bit(i32 %100, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %84

103:                                              ; preds = %84
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %67
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @bitmap_or(i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @ccp_find_and_assign_lsb_to_q(%struct.ccp_device*, i32, i32, i32) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
