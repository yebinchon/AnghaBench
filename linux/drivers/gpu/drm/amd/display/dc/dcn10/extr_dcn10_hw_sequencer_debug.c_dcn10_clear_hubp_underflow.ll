; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer_debug.c_dcn10_clear_hubp_underflow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer_debug.c_dcn10_clear_hubp_underflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.resource_pool* }
%struct.resource_pool = type { i32, %struct.hubp** }
%struct.hubp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hubp*)*, i32 (%struct.hubp*)* }
%struct.dcn_hubp_state = type { i32 }
%struct.TYPE_4__ = type { %struct.dcn_hubp_state }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @dcn10_clear_hubp_underflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_clear_hubp_underflow(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca %struct.resource_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hubp*, align 8
  %6 = alloca %struct.dcn_hubp_state*, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %7 = load %struct.dc*, %struct.dc** %2, align 8
  %8 = getelementptr inbounds %struct.dc, %struct.dc* %7, i32 0, i32 0
  %9 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  store %struct.resource_pool* %9, %struct.resource_pool** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %47, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.resource_pool*, %struct.resource_pool** %3, align 8
  %13 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.resource_pool*, %struct.resource_pool** %3, align 8
  %18 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %17, i32 0, i32 1
  %19 = load %struct.hubp**, %struct.hubp*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hubp*, %struct.hubp** %19, i64 %21
  %23 = load %struct.hubp*, %struct.hubp** %22, align 8
  store %struct.hubp* %23, %struct.hubp** %5, align 8
  %24 = load %struct.hubp*, %struct.hubp** %5, align 8
  %25 = call %struct.TYPE_4__* @TO_DCN10_HUBP(%struct.hubp* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.dcn_hubp_state* %26, %struct.dcn_hubp_state** %6, align 8
  %27 = load %struct.hubp*, %struct.hubp** %5, align 8
  %28 = getelementptr inbounds %struct.hubp, %struct.hubp* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32 (%struct.hubp*)*, i32 (%struct.hubp*)** %30, align 8
  %32 = load %struct.hubp*, %struct.hubp** %5, align 8
  %33 = call i32 %31(%struct.hubp* %32)
  %34 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %6, align 8
  %35 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %16
  %39 = load %struct.hubp*, %struct.hubp** %5, align 8
  %40 = getelementptr inbounds %struct.hubp, %struct.hubp* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.hubp*)*, i32 (%struct.hubp*)** %42, align 8
  %44 = load %struct.hubp*, %struct.hubp** %5, align 8
  %45 = call i32 %43(%struct.hubp* %44)
  br label %46

46:                                               ; preds = %38, %16
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %10

50:                                               ; preds = %10
  ret void
}

declare dso_local %struct.TYPE_4__* @TO_DCN10_HUBP(%struct.hubp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
