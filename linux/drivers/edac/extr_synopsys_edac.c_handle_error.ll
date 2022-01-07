; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_synopsys_edac.c_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_synopsys_edac.c_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.synps_edac_priv* }
%struct.synps_edac_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.synps_ecc_status = type { i64, %struct.ecc_error_info, i64, %struct.ecc_error_info }
%struct.ecc_error_info = type { i32, i32, i32, i32, i32, i32, i32 }

@SYNPS_EDAC_MSG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"DDR ECC error type:%s Row %d Bank %d Col %d \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"CE\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Bit Position: %d Data: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"BankGroup Number %d Block Number %d \00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"DDR ECC error type :%s Row %d Bank %d Col %d \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"UE\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"BankGroup Number %d Block Number %d\00", align 1
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.synps_ecc_status*)* @handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_error(%struct.mem_ctl_info* %0, %struct.synps_ecc_status* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.synps_ecc_status*, align 8
  %5 = alloca %struct.synps_edac_priv*, align 8
  %6 = alloca %struct.ecc_error_info*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.synps_ecc_status* %1, %struct.synps_ecc_status** %4, align 8
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %8, align 8
  store %struct.synps_edac_priv* %9, %struct.synps_edac_priv** %5, align 8
  %10 = load %struct.synps_ecc_status*, %struct.synps_ecc_status** %4, align 8
  %11 = getelementptr inbounds %struct.synps_ecc_status, %struct.synps_ecc_status* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %96

14:                                               ; preds = %2
  %15 = load %struct.synps_ecc_status*, %struct.synps_ecc_status** %4, align 8
  %16 = getelementptr inbounds %struct.synps_ecc_status, %struct.synps_ecc_status* %15, i32 0, i32 3
  store %struct.ecc_error_info* %16, %struct.ecc_error_info** %6, align 8
  %17 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %18 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %14
  %24 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %25 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SYNPS_EDAC_MSG_SIZE, align 4
  %28 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %29 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %32 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %35 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %26, i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33, i32 %36)
  %38 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %39 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SYNPS_EDAC_MSG_SIZE, align 4
  %42 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %43 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %46 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %40, i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47)
  br label %86

49:                                               ; preds = %14
  %50 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %51 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SYNPS_EDAC_MSG_SIZE, align 4
  %54 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %55 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %58 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %61 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %52, i32 %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59, i32 %62)
  %64 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %65 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SYNPS_EDAC_MSG_SIZE, align 4
  %68 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %69 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %72 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %66, i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %76 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SYNPS_EDAC_MSG_SIZE, align 4
  %79 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %80 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %83 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %77, i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %49, %23
  %87 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %88 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %89 = load %struct.synps_ecc_status*, %struct.synps_ecc_status** %4, align 8
  %90 = getelementptr inbounds %struct.synps_ecc_status, %struct.synps_ecc_status* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %93 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @edac_mc_handle_error(i32 %87, %struct.mem_ctl_info* %88, i64 %91, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 %94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %86, %2
  %97 = load %struct.synps_ecc_status*, %struct.synps_ecc_status** %4, align 8
  %98 = getelementptr inbounds %struct.synps_ecc_status, %struct.synps_ecc_status* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %161

101:                                              ; preds = %96
  %102 = load %struct.synps_ecc_status*, %struct.synps_ecc_status** %4, align 8
  %103 = getelementptr inbounds %struct.synps_ecc_status, %struct.synps_ecc_status* %102, i32 0, i32 1
  store %struct.ecc_error_info* %103, %struct.ecc_error_info** %6, align 8
  %104 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %105 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %101
  %111 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %112 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SYNPS_EDAC_MSG_SIZE, align 4
  %115 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %116 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %119 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %122 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %113, i32 %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %117, i32 %120, i32 %123)
  br label %151

125:                                              ; preds = %101
  %126 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %127 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SYNPS_EDAC_MSG_SIZE, align 4
  %130 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %131 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %134 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %137 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %128, i32 %129, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %132, i32 %135, i32 %138)
  %140 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %141 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SYNPS_EDAC_MSG_SIZE, align 4
  %144 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %145 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ecc_error_info*, %struct.ecc_error_info** %6, align 8
  %148 = getelementptr inbounds %struct.ecc_error_info, %struct.ecc_error_info* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %142, i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %125, %110
  %152 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %153 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %154 = load %struct.synps_ecc_status*, %struct.synps_ecc_status** %4, align 8
  %155 = getelementptr inbounds %struct.synps_ecc_status, %struct.synps_ecc_status* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %5, align 8
  %158 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @edac_mc_handle_error(i32 %152, %struct.mem_ctl_info* %153, i64 %156, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 %159, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %161

161:                                              ; preds = %151, %96
  %162 = load %struct.synps_ecc_status*, %struct.synps_ecc_status** %4, align 8
  %163 = call i32 @memset(%struct.synps_ecc_status* %162, i32 0, i32 80)
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i64, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.synps_ecc_status*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
