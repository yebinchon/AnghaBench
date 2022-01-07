; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f1x_map_sysaddr_to_csrow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f1x_map_sysaddr_to_csrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32 }
%struct.err_info = type { i32, i32, i32, i32 }

@ERR_CSROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, %struct.err_info*)* @f1x_map_sysaddr_to_csrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f1x_map_sysaddr_to_csrow(%struct.mem_ctl_info* %0, i32 %1, %struct.err_info* %2) #0 {
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
  %14 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.err_info*, %struct.err_info** %6, align 8
  %17 = getelementptr inbounds %struct.err_info, %struct.err_info* %16, i32 0, i32 1
  %18 = call i32 @f1x_translate_sysaddr_to_cs(%struct.amd64_pvt* %14, i32 %15, i32* %17)
  %19 = load %struct.err_info*, %struct.err_info** %6, align 8
  %20 = getelementptr inbounds %struct.err_info, %struct.err_info* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.err_info*, %struct.err_info** %6, align 8
  %22 = getelementptr inbounds %struct.err_info, %struct.err_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @ERR_CSROW, align 4
  %27 = load %struct.err_info*, %struct.err_info** %6, align 8
  %28 = getelementptr inbounds %struct.err_info, %struct.err_info* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %41

29:                                               ; preds = %3
  %30 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %31 = call i64 @dct_ganging_enabled(%struct.amd64_pvt* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %35 = load %struct.err_info*, %struct.err_info** %6, align 8
  %36 = getelementptr inbounds %struct.err_info, %struct.err_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @get_channel_from_ecc_syndrome(%struct.mem_ctl_info* %34, i32 %37)
  %39 = load %struct.err_info*, %struct.err_info** %6, align 8
  %40 = getelementptr inbounds %struct.err_info, %struct.err_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %25, %33, %29
  ret void
}

declare dso_local i32 @error_address_to_page_and_offset(i32, %struct.err_info*) #1

declare dso_local i32 @f1x_translate_sysaddr_to_cs(%struct.amd64_pvt*, i32, i32*) #1

declare dso_local i64 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @get_channel_from_ecc_syndrome(%struct.mem_ctl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
