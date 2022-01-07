; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_pbn_per_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_pbn_per_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fixed31_32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_stream_state*)* @get_pbn_per_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pbn_per_slot(%struct.dc_stream_state* %0) #0 {
  %2 = alloca %struct.fixed31_32, align 4
  %3 = alloca %struct.dc_stream_state*, align 8
  %4 = alloca %struct.fixed31_32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fixed31_32, align 4
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %3, align 8
  %7 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %8 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %3, align 8
  %11 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dc_link_bandwidth_kbps(%struct.TYPE_2__* %9, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %15, 8000
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dc_fixpt_from_int(i32 %17)
  %19 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.fixed31_32* %4 to i8*
  %21 = bitcast %struct.fixed31_32* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dc_fixpt_div_int(i32 %23, i32 54)
  %25 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

declare dso_local i32 @dc_link_bandwidth_kbps(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @dc_fixpt_from_int(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dc_fixpt_div_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
