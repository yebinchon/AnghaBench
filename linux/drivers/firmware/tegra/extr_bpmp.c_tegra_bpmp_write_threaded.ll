; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_write_threaded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_write_threaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_channel = type { i32 }
%struct.tegra_bpmp = type { %struct.TYPE_8__, i32, %struct.tegra_bpmp_channel*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@MSG_ACK = common dso_local global i32 0, align 4
@MSG_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_bpmp_channel* (%struct.tegra_bpmp*, i32, i8*, i64)* @tegra_bpmp_write_threaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_bpmp_channel* @tegra_bpmp_write_threaded(%struct.tegra_bpmp* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.tegra_bpmp_channel*, align 8
  %6 = alloca %struct.tegra_bpmp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tegra_bpmp_channel*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %17 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %16, i32 0, i32 3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %24 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @usecs_to_jiffies(i64 %33)
  %35 = call i32 @down_timeout(i32* %32, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load i32, i32* %15, align 4
  %40 = call %struct.tegra_bpmp_channel* @ERR_PTR(i32 %39)
  store %struct.tegra_bpmp_channel* %40, %struct.tegra_bpmp_channel** %5, align 8
  br label %119

41:                                               ; preds = %4
  %42 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %43 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %42, i32 0, i32 1
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %47 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @find_first_zero_bit(i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %15, align 4
  br label %108

58:                                               ; preds = %41
  %59 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %60 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %59, i32 0, i32 2
  %61 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %61, i64 %63
  store %struct.tegra_bpmp_channel* %64, %struct.tegra_bpmp_channel** %12, align 8
  %65 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %12, align 8
  %66 = call i32 @tegra_bpmp_is_request_channel_free(%struct.tegra_bpmp_channel* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %15, align 4
  br label %108

71:                                               ; preds = %58
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %74 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @set_bit(i32 %72, i32 %76)
  %78 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %12, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @MSG_ACK, align 4
  %81 = load i32, i32* @MSG_RING, align 4
  %82 = or i32 %80, %81
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @__tegra_bpmp_channel_write(%struct.tegra_bpmp_channel* %78, i32 %79, i32 %82, i8* %83, i64 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %71
  br label %101

89:                                               ; preds = %71
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %92 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @set_bit(i32 %90, i32 %94)
  %96 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %97 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %96, i32 0, i32 1
  %98 = load i64, i64* %13, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %12, align 8
  store %struct.tegra_bpmp_channel* %100, %struct.tegra_bpmp_channel** %5, align 8
  br label %119

101:                                              ; preds = %88
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %104 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @clear_bit(i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %101, %68, %55
  %109 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %110 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %109, i32 0, i32 1
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %114 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = call i32 @up(i32* %115)
  %117 = load i32, i32* %15, align 4
  %118 = call %struct.tegra_bpmp_channel* @ERR_PTR(i32 %117)
  store %struct.tegra_bpmp_channel* %118, %struct.tegra_bpmp_channel** %5, align 8
  br label %119

119:                                              ; preds = %108, %89, %38
  %120 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  ret %struct.tegra_bpmp_channel* %120
}

declare dso_local i32 @down_timeout(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i64) #1

declare dso_local %struct.tegra_bpmp_channel* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @tegra_bpmp_is_request_channel_free(%struct.tegra_bpmp_channel*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @__tegra_bpmp_channel_write(%struct.tegra_bpmp_channel*, i32, i32, i8*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
