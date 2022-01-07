; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-lmc.c_octeon_lmc_edac_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-lmc.c_octeon_lmc_edac_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%union.cvmx_lmcx_mem_cfg0 = type { i8* }
%union.cvmx_lmcx_fadr = type { i8*, [16 x i8] }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"DIMM %d rank %d bank %d row %d col %d\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @octeon_lmc_edac_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_lmc_edac_poll(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %union.cvmx_lmcx_mem_cfg0, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca %union.cvmx_lmcx_fadr, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CVMX_LMCX_MEM_CFG0(i32 %9)
  %11 = call i8* @cvmx_read_csr(i32 %10)
  %12 = bitcast %union.cvmx_lmcx_mem_cfg0* %3 to i8**
  store i8* %11, i8** %12, align 8
  %13 = bitcast %union.cvmx_lmcx_mem_cfg0* %3 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = bitcast %union.cvmx_lmcx_mem_cfg0* %3 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %17, %1
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %24 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CVMX_LMCX_FADR(i32 %25)
  %27 = call i8* @cvmx_read_csr(i32 %26)
  %28 = bitcast %union.cvmx_lmcx_fadr* %6 to i8**
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %30 = bitcast %union.cvmx_lmcx_fadr* %6 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = bitcast %union.cvmx_lmcx_fadr* %6 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %union.cvmx_lmcx_fadr* %6 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = bitcast %union.cvmx_lmcx_fadr* %6 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = bitcast %union.cvmx_lmcx_fadr* %6 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @snprintf(i8* %29, i32 64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %22, %17
  %47 = bitcast %union.cvmx_lmcx_mem_cfg0* %3 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %53 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %55 = call i32 @edac_mc_handle_error(i32 %52, %struct.mem_ctl_info* %53, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i8* %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %56 = bitcast %union.cvmx_lmcx_mem_cfg0* %3 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %46
  %59 = bitcast %union.cvmx_lmcx_mem_cfg0* %3 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %65 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %67 = call i32 @edac_mc_handle_error(i32 %64, %struct.mem_ctl_info* %65, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i8* %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %68 = bitcast %union.cvmx_lmcx_mem_cfg0* %3 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %75 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CVMX_LMCX_MEM_CFG0(i32 %76)
  %78 = bitcast %union.cvmx_lmcx_mem_cfg0* %3 to i8**
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @cvmx_write_csr(i32 %77, i8* %79)
  br label %81

81:                                               ; preds = %73, %70
  ret void
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_LMCX_MEM_CFG0(i32) #1

declare dso_local i32 @CVMX_LMCX_FADR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
