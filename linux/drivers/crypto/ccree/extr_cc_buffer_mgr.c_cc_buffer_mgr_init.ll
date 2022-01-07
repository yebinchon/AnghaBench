; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_buffer_mgr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_buffer_mgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.buff_mgr_handle* }
%struct.buff_mgr_handle = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"dx_single_mlli_tables\00", align 1
@MAX_NUM_OF_TOTAL_MLLI_ENTRIES = common dso_local global i32 0, align 4
@LLI_ENTRY_BYTE_SIZE = common dso_local global i32 0, align 4
@MLLI_TABLE_MIN_ALIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_buffer_mgr_init(%struct.cc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca %struct.buff_mgr_handle*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  %6 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %7 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %6)
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.buff_mgr_handle* @kmalloc(i32 4, i32 %8)
  store %struct.buff_mgr_handle* %9, %struct.buff_mgr_handle** %4, align 8
  %10 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %4, align 8
  %11 = icmp ne %struct.buff_mgr_handle* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %4, align 8
  %17 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %18 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %17, i32 0, i32 0
  store %struct.buff_mgr_handle* %16, %struct.buff_mgr_handle** %18, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* @MAX_NUM_OF_TOTAL_MLLI_ENTRIES, align 4
  %21 = load i32, i32* @LLI_ENTRY_BYTE_SIZE, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* @MLLI_TABLE_MIN_ALIGNMENT, align 4
  %24 = call i32 @dma_pool_create(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.device* %19, i32 %22, i32 %23, i32 0)
  %25 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %4, align 8
  %26 = getelementptr inbounds %struct.buff_mgr_handle, %struct.buff_mgr_handle* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %4, align 8
  %28 = getelementptr inbounds %struct.buff_mgr_handle, %struct.buff_mgr_handle* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %15
  br label %33

32:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %38

33:                                               ; preds = %31
  %34 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %35 = call i32 @cc_buffer_mgr_fini(%struct.cc_drvdata* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %32, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local %struct.buff_mgr_handle* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_pool_create(i8*, %struct.device*, i32, i32, i32) #1

declare dso_local i32 @cc_buffer_mgr_fini(%struct.cc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
