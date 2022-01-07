; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_comp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_request_mgr.c_comp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32, i32, %struct.cc_req_mgr_handle* }
%struct.cc_req_mgr_handle = type { i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Completion handler called!\0A\00", align 1
@HOST_ICR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"AXI completion after updated: %d\0A\00", align 1
@HOST_IRR = common dso_local global i32 0, align 4
@HOST_IMR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Comp. handler done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @comp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comp_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca %struct.cc_req_mgr_handle*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.cc_drvdata*
  store %struct.cc_drvdata* %8, %struct.cc_drvdata** %3, align 8
  %9 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %10 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %9, i32 0, i32 2
  %11 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %10, align 8
  store %struct.cc_req_mgr_handle* %11, %struct.cc_req_mgr_handle** %4, align 8
  %12 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %13 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %12)
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %17 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %20 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %24 = load i32, i32* @HOST_ICR, align 4
  %25 = call i32 @CC_REG(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @cc_iowrite(%struct.cc_drvdata* %23, i32 %25, i32 %26)
  %28 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %29 = call i64 @cc_axi_comp_count(%struct.cc_drvdata* %28)
  %30 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %31 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %36 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %74, %1
  %40 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %41 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %69, %44
  %46 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %47 = load i32, i32* @HOST_IRR, align 4
  %48 = call i32 @CC_REG(i32 %47)
  %49 = call i32 @cc_ioread(%struct.cc_drvdata* %46, i32 %48)
  %50 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %51 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %55 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %58 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %56, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %62 = call i32 @proc_completions(%struct.cc_drvdata* %61)
  %63 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %64 = call i64 @cc_axi_comp_count(%struct.cc_drvdata* %63)
  %65 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %66 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %45
  %70 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %71 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %45, label %74

74:                                               ; preds = %69
  %75 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %76 = load i32, i32* @HOST_ICR, align 4
  %77 = call i32 @CC_REG(i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @cc_iowrite(%struct.cc_drvdata* %75, i32 %77, i32 %78)
  %80 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %81 = call i64 @cc_axi_comp_count(%struct.cc_drvdata* %80)
  %82 = load %struct.cc_req_mgr_handle*, %struct.cc_req_mgr_handle** %4, align 8
  %83 = getelementptr inbounds %struct.cc_req_mgr_handle, %struct.cc_req_mgr_handle* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  br label %39

86:                                               ; preds = %39
  %87 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %88 = load i32, i32* @HOST_IMR, align 4
  %89 = call i32 @CC_REG(i32 %88)
  %90 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %91 = load i32, i32* @HOST_IMR, align 4
  %92 = call i32 @CC_REG(i32 %91)
  %93 = call i32 @cc_ioread(%struct.cc_drvdata* %90, i32 %92)
  %94 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %95 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %93, %97
  %99 = call i32 @cc_iowrite(%struct.cc_drvdata* %87, i32 %89, i32 %98)
  %100 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %101 = call i32 @cc_proc_backlog(%struct.cc_drvdata* %100)
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @cc_iowrite(%struct.cc_drvdata*, i32, i32) #1

declare dso_local i32 @CC_REG(i32) #1

declare dso_local i64 @cc_axi_comp_count(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_ioread(%struct.cc_drvdata*, i32) #1

declare dso_local i32 @proc_completions(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_proc_backlog(%struct.cc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
