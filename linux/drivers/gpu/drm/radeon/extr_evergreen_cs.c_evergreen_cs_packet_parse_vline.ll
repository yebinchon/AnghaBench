; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_cs_packet_parse_vline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_cs_packet_parse_vline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32 }

@evergreen_cs_packet_parse_vline.vline_start_end = internal constant [6 x i64] [i64 264, i64 263, i64 262, i64 261, i64 260, i64 259], align 16
@evergreen_cs_packet_parse_vline.vline_status = internal constant [6 x i64] [i64 263, i64 262, i64 261, i64 260, i64 259, i64 258], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*)* @evergreen_cs_packet_parse_vline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_cs_packet_parse_vline(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca %struct.radeon_cs_parser*, align 8
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %2, align 8
  %3 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %2, align 8
  %4 = call i32 @r600_cs_common_vline_parse(%struct.radeon_cs_parser* %3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @evergreen_cs_packet_parse_vline.vline_start_end, i64 0, i64 0), i64* getelementptr inbounds ([6 x i64], [6 x i64]* @evergreen_cs_packet_parse_vline.vline_status, i64 0, i64 0))
  ret i32 %4
}

declare dso_local i32 @r600_cs_common_vline_parse(%struct.radeon_cs_parser*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
