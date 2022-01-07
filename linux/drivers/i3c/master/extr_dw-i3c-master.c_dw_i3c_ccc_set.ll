; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_ccc_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_ccc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i3c_master = type { i32 }
%struct.i3c_ccc_cmd = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dw_i3c_xfer = type { i32, %struct.dw_i3c_cmd*, i32 }
%struct.dw_i3c_cmd = type { i32, i32, i64, i32, i32 }

@I3C_CCC_DIRECT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMMAND_PORT_TRANSFER_ARG = common dso_local global i32 0, align 4
@COMMAND_PORT_CP = common dso_local global i32 0, align 4
@COMMAND_PORT_TOC = common dso_local global i32 0, align 4
@COMMAND_PORT_ROC = common dso_local global i32 0, align 4
@XFER_TIMEOUT = common dso_local global i32 0, align 4
@RESPONSE_ERROR_IBA_NACK = common dso_local global i64 0, align 8
@I3C_ERROR_M2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i3c_master*, %struct.i3c_ccc_cmd*)* @dw_i3c_ccc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i3c_ccc_set(%struct.dw_i3c_master* %0, %struct.i3c_ccc_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_i3c_master*, align 8
  %5 = alloca %struct.i3c_ccc_cmd*, align 8
  %6 = alloca %struct.dw_i3c_xfer*, align 8
  %7 = alloca %struct.dw_i3c_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dw_i3c_master* %0, %struct.dw_i3c_master** %4, align 8
  store %struct.i3c_ccc_cmd* %1, %struct.i3c_ccc_cmd** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @I3C_CCC_DIRECT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %18 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dw_i3c_master_get_addr_pos(%struct.dw_i3c_master* %17, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %119

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %32 = call %struct.dw_i3c_xfer* @dw_i3c_master_alloc_xfer(%struct.dw_i3c_master* %31, i32 1)
  store %struct.dw_i3c_xfer* %32, %struct.dw_i3c_xfer** %6, align 8
  %33 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %34 = icmp ne %struct.dw_i3c_xfer* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %119

38:                                               ; preds = %30
  %39 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %40 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %39, i32 0, i32 1
  %41 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %40, align 8
  store %struct.dw_i3c_cmd* %41, %struct.dw_i3c_cmd** %7, align 8
  %42 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %7, align 8
  %50 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @COMMAND_PORT_ARG_DATA_LEN(i32 %66)
  %68 = load i32, i32* @COMMAND_PORT_TRANSFER_ARG, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @COMMAND_PORT_CP, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @COMMAND_PORT_DEV_INDEX(i32 %73)
  %75 = or i32 %72, %74
  %76 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %77 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @COMMAND_PORT_CMD(i32 %78)
  %80 = or i32 %75, %79
  %81 = load i32, i32* @COMMAND_PORT_TOC, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @COMMAND_PORT_ROC, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %7, align 8
  %86 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %88 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %89 = call i32 @dw_i3c_master_enqueue_xfer(%struct.dw_i3c_master* %87, %struct.dw_i3c_xfer* %88)
  %90 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %91 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %90, i32 0, i32 2
  %92 = load i32, i32* @XFER_TIMEOUT, align 4
  %93 = call i32 @wait_for_completion_timeout(i32* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %38
  %96 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %97 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %98 = call i32 @dw_i3c_master_dequeue_xfer(%struct.dw_i3c_master* %96, %struct.dw_i3c_xfer* %97)
  br label %99

99:                                               ; preds = %95, %38
  %100 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %101 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %8, align 4
  %103 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %104 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %103, i32 0, i32 1
  %105 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %104, align 8
  %106 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %105, i64 0
  %107 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @RESPONSE_ERROR_IBA_NACK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %99
  %112 = load i32, i32* @I3C_ERROR_M2, align 4
  %113 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %114 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %99
  %116 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %117 = call i32 @dw_i3c_master_free_xfer(%struct.dw_i3c_xfer* %116)
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %35, %27
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @dw_i3c_master_get_addr_pos(%struct.dw_i3c_master*, i32) #1

declare dso_local %struct.dw_i3c_xfer* @dw_i3c_master_alloc_xfer(%struct.dw_i3c_master*, i32) #1

declare dso_local i32 @COMMAND_PORT_ARG_DATA_LEN(i32) #1

declare dso_local i32 @COMMAND_PORT_DEV_INDEX(i32) #1

declare dso_local i32 @COMMAND_PORT_CMD(i32) #1

declare dso_local i32 @dw_i3c_master_enqueue_xfer(%struct.dw_i3c_master*, %struct.dw_i3c_xfer*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dw_i3c_master_dequeue_xfer(%struct.dw_i3c_master*, %struct.dw_i3c_xfer*) #1

declare dso_local i32 @dw_i3c_master_free_xfer(%struct.dw_i3c_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
