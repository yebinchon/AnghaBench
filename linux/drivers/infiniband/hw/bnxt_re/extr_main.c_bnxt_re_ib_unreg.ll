; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_ib_unreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_ib_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_10__, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@BNXT_RE_FLAG_IBDEV_REGISTERED = common dso_local global i32 0, align 4
@BNXT_RE_FLAG_QOS_WORK_REG = common dso_local global i32 0, align 4
@BNXT_RE_FLAG_RESOURCES_INITIALIZED = common dso_local global i32 0, align 4
@BNXT_RE_FLAG_RESOURCES_ALLOCATED = common dso_local global i32 0, align 4
@BNXT_RE_FLAG_RCFW_CHANNEL_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to deinitialize RCFW: %#x\00", align 1
@BNXT_RE_FLAG_GOT_MSIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to free MSI-X vectors: %#x\00", align 1
@BNXT_RE_FLAG_NETDEV_REGISTERED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to unregister with netdev: %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_re_dev*)* @bnxt_re_ib_unreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_re_ib_unreg(%struct.bnxt_re_dev* %0) #0 {
  %2 = alloca %struct.bnxt_re_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %2, align 8
  %5 = load i32, i32* @BNXT_RE_FLAG_IBDEV_REGISTERED, align 4
  %6 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %6, i32 0, i32 0
  %8 = call i64 @test_and_clear_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %12 = call i32 @bnxt_re_unregister_ib(%struct.bnxt_re_dev* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* @BNXT_RE_FLAG_QOS_WORK_REG, align 4
  %15 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %15, i32 0, i32 0
  %17 = call i64 @test_and_clear_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %21 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %20, i32 0, i32 5
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i32, i32* @BNXT_RE_FLAG_RESOURCES_INITIALIZED, align 4
  %25 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %26 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %25, i32 0, i32 0
  %27 = call i64 @test_and_clear_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %31 = call i32 @bnxt_re_cleanup_res(%struct.bnxt_re_dev* %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* @BNXT_RE_FLAG_RESOURCES_ALLOCATED, align 4
  %34 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %35 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %34, i32 0, i32 0
  %36 = call i64 @test_and_clear_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %40 = call i32 @bnxt_re_free_res(%struct.bnxt_re_dev* %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* @BNXT_RE_FLAG_RCFW_CHANNEL_EN, align 4
  %43 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %44 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %43, i32 0, i32 0
  %45 = call i64 @test_and_clear_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %41
  %48 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %49 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %48, i32 0, i32 1
  %50 = call i32 @bnxt_qplib_deinit_rcfw(%struct.TYPE_9__* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %55 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %60 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %61 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bnxt_re_net_stats_ctx_free(%struct.bnxt_re_dev* %59, i32 %64)
  %66 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %67 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %66, i32 0, i32 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %72 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %71, i32 0, i32 3
  %73 = call i32 @bnxt_qplib_free_ctx(i32 %70, %struct.TYPE_10__* %72)
  %74 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %75 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %74, i32 0, i32 1
  %76 = call i32 @bnxt_qplib_disable_rcfw_channel(%struct.TYPE_9__* %75)
  %77 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %78 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %77, i32 0, i32 2
  %79 = call i32 @bnxt_qplib_get_ring_type(i32* %78)
  store i32 %79, i32* %3, align 4
  %80 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %81 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %82 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @bnxt_re_net_ring_free(%struct.bnxt_re_dev* %80, i32 %84, i32 %85)
  %87 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %88 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %87, i32 0, i32 1
  %89 = call i32 @bnxt_qplib_free_rcfw_channel(%struct.TYPE_9__* %88)
  br label %90

90:                                               ; preds = %58, %41
  %91 = load i32, i32* @BNXT_RE_FLAG_GOT_MSIX, align 4
  %92 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %93 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %92, i32 0, i32 0
  %94 = call i64 @test_and_clear_bit(i32 %91, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %98 = call i32 @bnxt_re_free_msix(%struct.bnxt_re_dev* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %103 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %102)
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @dev_warn(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106, %90
  %108 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %109 = call i32 @bnxt_re_destroy_chip_ctx(%struct.bnxt_re_dev* %108)
  %110 = load i32, i32* @BNXT_RE_FLAG_NETDEV_REGISTERED, align 4
  %111 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %112 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %111, i32 0, i32 0
  %113 = call i64 @test_and_clear_bit(i32 %110, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %107
  %116 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %117 = call i32 @bnxt_re_unregister_netdev(%struct.bnxt_re_dev* %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %122 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %121)
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @dev_warn(i32 %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %107
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @bnxt_re_unregister_ib(%struct.bnxt_re_dev*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @bnxt_re_cleanup_res(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_free_res(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_qplib_deinit_rcfw(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_net_stats_ctx_free(%struct.bnxt_re_dev*, i32) #1

declare dso_local i32 @bnxt_qplib_free_ctx(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @bnxt_qplib_disable_rcfw_channel(%struct.TYPE_9__*) #1

declare dso_local i32 @bnxt_qplib_get_ring_type(i32*) #1

declare dso_local i32 @bnxt_re_net_ring_free(%struct.bnxt_re_dev*, i32, i32) #1

declare dso_local i32 @bnxt_qplib_free_rcfw_channel(%struct.TYPE_9__*) #1

declare dso_local i32 @bnxt_re_free_msix(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_destroy_chip_ctx(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_unregister_netdev(%struct.bnxt_re_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
