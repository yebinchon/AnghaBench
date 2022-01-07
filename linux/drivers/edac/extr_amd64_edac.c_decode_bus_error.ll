; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_decode_bus_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_decode_bus_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32 }
%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mem_ctl_info*, i32, %struct.err_info*)* }
%struct.err_info = type { i32 }

@NBSL_PP_OBS = common dso_local global i64 0, align 8
@F10_NBSL_EXT_ERR_ECC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mce*)* @decode_bus_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_bus_error(i32 %0, %struct.mce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mce*, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.err_info, align 4
  store i32 %0, i32* %3, align 4
  store %struct.mce* %1, %struct.mce** %4, align 8
  %12 = load %struct.mce*, %struct.mce** %4, align 8
  %13 = getelementptr inbounds %struct.mce, %struct.mce* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 45
  %16 = and i32 %15, 3
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load %struct.mce*, %struct.mce** %4, align 8
  %19 = getelementptr inbounds %struct.mce, %struct.mce* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @XEC(i32 %20, i32 31)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.mce*, %struct.mce** %4, align 8
  %23 = getelementptr inbounds %struct.mce, %struct.mce* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @EC(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.mem_ctl_info* @edac_mc_find(i32 %26)
  store %struct.mem_ctl_info* %27, %struct.mem_ctl_info** %5, align 8
  %28 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %29 = icmp ne %struct.mem_ctl_info* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %73

31:                                               ; preds = %2
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %33 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %32, i32 0, i32 0
  %34 = load %struct.amd64_pvt*, %struct.amd64_pvt** %33, align 8
  store %struct.amd64_pvt* %34, %struct.amd64_pvt** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @PP(i32 %35)
  %37 = load i64, i64* @NBSL_PP_OBS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %73

40:                                               ; preds = %31
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @F10_NBSL_EXT_ERR_ECC, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %73

48:                                               ; preds = %43, %40
  %49 = call i32 @memset(%struct.err_info* %11, i32 0, i32 4)
  %50 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %51 = load %struct.mce*, %struct.mce** %4, align 8
  %52 = call i32 @get_error_address(%struct.amd64_pvt* %50, %struct.mce* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %53, 2
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.mce*, %struct.mce** %4, align 8
  %57 = getelementptr inbounds %struct.mce, %struct.mce* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @extract_syndrome(i32 %58)
  %60 = getelementptr inbounds %struct.err_info, %struct.err_info* %11, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %63 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.mem_ctl_info*, i32, %struct.err_info*)*, i32 (%struct.mem_ctl_info*, i32, %struct.err_info*)** %65, align 8
  %67 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 %66(%struct.mem_ctl_info* %67, i32 %68, %struct.err_info* %11)
  %70 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @__log_ecc_error(%struct.mem_ctl_info* %70, %struct.err_info* %11, i64 %71)
  br label %73

73:                                               ; preds = %61, %47, %39, %30
  ret void
}

declare dso_local i64 @XEC(i32, i32) #1

declare dso_local i32 @EC(i32) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_find(i32) #1

declare dso_local i64 @PP(i32) #1

declare dso_local i32 @memset(%struct.err_info*, i32, i32) #1

declare dso_local i32 @get_error_address(%struct.amd64_pvt*, %struct.mce*) #1

declare dso_local i32 @extract_syndrome(i32) #1

declare dso_local i32 @__log_ecc_error(%struct.mem_ctl_info*, %struct.err_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
