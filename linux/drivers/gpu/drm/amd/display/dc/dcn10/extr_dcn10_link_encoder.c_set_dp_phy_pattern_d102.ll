; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_set_dp_phy_pattern_d102.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_set_dp_phy_pattern_d102.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_link_encoder = type { i32 }

@__const.set_dp_phy_pattern_d102.pattern_symbols = private unnamed_addr constant [8 x i32] [i32 682, i32 682, i32 682, i32 682, i32 682, i32 682, i32 682, i32 682], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_link_encoder*)* @set_dp_phy_pattern_d102 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dp_phy_pattern_d102(%struct.dcn10_link_encoder* %0) #0 {
  %2 = alloca %struct.dcn10_link_encoder*, align 8
  %3 = alloca [8 x i32], align 16
  store %struct.dcn10_link_encoder* %0, %struct.dcn10_link_encoder** %2, align 8
  %4 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %2, align 8
  %5 = call i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder* %4, i32 0)
  %6 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %2, align 8
  %7 = call i32 @disable_prbs_symbols(%struct.dcn10_link_encoder* %6, i32 1)
  %8 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %2, align 8
  %9 = call i32 @disable_prbs_mode(%struct.dcn10_link_encoder* %8)
  %10 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([8 x i32]* @__const.set_dp_phy_pattern_d102.pattern_symbols to i8*), i64 32, i1 false)
  %11 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %2, align 8
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %13 = call i32 @program_pattern_symbols(%struct.dcn10_link_encoder* %11, i32* %12)
  %14 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %2, align 8
  %15 = call i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder* %14, i32 1)
  ret void
}

declare dso_local i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder*, i32) #1

declare dso_local i32 @disable_prbs_symbols(%struct.dcn10_link_encoder*, i32) #1

declare dso_local i32 @disable_prbs_mode(%struct.dcn10_link_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @program_pattern_symbols(%struct.dcn10_link_encoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
