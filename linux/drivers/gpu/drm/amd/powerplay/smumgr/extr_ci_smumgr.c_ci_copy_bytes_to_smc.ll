; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_copy_bytes_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_copy_bytes_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"smc_start_address invalid \0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmSMC_IND_DATA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32*, i32, i32)* @ci_copy_bytes_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_copy_bytes_to_smc(%struct.pp_hwmgr* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_hwmgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 3, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %11, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %5
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %139

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %15, align 4
  br label %32

32:                                               ; preds = %62, %30
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %33, 4
  br i1 %34, label %35, label %75

35:                                               ; preds = %32
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 16777216
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 65536
  %44 = add nsw i32 %39, %43
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 256
  %49 = add nsw i32 %44, %48
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @ci_set_smc_sram_address(%struct.pp_hwmgr* %54, i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 0, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %35
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %6, align 4
  br label %139

62:                                               ; preds = %35
  %63 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %64 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @cgs_write_register(i32 %65, i32 %66, i32 %67)
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32* %70, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 4
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 4
  store i32 %74, i32* %15, align 4
  br label %32

75:                                               ; preds = %32
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 0, %76
  br i1 %77, label %78, label %138

78:                                               ; preds = %75
  store i32 0, i32* %13, align 4
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @ci_set_smc_sram_address(%struct.pp_hwmgr* %79, i32 %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 0, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  br label %139

87:                                               ; preds = %78
  %88 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %89 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %92 = call i32 @cgs_read_register(i32 %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 4, %93
  %95 = mul nsw i32 8, %94
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %99, %87
  %97 = load i32, i32* %10, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = mul nsw i32 256, %100
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %9, align 8
  %104 = load i32, i32* %102, align 4
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %10, align 4
  br label %96

108:                                              ; preds = %96
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %13, align 4
  %111 = shl i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %16, align 4
  %115 = zext i32 %114 to i64
  %116 = shl i64 -1, %115
  %117 = xor i64 %116, -1
  %118 = and i64 %113, %117
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = or i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %13, align 4
  %123 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @ci_set_smc_sram_address(%struct.pp_hwmgr* %123, i32 %124, i32 %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 0, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %108
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %6, align 4
  br label %139

131:                                              ; preds = %108
  %132 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %133 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @cgs_write_register(i32 %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %131, %75
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %138, %129, %85, %60, %26
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ci_set_smc_sram_address(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

declare dso_local i32 @cgs_read_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
