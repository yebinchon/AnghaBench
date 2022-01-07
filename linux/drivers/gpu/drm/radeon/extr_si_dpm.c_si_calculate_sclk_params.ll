; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_calculate_sclk_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_calculate_sclk_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rv7xx_power_info = type { i64 }
%struct.si_power_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.atom_clock_dividers = type { i32, i32 }
%struct.radeon_atom_ss = type { i32, i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@SPLL_PDIV_A_MASK = common dso_local global i32 0, align 4
@SPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@SCLK_MUX_SEL_MASK = common dso_local global i32 0, align 4
@SPLL_FB_DIV_MASK = common dso_local global i32 0, align 4
@SPLL_DITHEN = common dso_local global i32 0, align 4
@ASIC_INTERNAL_ENGINE_SS = common dso_local global i32 0, align 4
@CLK_S_MASK = common dso_local global i32 0, align 4
@SSEN = common dso_local global i32 0, align 4
@CLK_V_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, %struct.TYPE_9__*)* @si_calculate_sclk_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_calculate_sclk_params(%struct.radeon_device* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca %struct.si_power_info*, align 8
  %10 = alloca %struct.atom_clock_dividers, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.radeon_atom_ss, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %27 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %26)
  store %struct.rv7xx_power_info* %27, %struct.rv7xx_power_info** %8, align 8
  %28 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %29 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %28)
  store %struct.si_power_info* %29, %struct.si_power_info** %9, align 8
  %30 = load %struct.si_power_info*, %struct.si_power_info** %9, align 8
  %31 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.si_power_info*, %struct.si_power_info** %9, align 8
  %35 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.si_power_info*, %struct.si_power_info** %9, align 8
  %39 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.si_power_info*, %struct.si_power_info** %9, align 8
  %43 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load %struct.si_power_info*, %struct.si_power_info** %9, align 8
  %47 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  %50 = load %struct.si_power_info*, %struct.si_power_info** %9, align 8
  %51 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %16, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %18, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %60 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %59, i32 %60, i32 %61, i32 0, %struct.atom_clock_dividers* %10)
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %3
  %66 = load i32, i32* %21, align 4
  store i32 %66, i32* %4, align 4
  br label %188

67:                                               ; preds = %3
  %68 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 1, %69
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %19, align 4
  %73 = mul nsw i32 %71, %72
  %74 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %10, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %73, %75
  %77 = mul nsw i32 %76, 16384
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @do_div(i32 %78, i32 %79)
  %81 = load i32, i32* %17, align 4
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* @SPLL_PDIV_A_MASK, align 4
  %83 = load i32, i32* @SPLL_REF_DIV_MASK, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %10, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SPLL_REF_DIV(i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  %93 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SPLL_PDIV_A(i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* @SCLK_MUX_SEL_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = call i32 @SCLK_MUX_SEL(i32 2)
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* @SPLL_FB_DIV_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %13, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %20, align 4
  %110 = call i32 @SPLL_FB_DIV(i32 %109)
  %111 = load i32, i32* %13, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* @SPLL_DITHEN, align 4
  %114 = load i32, i32* %13, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %117 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %166

120:                                              ; preds = %67
  %121 = load i32, i32* %6, align 4
  %122 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %10, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %121, %123
  store i32 %124, i32* %23, align 4
  %125 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %126 = load i32, i32* @ASIC_INTERNAL_ENGINE_SS, align 4
  %127 = load i32, i32* %23, align 4
  %128 = call i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device* %125, %struct.radeon_atom_ss* %22, i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %165

130:                                              ; preds = %120
  %131 = load i32, i32* %18, align 4
  %132 = mul nsw i32 %131, 5
  %133 = load i32, i32* %19, align 4
  %134 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %22, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %133, %135
  %137 = sdiv i32 %132, %136
  store i32 %137, i32* %24, align 4
  %138 = getelementptr inbounds %struct.radeon_atom_ss, %struct.radeon_atom_ss* %22, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 4, %139
  %141 = load i32, i32* %20, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %24, align 4
  %144 = mul nsw i32 %143, 10000
  %145 = sdiv i32 %142, %144
  store i32 %145, i32* %25, align 4
  %146 = load i32, i32* @CLK_S_MASK, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %15, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %24, align 4
  %151 = call i32 @CLK_S(i32 %150)
  %152 = load i32, i32* %15, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* @SSEN, align 4
  %155 = load i32, i32* %15, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* @CLK_V_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %16, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %25, align 4
  %162 = call i32 @CLK_V(i32 %161)
  %163 = load i32, i32* %16, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %16, align 4
  br label %165

165:                                              ; preds = %130, %120
  br label %166

166:                                              ; preds = %165, %67
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 4
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %166, %65
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @SPLL_REF_DIV(i32) #1

declare dso_local i32 @SPLL_PDIV_A(i32) #1

declare dso_local i32 @SCLK_MUX_SEL(i32) #1

declare dso_local i32 @SPLL_FB_DIV(i32) #1

declare dso_local i64 @radeon_atombios_get_asic_ss_info(%struct.radeon_device*, %struct.radeon_atom_ss*, i32, i32) #1

declare dso_local i32 @CLK_S(i32) #1

declare dso_local i32 @CLK_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
