; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_mrq_return.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_mrq_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_channel = type { %struct.TYPE_3__*, %struct.tegra_bpmp*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tegra_bpmp = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MSG_DATA_MIN_SZ = common dso_local global i64 0, align 8
@MSG_ACK = common dso_local global i64 0, align 8
@MSG_RING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_bpmp_mrq_return(%struct.tegra_bpmp_channel* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.tegra_bpmp_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tegra_bpmp*, align 8
  %11 = alloca i32, align 4
  store %struct.tegra_bpmp_channel* %0, %struct.tegra_bpmp_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %13 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %17, i32 0, i32 1
  %19 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %18, align 8
  store %struct.tegra_bpmp* %19, %struct.tegra_bpmp** %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @MSG_DATA_MIN_SZ, align 8
  %22 = icmp ugt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %95

27:                                               ; preds = %4
  %28 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %29 = call i32 @tegra_bpmp_ack_request(%struct.tegra_bpmp_channel* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %95

36:                                               ; preds = %27
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @MSG_ACK, align 8
  %39 = and i64 %37, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %95

42:                                               ; preds = %36
  %43 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %44 = call i32 @tegra_bpmp_is_response_channel_free(%struct.tegra_bpmp_channel* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %95

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %54 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load i64, i64* %8, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %64 = getelementptr inbounds %struct.tegra_bpmp_channel, %struct.tegra_bpmp_channel* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @memcpy(i32 %67, i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %62, %59, %51
  %72 = load %struct.tegra_bpmp_channel*, %struct.tegra_bpmp_channel** %5, align 8
  %73 = call i32 @tegra_bpmp_post_response(%struct.tegra_bpmp_channel* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @WARN_ON(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %95

80:                                               ; preds = %71
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @MSG_RING, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %10, align 8
  %87 = call i32 @tegra_bpmp_ring_doorbell(%struct.tegra_bpmp* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i64 @WARN_ON(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %95

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %26, %35, %41, %50, %79, %93, %94, %80
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tegra_bpmp_ack_request(%struct.tegra_bpmp_channel*) #1

declare dso_local i32 @tegra_bpmp_is_response_channel_free(%struct.tegra_bpmp_channel*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @tegra_bpmp_post_response(%struct.tegra_bpmp_channel*) #1

declare dso_local i32 @tegra_bpmp_ring_doorbell(%struct.tegra_bpmp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
