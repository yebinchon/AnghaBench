; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer_debug.c_dcn10_clear_otpc_underflow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer_debug.c_dcn10_clear_otpc_underflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.resource_pool* }
%struct.resource_pool = type { i32, %struct.timing_generator** }
%struct.timing_generator = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.timing_generator*)* }
%struct.dcn_otg_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @dcn10_clear_otpc_underflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_clear_otpc_underflow(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca %struct.resource_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timing_generator*, align 8
  %6 = alloca %struct.dcn_otg_state, align 4
  store %struct.dc* %0, %struct.dc** %2, align 8
  %7 = load %struct.dc*, %struct.dc** %2, align 8
  %8 = getelementptr inbounds %struct.dc, %struct.dc* %7, i32 0, i32 0
  %9 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  store %struct.resource_pool* %9, %struct.resource_pool** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %41, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.resource_pool*, %struct.resource_pool** %3, align 8
  %13 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load %struct.resource_pool*, %struct.resource_pool** %3, align 8
  %18 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %17, i32 0, i32 1
  %19 = load %struct.timing_generator**, %struct.timing_generator*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %19, i64 %21
  %23 = load %struct.timing_generator*, %struct.timing_generator** %22, align 8
  store %struct.timing_generator* %23, %struct.timing_generator** %5, align 8
  %24 = bitcast %struct.dcn_otg_state* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  %25 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %26 = call i32 @DCN10TG_FROM_TG(%struct.timing_generator* %25)
  %27 = call i32 @optc1_read_otg_state(i32 %26, %struct.dcn_otg_state* %6)
  %28 = getelementptr inbounds %struct.dcn_otg_state, %struct.dcn_otg_state* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %16
  %33 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %34 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %36, align 8
  %38 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %39 = call i32 %37(%struct.timing_generator* %38)
  br label %40

40:                                               ; preds = %32, %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %10

44:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @optc1_read_otg_state(i32, %struct.dcn_otg_state*) #2

declare dso_local i32 @DCN10TG_FROM_TG(%struct.timing_generator*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
