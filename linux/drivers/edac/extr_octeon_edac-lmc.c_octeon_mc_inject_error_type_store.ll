; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-lmc.c_octeon_mc_inject_error_type_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-lmc.c_octeon_mc_inject_error_type_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mem_ctl_info = type { %struct.octeon_lmc_pvt* }
%struct.octeon_lmc_pvt = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @octeon_mc_inject_error_type_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @octeon_mc_inject_error_type_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mem_ctl_info*, align 8
  %10 = alloca %struct.octeon_lmc_pvt*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.mem_ctl_info* @to_mci(%struct.device* %11)
  store %struct.mem_ctl_info* %12, %struct.mem_ctl_info** %9, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %14, align 8
  store %struct.octeon_lmc_pvt* %15, %struct.octeon_lmc_pvt** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %10, align 8
  %21 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %30

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load %struct.octeon_lmc_pvt*, %struct.octeon_lmc_pvt** %10, align 8
  %28 = getelementptr inbounds %struct.octeon_lmc_pvt, %struct.octeon_lmc_pvt* %27, i32 0, i32 0
  store i32 2, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i64, i64* %8, align 8
  ret i64 %31
}

declare dso_local %struct.mem_ctl_info* @to_mci(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
