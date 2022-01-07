; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_dcn_bw_update_from_pplib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_dcn_bw_update_from_pplib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_3__*, %struct.dc_context* }
%struct.TYPE_3__ = type { i32, double, double, double, double, double, double, double, double }
%struct.dc_context = type { i32 }
%struct.dm_pp_clock_levels_with_voltage = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { double }

@DM_PP_CLOCK_TYPE_FCLK = common dso_local global i32 0, align 4
@ddr4_dram_factor_single_Channel = common dso_local global double 0.000000e+00, align 8
@DM_PP_CLOCK_TYPE_DCFCLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn_bw_update_from_pplib(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.dm_pp_clock_levels_with_voltage, align 8
  %5 = alloca %struct.dm_pp_clock_levels_with_voltage, align 8
  %6 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %2, align 8
  %7 = load %struct.dc*, %struct.dc** %2, align 8
  %8 = getelementptr inbounds %struct.dc, %struct.dc* %7, i32 0, i32 1
  %9 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  store %struct.dc_context* %9, %struct.dc_context** %3, align 8
  %10 = bitcast %struct.dm_pp_clock_levels_with_voltage* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = bitcast %struct.dm_pp_clock_levels_with_voltage* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %13 = load i32, i32* @DM_PP_CLOCK_TYPE_FCLK, align 4
  %14 = call i32 @dm_pp_get_clock_levels_by_type_with_voltage(%struct.dc_context* %12, i32 %13, %struct.dm_pp_clock_levels_with_voltage* %4)
  store i32 %14, i32* %6, align 4
  %15 = call i32 (...) @kernel_fpu_begin()
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @verify_clock_values(%struct.dm_pp_clock_levels_with_voltage* %4)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %116

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 3
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %4, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = fdiv double %33, 1.000000e+03
  %35 = fmul double 3.200000e+01, %34
  %36 = fdiv double %35, 1.000000e+03
  %37 = fptosi double %36 to i32
  %38 = load %struct.dc*, %struct.dc** %2, align 8
  %39 = getelementptr inbounds %struct.dc, %struct.dc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.dc*, %struct.dc** %2, align 8
  %43 = getelementptr inbounds %struct.dc, %struct.dc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %4, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 2
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 3, i32 2
  %56 = sub nsw i32 %50, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = fdiv double %60, 1.000000e+03
  %62 = fmul double %46, %61
  %63 = load double, double* @ddr4_dram_factor_single_Channel, align 8
  %64 = fmul double %62, %63
  %65 = fdiv double %64, 1.000000e+03
  %66 = load %struct.dc*, %struct.dc** %2, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store double %65, double* %69, align 8
  %70 = load %struct.dc*, %struct.dc** %2, align 8
  %71 = getelementptr inbounds %struct.dc, %struct.dc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load double, double* %73, align 8
  %75 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %4, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load double, double* %82, align 8
  %84 = fdiv double %83, 1.000000e+03
  %85 = fmul double %74, %84
  %86 = load double, double* @ddr4_dram_factor_single_Channel, align 8
  %87 = fmul double %85, %86
  %88 = fdiv double %87, 1.000000e+03
  %89 = load %struct.dc*, %struct.dc** %2, align 8
  %90 = getelementptr inbounds %struct.dc, %struct.dc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store double %88, double* %92, align 8
  %93 = load %struct.dc*, %struct.dc** %2, align 8
  %94 = getelementptr inbounds %struct.dc, %struct.dc* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load double, double* %96, align 8
  %98 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %4, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %4, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = fdiv double %106, 1.000000e+03
  %108 = fmul double %97, %107
  %109 = load double, double* @ddr4_dram_factor_single_Channel, align 8
  %110 = fmul double %108, %109
  %111 = fdiv double %110, 1.000000e+03
  %112 = load %struct.dc*, %struct.dc** %2, align 8
  %113 = getelementptr inbounds %struct.dc, %struct.dc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  store double %111, double* %115, align 8
  br label %118

116:                                              ; preds = %20
  %117 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %118

118:                                              ; preds = %116, %23
  %119 = call i32 (...) @kernel_fpu_end()
  %120 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %121 = load i32, i32* @DM_PP_CLOCK_TYPE_DCFCLK, align 4
  %122 = call i32 @dm_pp_get_clock_levels_by_type_with_voltage(%struct.dc_context* %120, i32 %121, %struct.dm_pp_clock_levels_with_voltage* %5)
  store i32 %122, i32* %6, align 4
  %123 = call i32 (...) @kernel_fpu_begin()
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = call i32 @verify_clock_values(%struct.dm_pp_clock_levels_with_voltage* %5)
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %118
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %188

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %5, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sge i32 %133, 3
  br i1 %134, label %135, label %188

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %5, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load double, double* %139, align 8
  %141 = fdiv double %140, 1.000000e+03
  %142 = load %struct.dc*, %struct.dc** %2, align 8
  %143 = getelementptr inbounds %struct.dc, %struct.dc* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 5
  store double %141, double* %145, align 8
  %146 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %5, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %5, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 3
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load double, double* %153, align 8
  %155 = fdiv double %154, 1.000000e+03
  %156 = load %struct.dc*, %struct.dc** %2, align 8
  %157 = getelementptr inbounds %struct.dc, %struct.dc* %156, i32 0, i32 0
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 6
  store double %155, double* %159, align 8
  %160 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %5, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %5, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load double, double* %167, align 8
  %169 = fdiv double %168, 1.000000e+03
  %170 = load %struct.dc*, %struct.dc** %2, align 8
  %171 = getelementptr inbounds %struct.dc, %struct.dc* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 7
  store double %169, double* %173, align 8
  %174 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %5, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.dm_pp_clock_levels_with_voltage, %struct.dm_pp_clock_levels_with_voltage* %5, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load double, double* %181, align 8
  %183 = fdiv double %182, 1.000000e+03
  %184 = load %struct.dc*, %struct.dc** %2, align 8
  %185 = getelementptr inbounds %struct.dc, %struct.dc* %184, i32 0, i32 0
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 8
  store double %183, double* %187, align 8
  br label %190

188:                                              ; preds = %131, %128
  %189 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %190

190:                                              ; preds = %188, %135
  %191 = call i32 (...) @kernel_fpu_end()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dm_pp_get_clock_levels_by_type_with_voltage(%struct.dc_context*, i32, %struct.dm_pp_clock_levels_with_voltage*) #2

declare dso_local i32 @kernel_fpu_begin(...) #2

declare dso_local i32 @verify_clock_values(%struct.dm_pp_clock_levels_with_voltage*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #2

declare dso_local i32 @kernel_fpu_end(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
