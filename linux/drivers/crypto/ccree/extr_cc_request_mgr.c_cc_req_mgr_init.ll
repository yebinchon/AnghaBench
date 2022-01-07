; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_req_mgr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_cc_req_mgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.cc_req_mgr_handle* }
%struct.cc_req_mgr_handle = type { i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Initializing completion tasklet\0A\00", align 1
@comp_handler = common dso_local global i32 0, align 4
@DSCRPTR_QUEUE_SRAM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"hw_queue_size=0x%08X\0A\00", align 1
@MIN_HW_QUEUE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"Invalid HW queue size = %u (Min. required is %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Not enough memory to allocate DMA (%zu) dropped buffer\0A\00", align 1
@NS_BIT = common dso_local global i32 0, align 4
@BYPASS = common dso_local global i32 0, align 4
@comp_work_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_req_mgr_init(%struct.cc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca %struct.cc_req_mgr_handle*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  %7 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %8 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %7)
  store %struct.device* %8, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cc_req_mgr_handle* @kzalloc(i32 64, i32 %9)
  store %struct.cc_req_mgr_handle* %10, %struct.cc_req_mgr_handle** %4, align 8
  %11 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %12 = icmp ne %struct.cc_req_mgr_handle* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %108

16:                                               ; preds = %1
  %17 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %18 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %19 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %18, i32 0, i32 0
  store %struct.cc_req_mgr_handle* %17, %struct.cc_req_mgr_handle** %19, align 8
  %20 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %21 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %20, i32 0, i32 11
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %24 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %23, i32 0, i32 10
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %27 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %26, i32 0, i32 9
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %32 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %31, i32 0, i32 6
  %33 = load i32, i32* @comp_handler, align 4
  %34 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %35 = ptrtoint %struct.cc_drvdata* %34 to i64
  %36 = call i32 @tasklet_init(i32* %32, i32 %33, i64 %35)
  %37 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %38 = load i32, i32* @DSCRPTR_QUEUE_SRAM_SIZE, align 4
  %39 = call i32 @CC_REG(i32 %38)
  %40 = call i64 @cc_ioread(%struct.cc_drvdata* %37, i32 %39)
  %41 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %42 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %45 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %49 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MIN_HW_QUEUE_SIZE, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %16
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %56 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MIN_HW_QUEUE_SIZE, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %108

62:                                               ; preds = %16
  %63 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %64 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %67 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %69 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %68, i32 0, i32 5
  store i64 0, i64* %69, align 8
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %72 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %71, i32 0, i32 3
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i32 @dma_alloc_coherent(%struct.device* %70, i32 4, i32* %72, i32 %73)
  %75 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %76 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %78 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %62
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 4)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %108

86:                                               ; preds = %62
  %87 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %88 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %87, i32 0, i32 2
  %89 = call i32 @hw_desc_init(i32* %88)
  %90 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %91 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %90, i32 0, i32 2
  %92 = call i32 @set_din_const(i32* %91, i32 0, i32 4)
  %93 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %94 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %93, i32 0, i32 2
  %95 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %96 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NS_BIT, align 4
  %99 = call i32 @set_dout_dlli(i32* %94, i32 %97, i32 4, i32 %98, i32 1)
  %100 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %101 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %100, i32 0, i32 2
  %102 = load i32, i32* @BYPASS, align 4
  %103 = call i32 @set_flow_mode(i32* %101, i32 %102)
  %104 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %105 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %106 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %105, i32 0, i32 2
  %107 = call i32 @set_queue_last_ind(%struct.cc_drvdata* %104, i32* %106)
  store i32 0, i32* %2, align 4
  br label %112

108:                                              ; preds = %81, %53, %13
  %109 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %110 = call i32 @cc_req_mgr_fini(%struct.cc_drvdata* %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %86
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local %struct.cc_req_mgr_handle* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i64 @cc_ioread(%struct.cc_drvdata*, i32) #1

declare dso_local i32 @CC_REG(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @hw_desc_init(i32*) #1

declare dso_local i32 @set_din_const(i32*, i32, i32) #1

declare dso_local i32 @set_dout_dlli(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @set_flow_mode(i32*, i32) #1

declare dso_local i32 @set_queue_last_ind(%struct.cc_drvdata*, i32*) #1

declare dso_local i32 @cc_req_mgr_fini(%struct.cc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
