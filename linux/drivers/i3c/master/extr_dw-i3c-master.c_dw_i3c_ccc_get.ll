; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_ccc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_ccc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i3c_master = type { i32 }
%struct.i3c_ccc_cmd = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dw_i3c_xfer = type { i32, %struct.dw_i3c_cmd*, i32 }
%struct.dw_i3c_cmd = type { i32, i32, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@COMMAND_PORT_TRANSFER_ARG = common dso_local global i32 0, align 4
@COMMAND_PORT_READ_TRANSFER = common dso_local global i32 0, align 4
@COMMAND_PORT_CP = common dso_local global i32 0, align 4
@COMMAND_PORT_TOC = common dso_local global i32 0, align 4
@COMMAND_PORT_ROC = common dso_local global i32 0, align 4
@XFER_TIMEOUT = common dso_local global i32 0, align 4
@RESPONSE_ERROR_IBA_NACK = common dso_local global i64 0, align 8
@I3C_ERROR_M2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i3c_master*, %struct.i3c_ccc_cmd*)* @dw_i3c_ccc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i3c_ccc_get(%struct.dw_i3c_master* %0, %struct.i3c_ccc_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_i3c_master*, align 8
  %5 = alloca %struct.i3c_ccc_cmd*, align 8
  %6 = alloca %struct.dw_i3c_xfer*, align 8
  %7 = alloca %struct.dw_i3c_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dw_i3c_master* %0, %struct.dw_i3c_master** %4, align 8
  store %struct.i3c_ccc_cmd* %1, %struct.i3c_ccc_cmd** %5, align 8
  %10 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %11 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dw_i3c_master_get_addr_pos(%struct.dw_i3c_master* %10, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %113

22:                                               ; preds = %2
  %23 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %24 = call %struct.dw_i3c_xfer* @dw_i3c_master_alloc_xfer(%struct.dw_i3c_master* %23, i32 1)
  store %struct.dw_i3c_xfer* %24, %struct.dw_i3c_xfer** %6, align 8
  %25 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %26 = icmp ne %struct.dw_i3c_xfer* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %113

30:                                               ; preds = %22
  %31 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %32 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %31, i32 0, i32 1
  %33 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %32, align 8
  store %struct.dw_i3c_cmd* %33, %struct.dw_i3c_cmd** %7, align 8
  %34 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @COMMAND_PORT_ARG_DATA_LEN(i32 %58)
  %60 = load i32, i32* @COMMAND_PORT_TRANSFER_ARG, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @COMMAND_PORT_READ_TRANSFER, align 4
  %65 = load i32, i32* @COMMAND_PORT_CP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @COMMAND_PORT_DEV_INDEX(i32 %67)
  %69 = or i32 %66, %68
  %70 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @COMMAND_PORT_CMD(i32 %72)
  %74 = or i32 %69, %73
  %75 = load i32, i32* @COMMAND_PORT_TOC, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @COMMAND_PORT_ROC, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %82 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %83 = call i32 @dw_i3c_master_enqueue_xfer(%struct.dw_i3c_master* %81, %struct.dw_i3c_xfer* %82)
  %84 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %85 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %84, i32 0, i32 2
  %86 = load i32, i32* @XFER_TIMEOUT, align 4
  %87 = call i32 @wait_for_completion_timeout(i32* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %30
  %90 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %91 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %92 = call i32 @dw_i3c_master_dequeue_xfer(%struct.dw_i3c_master* %90, %struct.dw_i3c_xfer* %91)
  br label %93

93:                                               ; preds = %89, %30
  %94 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %95 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %8, align 4
  %97 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %98 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %97, i32 0, i32 1
  %99 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %98, align 8
  %100 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %99, i64 0
  %101 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @RESPONSE_ERROR_IBA_NACK, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = load i32, i32* @I3C_ERROR_M2, align 4
  %107 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %108 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %93
  %110 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %6, align 8
  %111 = call i32 @dw_i3c_master_free_xfer(%struct.dw_i3c_xfer* %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %27, %20
  %114 = load i32, i32* %3, align 4
  ret i32 %114
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
