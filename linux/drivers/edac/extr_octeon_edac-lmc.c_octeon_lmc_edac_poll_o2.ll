; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-lmc.c_octeon_lmc_edac_poll_o2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-lmc.c_octeon_lmc_edac_poll_o2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.octeon_lmc_pvt* }
%struct.octeon_lmc_pvt = type { i32, i32, i32, i32, i32, i32, i64 }
%union.cvmx_lmcx_int = type { i8* }
%union.cvmx_lmcx_fadr = type { i8*, [16 x i8] }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"DIMM %d rank %d bank %d row %d col %d\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @octeon_lmc_edac_poll_o2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_lmc_edac_poll_o2(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.octeon_lmc_pvt*, align 8
  %4 = alloca %union.cvmx_lmcx_int, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca %union.cvmx_lmcx_fadr, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 1
  %10 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %9, align 8
  store %struct.octeon_lmc_pvt* %10, %struct.octeon_lmc_pvt** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %17 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @CVMX_LMCX_INT(i32 %18)
  %20 = call i8* @cvmx_read_csr(i32 %19)
  %21 = bitcast %union.cvmx_lmcx_int* %4 to i8**
  store i8* %20, i8** %21, align 8
  br label %40

22:                                               ; preds = %1
  %23 = bitcast %union.cvmx_lmcx_int* %4 to i8**
  store i8* null, i8** %23, align 8
  %24 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %25 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = bitcast %union.cvmx_lmcx_int* %4 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %33 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = bitcast %union.cvmx_lmcx_int* %4 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %15
  %41 = bitcast %union.cvmx_lmcx_int* %4 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = bitcast %union.cvmx_lmcx_int* %4 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %110

50:                                               ; preds = %45, %40
  %51 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %52 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %61 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @CVMX_LMCX_FADR(i32 %62)
  %64 = call i8* @cvmx_read_csr(i32 %63)
  %65 = bitcast %union.cvmx_lmcx_fadr* %7 to i8**
  store i8* %64, i8** %65, align 8
  br label %92

66:                                               ; preds = %50
  %67 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %68 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = bitcast %union.cvmx_lmcx_fadr* %7 to %struct.TYPE_3__*
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %73 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = bitcast %union.cvmx_lmcx_fadr* %7 to %struct.TYPE_3__*
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %78 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = bitcast %union.cvmx_lmcx_fadr* %7 to %struct.TYPE_3__*
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %83 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = bitcast %union.cvmx_lmcx_fadr* %7 to %struct.TYPE_3__*
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %88 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = bitcast %union.cvmx_lmcx_fadr* %7 to %struct.TYPE_3__*
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %66, %59
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %94 = bitcast %union.cvmx_lmcx_fadr* %7 to %struct.TYPE_3__*
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = bitcast %union.cvmx_lmcx_fadr* %7 to %struct.TYPE_3__*
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = bitcast %union.cvmx_lmcx_fadr* %7 to %struct.TYPE_3__*
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = bitcast %union.cvmx_lmcx_fadr* %7 to %struct.TYPE_3__*
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = bitcast %union.cvmx_lmcx_fadr* %7 to %struct.TYPE_3__*
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @snprintf(i8* %93, i32 64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %99, i32 %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %92, %45
  %111 = bitcast %union.cvmx_lmcx_int* %4 to %struct.TYPE_4__*
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %117 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %119 = call i32 @edac_mc_handle_error(i32 %116, %struct.mem_ctl_info* %117, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i8* %118, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %120 = bitcast %union.cvmx_lmcx_int* %4 to %struct.TYPE_4__*
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 -1, i32* %121, align 8
  store i32 1, i32* %5, align 4
  br label %122

122:                                              ; preds = %115, %110
  %123 = bitcast %union.cvmx_lmcx_int* %4 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %129 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %131 = call i32 @edac_mc_handle_error(i32 %128, %struct.mem_ctl_info* %129, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i8* %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %132 = bitcast %union.cvmx_lmcx_int* %4 to %struct.TYPE_4__*
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i32 -1, i32* %133, align 4
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %127, %122
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %134
  %138 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %139 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i64 @likely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %137
  %147 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %148 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @CVMX_LMCX_INT(i32 %149)
  %151 = bitcast %union.cvmx_lmcx_int* %4 to i8**
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @cvmx_write_csr(i32 %150, i8* %152)
  br label %157

154:                                              ; preds = %137
  %155 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %3, align 8
  %156 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %155, i32 0, i32 6
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %154, %146
  br label %158

158:                                              ; preds = %157, %134
  ret void
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_LMCX_INT(i32) #1

declare dso_local i64 @likely(i32) #1

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
