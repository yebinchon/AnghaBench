; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_k8_map_sysaddr_to_csrow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_k8_map_sysaddr_to_csrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32 }
%struct.err_info = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"failed to map error addr 0x%lx to a node\0A\00", align 1
@ERR_NODE = common dso_local global i32 0, align 4
@ERR_CSROW = common dso_local global i32 0, align 4
@NBCFG_CHIPKILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"unknown syndrome 0x%04x - possible error reporting race\0A\00", align 1
@ERR_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, %struct.err_info*)* @k8_map_sysaddr_to_csrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k8_map_sysaddr_to_csrow(%struct.mem_ctl_info* %0, i32 %1, %struct.err_info* %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.err_info*, align 8
  %7 = alloca %struct.amd64_pvt*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.err_info* %2, %struct.err_info** %6, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.amd64_pvt*, %struct.amd64_pvt** %9, align 8
  store %struct.amd64_pvt* %10, %struct.amd64_pvt** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.err_info*, %struct.err_info** %6, align 8
  %13 = call i32 @error_address_to_page_and_offset(i32 %11, %struct.err_info* %12)
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @find_mc_by_sys_addr(%struct.mem_ctl_info* %14, i32 %15)
  %17 = load %struct.err_info*, %struct.err_info** %6, align 8
  %18 = getelementptr inbounds %struct.err_info, %struct.err_info* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.err_info*, %struct.err_info** %6, align 8
  %20 = getelementptr inbounds %struct.err_info, %struct.err_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = call i32 @amd64_mc_err(%struct.mem_ctl_info* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @ERR_NODE, align 4
  %29 = load %struct.err_info*, %struct.err_info** %6, align 8
  %30 = getelementptr inbounds %struct.err_info, %struct.err_info* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %86

31:                                               ; preds = %3
  %32 = load %struct.err_info*, %struct.err_info** %6, align 8
  %33 = getelementptr inbounds %struct.err_info, %struct.err_info* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @sys_addr_to_csrow(i32 %34, i32 %35)
  %37 = load %struct.err_info*, %struct.err_info** %6, align 8
  %38 = getelementptr inbounds %struct.err_info, %struct.err_info* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.err_info*, %struct.err_info** %6, align 8
  %40 = getelementptr inbounds %struct.err_info, %struct.err_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @ERR_CSROW, align 4
  %45 = load %struct.err_info*, %struct.err_info** %6, align 8
  %46 = getelementptr inbounds %struct.err_info, %struct.err_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %86

47:                                               ; preds = %31
  %48 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %49 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NBCFG_CHIPKILL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %47
  %55 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %56 = load %struct.err_info*, %struct.err_info** %6, align 8
  %57 = getelementptr inbounds %struct.err_info, %struct.err_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @get_channel_from_ecc_syndrome(%struct.mem_ctl_info* %55, i32 %58)
  %60 = load %struct.err_info*, %struct.err_info** %6, align 8
  %61 = getelementptr inbounds %struct.err_info, %struct.err_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.err_info*, %struct.err_info** %6, align 8
  %63 = getelementptr inbounds %struct.err_info, %struct.err_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %54
  %67 = load %struct.err_info*, %struct.err_info** %6, align 8
  %68 = getelementptr inbounds %struct.err_info, %struct.err_info* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.err_info*, %struct.err_info** %6, align 8
  %71 = getelementptr inbounds %struct.err_info, %struct.err_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @amd64_mc_warn(i32 %69, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @ERR_CHANNEL, align 4
  %75 = load %struct.err_info*, %struct.err_info** %6, align 8
  %76 = getelementptr inbounds %struct.err_info, %struct.err_info* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %86

77:                                               ; preds = %54
  br label %86

78:                                               ; preds = %47
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @BIT(i32 3)
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load %struct.err_info*, %struct.err_info** %6, align 8
  %85 = getelementptr inbounds %struct.err_info, %struct.err_info* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %23, %43, %66, %78, %77
  ret void
}

declare dso_local i32 @error_address_to_page_and_offset(i32, %struct.err_info*) #1

declare dso_local i32 @find_mc_by_sys_addr(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @amd64_mc_err(%struct.mem_ctl_info*, i8*, i64) #1

declare dso_local i64 @sys_addr_to_csrow(i32, i32) #1

declare dso_local i32 @get_channel_from_ecc_syndrome(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @amd64_mc_warn(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
