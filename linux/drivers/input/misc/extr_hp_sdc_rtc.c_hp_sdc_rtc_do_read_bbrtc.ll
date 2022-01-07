; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_do_read_bbrtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_do_read_bbrtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.semaphore = type { i32 }
%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.semaphore* }

@HP_SDC_ACT_DATAREG = common dso_local global i32 0, align 4
@HP_SDC_ACT_POSTCMD = common dso_local global i32 0, align 4
@HP_SDC_ACT_DATAIN = common dso_local global i32 0, align 4
@HP_SDC_CMD_DO_RTCR = common dso_local global i32 0, align 4
@HP_SDC_ACT_SEMAPHORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @hp_sdc_rtc_do_read_bbrtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_rtc_do_read_bbrtc(%struct.rtc_time* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca %struct.semaphore, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca [91 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %11, %1
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 91
  br i1 %10, label %11, label %45

11:                                               ; preds = %8
  %12 = load i32, i32* @HP_SDC_ACT_DATAREG, align 4
  %13 = load i32, i32* @HP_SDC_ACT_POSTCMD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @HP_SDC_ACT_DATAIN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, 7
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @HP_SDC_CMD_DO_RTCR, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 %39
  store i32 2, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %8

45:                                               ; preds = %8
  %46 = load i32, i32* @HP_SDC_ACT_SEMAPHORE, align 4
  %47 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 84
  %48 = load i32, i32* %47, align 16
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 16
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 91, i32* %50, align 8
  %51 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.semaphore* %4, %struct.semaphore** %54, align 8
  %55 = call i32 @sema_init(%struct.semaphore* %4, i32 0)
  %56 = call i64 @hp_sdc_enqueue_transaction(%struct.TYPE_5__* %5)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %171

59:                                               ; preds = %45
  %60 = call i32 @down_interruptible(%struct.semaphore* %4)
  %61 = call i64 @WARN_ON(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 -1, i32* %2, align 4
  br label %171

64:                                               ; preds = %59
  %65 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 83
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 90
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %66, %68
  %70 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %69, %71
  %73 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 76
  %74 = load i32, i32* %73, align 16
  %75 = or i32 %72, %74
  %76 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 55
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %75, %77
  %79 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 62
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %78, %80
  %82 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 34
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %81, %83
  %85 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 41
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %84, %86
  %88 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 20
  %89 = load i32, i32* %88, align 16
  %90 = or i32 %87, %89
  %91 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 27
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %90, %92
  %94 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 6
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %93, %95
  %97 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 13
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %96, %98
  %100 = and i32 %99, 15
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %64
  store i32 -1, i32* %2, align 4
  br label %171

103:                                              ; preds = %64
  %104 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %105 = call i32 @memset(%struct.rtc_time* %104, i32 0, i32 28)
  %106 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 83
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 15
  %109 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 90
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 15
  %112 = mul nsw i32 %111, 10
  %113 = add nsw i32 %108, %112
  %114 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %115 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 69
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 15
  %119 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 76
  %120 = load i32, i32* %119, align 16
  %121 = and i32 %120, 15
  %122 = mul nsw i32 %121, 10
  %123 = add nsw i32 %118, %122
  %124 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %125 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 55
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 15
  %129 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 62
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 15
  %132 = mul nsw i32 %131, 10
  %133 = add nsw i32 %128, %132
  %134 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %135 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 48
  %137 = load i32, i32* %136, align 16
  %138 = and i32 %137, 15
  %139 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %140 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 34
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, 15
  %144 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 41
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 15
  %147 = mul nsw i32 %146, 10
  %148 = add nsw i32 %143, %147
  %149 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %150 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 20
  %152 = load i32, i32* %151, align 16
  %153 = and i32 %152, 15
  %154 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 27
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 15
  %157 = mul nsw i32 %156, 10
  %158 = add nsw i32 %153, %157
  %159 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %160 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 4
  %161 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 6
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, 15
  %164 = getelementptr inbounds [91 x i32], [91 x i32]* %6, i64 0, i64 13
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 15
  %167 = mul nsw i32 %166, 10
  %168 = add nsw i32 %163, %167
  %169 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %170 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 4
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %103, %102, %63, %58
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @sema_init(%struct.semaphore*, i32) #1

declare dso_local i64 @hp_sdc_enqueue_transaction(%struct.TYPE_5__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @down_interruptible(%struct.semaphore*) #1

declare dso_local i32 @memset(%struct.rtc_time*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
