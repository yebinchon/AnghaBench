; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp_find_and_assign_lsb_to_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp_find_and_assign_lsb_to_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i32, i32, %struct.ccp_cmd_queue* }
%struct.ccp_cmd_queue = type { i32, i32 }

@qlsb = common dso_local global i64* null, align 8
@MAX_LSB_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Queue %d gets LSB %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_device*, i32, i32, i64*)* @ccp_find_and_assign_lsb_to_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_find_and_assign_lsb_to_q(%struct.ccp_device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccp_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ccp_cmd_queue*, align 8
  store %struct.ccp_device* %0, %struct.ccp_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load i64*, i64** @qlsb, align 8
  %15 = load i32, i32* @MAX_LSB_CNT, align 4
  %16 = call i32 @DECLARE_BITMAP(i64* %14, i32 %15)
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %88, %4
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %20 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %91

23:                                               ; preds = %17
  %24 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %25 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %24, i32 0, i32 2
  %26 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %26, i64 %28
  store %struct.ccp_cmd_queue* %29, %struct.ccp_cmd_queue** %13, align 8
  %30 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %13, align 8
  %31 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAX_LSB_CNT, align 4
  %34 = call i32 @bitmap_weight(i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %87

38:                                               ; preds = %23
  %39 = load i64*, i64** @qlsb, align 8
  %40 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %13, align 8
  %41 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX_LSB_CNT, align 4
  %44 = call i32 @bitmap_copy(i64* %39, i32 %42, i32 %43)
  %45 = load i64*, i64** @qlsb, align 8
  %46 = load i32, i32* @MAX_LSB_CNT, align 4
  %47 = call i32 @find_first_bit(i64* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %70, %38
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @MAX_LSB_CNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load i64*, i64** %9, align 8
  %55 = call i64 @test_bit(i32 %53, i64* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %13, align 8
  %60 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i64*, i64** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @bitmap_clear(i64* %61, i32 %62, i32 1)
  %64 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %65 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  br label %77

70:                                               ; preds = %52
  %71 = load i64*, i64** @qlsb, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @bitmap_clear(i64* %71, i32 %72, i32 1)
  %74 = load i64*, i64** @qlsb, align 8
  %75 = load i32, i32* @MAX_LSB_CNT, align 4
  %76 = call i32 @find_first_bit(i64* %74, i32 %75)
  store i32 %76, i32* %10, align 4
  br label %48

77:                                               ; preds = %57, %48
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @MAX_LSB_CNT, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %93

84:                                               ; preds = %77
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %23
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %17

91:                                               ; preds = %17
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %81
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @DECLARE_BITMAP(i64*, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @bitmap_copy(i64*, i32, i32) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @bitmap_clear(i64*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
