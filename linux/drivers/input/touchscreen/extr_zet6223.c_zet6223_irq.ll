; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zet6223.c_zet6223_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zet6223.c_zet6223_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zet6223_ts = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ZET6223_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error reading input data: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ZET6223_VALID_PACKET = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zet6223_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zet6223_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zet6223_ts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.zet6223_ts*
  store %struct.zet6223_ts* %16, %struct.zet6223_ts** %6, align 8
  %17 = load %struct.zet6223_ts*, %struct.zet6223_ts** %6, align 8
  %18 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 4, %19
  %21 = add nsw i32 3, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @ZET6223_MAX_PKT_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load %struct.zet6223_ts*, %struct.zet6223_ts** %6, align 8
  %27 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @i2c_master_recv(%struct.TYPE_2__* %28, i32* %25, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %2
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  br label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  store i32 %43, i32* %13, align 4
  %44 = load %struct.zet6223_ts*, %struct.zet6223_ts** %6, align 8
  %45 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @dev_err_ratelimited(i32* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %137

51:                                               ; preds = %2
  %52 = getelementptr inbounds i32, i32* %25, i64 0
  %53 = load i32, i32* %52, align 16
  %54 = load i32, i32* @ZET6223_VALID_PACKET, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %137

58:                                               ; preds = %51
  %59 = getelementptr inbounds i32, i32* %25, i64 1
  %60 = call i32 @get_unaligned_be16(i32* %59)
  store i32 %60, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %124, %58
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.zet6223_ts*, %struct.zet6223_ts** %6, align 8
  %64 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %127

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 15, %69
  %71 = call i32 @BIT(i32 %70)
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %124

75:                                               ; preds = %67
  %76 = load %struct.zet6223_ts*, %struct.zet6223_ts** %6, align 8
  %77 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @input_mt_slot(i32 %78, i32 %79)
  %81 = load %struct.zet6223_ts*, %struct.zet6223_ts** %6, align 8
  %82 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MT_TOOL_FINGER, align 4
  %85 = call i32 @input_mt_report_slot_state(i32 %83, i32 %84, i32 1)
  %86 = load %struct.zet6223_ts*, %struct.zet6223_ts** %6, align 8
  %87 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @EV_ABS, align 4
  %90 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %25, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 4
  %97 = shl i32 %96, 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %25, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %97, %102
  %104 = call i32 @input_event(i32 %88, i32 %89, i32 %90, i32 %103)
  %105 = load %struct.zet6223_ts*, %struct.zet6223_ts** %6, align 8
  %106 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @EV_ABS, align 4
  %109 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %25, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 15
  %116 = shl i32 %115, 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 5
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %25, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %116, %121
  %123 = call i32 @input_event(i32 %107, i32 %108, i32 %109, i32 %122)
  br label %124

124:                                              ; preds = %75, %74
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %61

127:                                              ; preds = %61
  %128 = load %struct.zet6223_ts*, %struct.zet6223_ts** %6, align 8
  %129 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @input_mt_sync_frame(i32 %130)
  %132 = load %struct.zet6223_ts*, %struct.zet6223_ts** %6, align 8
  %133 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @input_sync(i32 %134)
  %136 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %136, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %137

137:                                              ; preds = %127, %56, %42
  %138 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_2__*, i32*, i32) #2

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, i32) #2

declare dso_local i32 @get_unaligned_be16(i32*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @input_mt_slot(i32, i32) #2

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #2

declare dso_local i32 @input_event(i32, i32, i32, i32) #2

declare dso_local i32 @input_mt_sync_frame(i32) #2

declare dso_local i32 @input_sync(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
