; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_send_ccc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_send_ccc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.i3c_ccc_cmd = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cdns_i3c_master = type { i32 }
%struct.cdns_i3c_xfer = type { i32, %struct.cdns_i3c_cmd*, i32 }
%struct.cdns_i3c_cmd = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CMD0_FIFO_IS_CCC = common dso_local global i32 0, align 4
@I3C_CCC_DIRECT = common dso_local global i32 0, align 4
@CMD0_FIFO_RNW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)* @cdns_i3c_master_send_ccc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i3c_master_send_ccc_cmd(%struct.i3c_master_controller* %0, %struct.i3c_ccc_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca %struct.i3c_ccc_cmd*, align 8
  %6 = alloca %struct.cdns_i3c_master*, align 8
  %7 = alloca %struct.cdns_i3c_xfer*, align 8
  %8 = alloca %struct.cdns_i3c_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %4, align 8
  store %struct.i3c_ccc_cmd* %1, %struct.i3c_ccc_cmd** %5, align 8
  %10 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %11 = call %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller* %10)
  store %struct.cdns_i3c_master* %11, %struct.cdns_i3c_master** %6, align 8
  %12 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %6, align 8
  %13 = call %struct.cdns_i3c_xfer* @cdns_i3c_master_alloc_xfer(%struct.cdns_i3c_master* %12, i32 1)
  store %struct.cdns_i3c_xfer* %13, %struct.cdns_i3c_xfer** %7, align 8
  %14 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %7, align 8
  %15 = icmp ne %struct.cdns_i3c_xfer* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %134

19:                                               ; preds = %2
  %20 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %7, align 8
  %21 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %20, i32 0, i32 1
  %22 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %21, align 8
  store %struct.cdns_i3c_cmd* %22, %struct.cdns_i3c_cmd** %8, align 8
  %23 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @CMD1_FIFO_CCC(i32 %25)
  %27 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @CMD0_FIFO_IS_CCC, align 4
  %30 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @CMD0_FIFO_PL_LEN(i32 %36)
  %38 = or i32 %29, %37
  %39 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %8, align 8
  %40 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I3C_CCC_DIRECT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %19
  %48 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CMD0_FIFO_DEV_ADDR(i32 %53)
  %55 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %47, %19
  %60 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = load i32, i32* @CMD0_FIFO_RNW, align 4
  %66 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %8, align 8
  %67 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %8, align 8
  %78 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %8, align 8
  %87 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  br label %107

88:                                               ; preds = %59
  %89 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %90 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %8, align 8
  %97 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %99 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %8, align 8
  %106 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %88, %64
  %108 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %6, align 8
  %109 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %7, align 8
  %110 = call i32 @cdns_i3c_master_queue_xfer(%struct.cdns_i3c_master* %108, %struct.cdns_i3c_xfer* %109)
  %111 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %7, align 8
  %112 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %111, i32 0, i32 2
  %113 = call i32 @msecs_to_jiffies(i32 1000)
  %114 = call i32 @wait_for_completion_timeout(i32* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %107
  %117 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %6, align 8
  %118 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %7, align 8
  %119 = call i32 @cdns_i3c_master_unqueue_xfer(%struct.cdns_i3c_master* %117, %struct.cdns_i3c_xfer* %118)
  br label %120

120:                                              ; preds = %116, %107
  %121 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %7, align 8
  %122 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %9, align 4
  %124 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %7, align 8
  %125 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %124, i32 0, i32 1
  %126 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %125, align 8
  %127 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %126, i64 0
  %128 = call i32 @cdns_i3c_cmd_get_err(%struct.cdns_i3c_cmd* %127)
  %129 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %130 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %7, align 8
  %132 = call i32 @cdns_i3c_master_free_xfer(%struct.cdns_i3c_xfer* %131)
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %120, %16
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local %struct.cdns_i3c_xfer* @cdns_i3c_master_alloc_xfer(%struct.cdns_i3c_master*, i32) #1

declare dso_local i32 @CMD1_FIFO_CCC(i32) #1

declare dso_local i32 @CMD0_FIFO_PL_LEN(i32) #1

declare dso_local i32 @CMD0_FIFO_DEV_ADDR(i32) #1

declare dso_local i32 @cdns_i3c_master_queue_xfer(%struct.cdns_i3c_master*, %struct.cdns_i3c_xfer*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cdns_i3c_master_unqueue_xfer(%struct.cdns_i3c_master*, %struct.cdns_i3c_xfer*) #1

declare dso_local i32 @cdns_i3c_cmd_get_err(%struct.cdns_i3c_cmd*) #1

declare dso_local i32 @cdns_i3c_master_free_xfer(%struct.cdns_i3c_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
