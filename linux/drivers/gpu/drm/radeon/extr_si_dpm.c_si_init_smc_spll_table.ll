; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_init_smc_spll_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_init_smc_spll_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ni_power_info = type { i32 }
%struct.si_power_info = type { i64, i32 }
%struct.TYPE_6__ = type { i8**, i8** }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPLL_PDIV_A_MASK = common dso_local global i32 0, align 4
@SPLL_PDIV_A_SHIFT = common dso_local global i32 0, align 4
@SPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@SPLL_FB_DIV_SHIFT = common dso_local global i32 0, align 4
@CLK_S_MASK = common dso_local global i32 0, align 4
@CLK_S_SHIFT = common dso_local global i32 0, align 4
@CLK_V_MASK = common dso_local global i32 0, align 4
@CLK_V_SHIFT = common dso_local global i32 0, align 4
@SMC_SISLANDS_SPLL_DIV_TABLE_PDIV_MASK = common dso_local global i32 0, align 4
@SMC_SISLANDS_SPLL_DIV_TABLE_PDIV_SHIFT = common dso_local global i32 0, align 4
@SMC_SISLANDS_SPLL_DIV_TABLE_FBDIV_MASK = common dso_local global i32 0, align 4
@SMC_SISLANDS_SPLL_DIV_TABLE_FBDIV_SHIFT = common dso_local global i32 0, align 4
@SMC_SISLANDS_SPLL_DIV_TABLE_CLKS_MASK = common dso_local global i32 0, align 4
@SMC_SISLANDS_SPLL_DIV_TABLE_CLKS_SHIFT = common dso_local global i32 0, align 4
@SMC_SISLANDS_SPLL_DIV_TABLE_CLKV_MASK = common dso_local global i32 0, align 4
@SMC_SISLANDS_SPLL_DIV_TABLE_CLKV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_init_smc_spll_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_init_smc_spll_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ni_power_info*, align 8
  %5 = alloca %struct.si_power_info*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %16)
  store %struct.ni_power_info* %17, %struct.ni_power_info** %4, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %18)
  store %struct.si_power_info* %19, %struct.si_power_info** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %21 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %192

27:                                               ; preds = %1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.TYPE_6__* @kzalloc(i32 16, i32 %28)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %192

35:                                               ; preds = %27
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %165, %35
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 256
  br i1 %38, label %39, label %168

39:                                               ; preds = %36
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @si_calculate_sclk_params(%struct.radeon_device* %40, i32 %41, %struct.TYPE_7__* %7)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %168

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SPLL_PDIV_A_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @SPLL_PDIV_A_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SPLL_FB_DIV_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @SPLL_FB_DIV_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CLK_S_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @CLK_S_SHIFT, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %10, align 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CLK_V_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @CLK_V_SHIFT, align 4
  %70 = ashr i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, -8192
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %11, align 4
  %76 = ashr i32 %75, 6
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_PDIV_MASK, align 4
  %79 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_PDIV_SHIFT, align 4
  %80 = ashr i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %77, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %46
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %46
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_FBDIV_MASK, align 4
  %90 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_FBDIV_SHIFT, align 4
  %91 = ashr i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = and i32 %88, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %95, %87
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_CLKS_MASK, align 4
  %101 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_CLKS_SHIFT, align 4
  %102 = ashr i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = and i32 %99, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %106, %98
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_CLKV_MASK, align 4
  %112 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_CLKV_SHIFT, align 4
  %113 = ashr i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = and i32 %110, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %117, %109
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %168

124:                                              ; preds = %120
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_FBDIV_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_FBDIV_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_PDIV_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_PDIV_MASK, align 4
  %134 = and i32 %132, %133
  %135 = or i32 %129, %134
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i8* @cpu_to_be32(i32 %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i8**, i8*** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  store i8* %137, i8** %143, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_CLKV_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_CLKV_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_CLKS_SHIFT, align 4
  %151 = shl i32 %149, %150
  %152 = load i32, i32* @SMC_SISLANDS_SPLL_DIV_TABLE_CLKS_MASK, align 4
  %153 = and i32 %151, %152
  %154 = or i32 %148, %153
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i8* @cpu_to_be32(i32 %155)
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* %156, i8** %162, align 8
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 512
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %124
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %36

168:                                              ; preds = %123, %45, %36
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %182, label %171

171:                                              ; preds = %168
  %172 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %173 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %174 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %177 = bitcast %struct.TYPE_6__* %176 to i32*
  %178 = load %struct.si_power_info*, %struct.si_power_info** %5, align 8
  %179 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @si_copy_bytes_to_smc(%struct.radeon_device* %172, i64 %175, i32* %177, i32 16, i32 %180)
  store i32 %181, i32* %13, align 4
  br label %182

182:                                              ; preds = %171, %168
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %187 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %186, i32 0, i32 0
  store i32 0, i32* %187, align 4
  br label %188

188:                                              ; preds = %185, %182
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %190 = call i32 @kfree(%struct.TYPE_6__* %189)
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %188, %32, %24
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.TYPE_6__* @kzalloc(i32, i32) #1

declare dso_local i32 @si_calculate_sclk_params(%struct.radeon_device*, i32, %struct.TYPE_7__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @si_copy_bytes_to_smc(%struct.radeon_device*, i64, i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
