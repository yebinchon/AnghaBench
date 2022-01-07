; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_decode_umc_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_decode_umc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32, i32, i32 }
%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32 }
%struct.err_info = type { i32, i32, i32, i32 }

@MCI_STATUS_DEFERRED = common dso_local global i32 0, align 4
@MCI_STATUS_SYNDV = common dso_local global i32 0, align 4
@ERR_SYND = common dso_local global i32 0, align 4
@ERR_CHANNEL = common dso_local global i32 0, align 4
@ERR_NORM_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mce*)* @decode_umc_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_umc_error(i32 %0, %struct.mce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mce*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca %struct.amd64_pvt*, align 8
  %8 = alloca %struct.err_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.mce* %1, %struct.mce** %4, align 8
  %11 = load %struct.mce*, %struct.mce** %4, align 8
  %12 = getelementptr inbounds %struct.mce, %struct.mce* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 45
  %15 = and i32 %14, 3
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.mem_ctl_info* @edac_mc_find(i32 %16)
  store %struct.mem_ctl_info* %17, %struct.mem_ctl_info** %6, align 8
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %19 = icmp ne %struct.mem_ctl_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %97

21:                                               ; preds = %2
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %23 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %22, i32 0, i32 0
  %24 = load %struct.amd64_pvt*, %struct.amd64_pvt** %23, align 8
  store %struct.amd64_pvt* %24, %struct.amd64_pvt** %7, align 8
  %25 = call i32 @memset(%struct.err_info* %8, i32 0, i32 16)
  %26 = load %struct.mce*, %struct.mce** %4, align 8
  %27 = getelementptr inbounds %struct.mce, %struct.mce* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MCI_STATUS_DEFERRED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 3, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.mce*, %struct.mce** %4, align 8
  %35 = call i32 @find_umc_channel(%struct.mce* %34)
  %36 = getelementptr inbounds %struct.err_info, %struct.err_info* %8, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.mce*, %struct.mce** %4, align 8
  %38 = getelementptr inbounds %struct.mce, %struct.mce* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MCI_STATUS_SYNDV, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @ERR_SYND, align 4
  %45 = getelementptr inbounds %struct.err_info, %struct.err_info* %8, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  br label %93

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.mce*, %struct.mce** %4, align 8
  %51 = getelementptr inbounds %struct.mce, %struct.mce* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 18
  %54 = and i32 %53, 63
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.mce*, %struct.mce** %4, align 8
  %59 = getelementptr inbounds %struct.mce, %struct.mce* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 32
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @GENMASK(i32 %63, i32 0)
  %65 = and i32 %61, %64
  %66 = getelementptr inbounds %struct.err_info, %struct.err_info* %8, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  br label %70

67:                                               ; preds = %49
  %68 = load i32, i32* @ERR_CHANNEL, align 4
  %69 = getelementptr inbounds %struct.err_info, %struct.err_info* %8, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %57
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.mce*, %struct.mce** %4, align 8
  %73 = getelementptr inbounds %struct.mce, %struct.mce* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 7
  %76 = getelementptr inbounds %struct.err_info, %struct.err_info* %8, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.mce*, %struct.mce** %4, align 8
  %78 = getelementptr inbounds %struct.mce, %struct.mce* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %81 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.err_info, %struct.err_info* %8, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @umc_normaddr_to_sysaddr(i32 %79, i32 %82, i32 %84, i32* %9)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %71
  %88 = load i32, i32* @ERR_NORM_ADDR, align 4
  %89 = getelementptr inbounds %struct.err_info, %struct.err_info* %8, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  br label %93

90:                                               ; preds = %71
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @error_address_to_page_and_offset(i32 %91, %struct.err_info* %8)
  br label %93

93:                                               ; preds = %90, %87, %43
  %94 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @__log_ecc_error(%struct.mem_ctl_info* %94, %struct.err_info* %8, i32 %95)
  br label %97

97:                                               ; preds = %93, %20
  ret void
}

declare dso_local %struct.mem_ctl_info* @edac_mc_find(i32) #1

declare dso_local i32 @memset(%struct.err_info*, i32, i32) #1

declare dso_local i32 @find_umc_channel(%struct.mce*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @umc_normaddr_to_sysaddr(i32, i32, i32, i32*) #1

declare dso_local i32 @error_address_to_page_and_offset(i32, %struct.err_info*) #1

declare dso_local i32 @__log_ecc_error(%struct.mem_ctl_info*, %struct.err_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
