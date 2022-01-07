; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_parse_fpm_commit_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_parse_fpm_commit_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hmc_obj_info = type { i32, i32, i32 }

@I40IW_HMC_IW_QP = common dso_local global i64 0, align 8
@I40IW_HMC_IW_PBLE = common dso_local global i64 0, align 8
@I40IW_HMC_IW_SRQ = common dso_local global i64 0, align 8
@I40IW_HMC_IW_FSIMC = common dso_local global i64 0, align 8
@I40IW_HMC_IW_FSIAV = common dso_local global i64 0, align 8
@I40IW_HMC_IW_APBVT_ENTRY = common dso_local global i64 0, align 8
@I40IW_QUERY_FPM_MAX_QPS = common dso_local global i32 0, align 4
@I40IW_HMC_IW_CQ = common dso_local global i64 0, align 8
@I40IW_QUERY_FPM_MAX_CQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.i40iw_hmc_obj_info*, i64*)* @i40iw_sc_parse_fpm_commit_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_parse_fpm_commit_buf(i32* %0, %struct.i40iw_hmc_obj_info* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i40iw_hmc_obj_info*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.i40iw_hmc_obj_info* %1, %struct.i40iw_hmc_obj_info** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @I40IW_HMC_IW_QP, align 8
  store i64 %13, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %109, %3
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @I40IW_HMC_IW_PBLE, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %114

18:                                               ; preds = %14
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @I40IW_HMC_IW_SRQ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @I40IW_HMC_IW_FSIMC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @I40IW_HMC_IW_FSIAV, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26, %22, %18
  %31 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %31, i64 %32
  %34 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %35, i64 %36
  %38 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %109

39:                                               ; preds = %26
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @get_64bit_val(i32* %40, i64 %41, i32* %7)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @RS_64_1(i32 %43, i32 32)
  %45 = mul nsw i32 %44, 512
  %46 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %46, i64 %47
  %49 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %50, i64 %51
  %53 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %39
  %58 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %58, i64 %59
  %61 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %57, %39
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @I40IW_HMC_IW_APBVT_ENTRY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %69, i64 %70
  %72 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %109

73:                                               ; preds = %64
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @I40IW_HMC_IW_QP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @I40IW_QUERY_FPM_MAX_QPS, align 4
  %80 = call i64 @RS_64(i32 %78, i32 %79)
  %81 = trunc i64 %80 to i32
  %82 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %82, i64 %83
  %85 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  br label %108

86:                                               ; preds = %73
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @I40IW_HMC_IW_CQ, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @I40IW_QUERY_FPM_MAX_CQS, align 4
  %93 = call i64 @RS_64(i32 %91, i32 %92)
  %94 = trunc i64 %93 to i32
  %95 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %95, i64 %96
  %98 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  br label %107

99:                                               ; preds = %86
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = trunc i64 %101 to i32
  %103 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %103, i64 %104
  %106 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %105, i32 0, i32 1
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %99, %90
  br label %108

108:                                              ; preds = %107, %77
  br label %109

109:                                              ; preds = %108, %68, %30
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, 8
  store i64 %113, i64* %11, align 8
  br label %14

114:                                              ; preds = %14
  %115 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %115, i64 %116
  %118 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %120, i64 %121
  %123 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %119, %124
  %126 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %5, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %126, i64 %127
  %129 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %125, %130
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, 2097151
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %114
  %136 = load i32, i32* %8, align 4
  %137 = ashr i32 %136, 21
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = load i64*, i64** %6, align 8
  store i64 %139, i64* %140, align 8
  br label %146

141:                                              ; preds = %114
  %142 = load i32, i32* %8, align 4
  %143 = ashr i32 %142, 21
  %144 = sext i32 %143 to i64
  %145 = load i64*, i64** %6, align 8
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %141, %135
  ret i32 0
}

declare dso_local i32 @get_64bit_val(i32*, i64, i32*) #1

declare dso_local i32 @RS_64_1(i32, i32) #1

declare dso_local i64 @RS_64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
