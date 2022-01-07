; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp2_enable_cm_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp2_enable_cm_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dcn20_dpp = type { i32 }

@CM_CONTROL = common dso_local global i32 0, align 4
@CM_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpp*)* @dpp2_enable_cm_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp2_enable_cm_block(%struct.dpp* %0) #0 {
  %2 = alloca %struct.dpp*, align 8
  %3 = alloca %struct.dcn20_dpp*, align 8
  %4 = alloca i32, align 4
  store %struct.dpp* %0, %struct.dpp** %2, align 8
  %5 = load %struct.dpp*, %struct.dpp** %2, align 8
  %6 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %5)
  store %struct.dcn20_dpp* %6, %struct.dcn20_dpp** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.dpp*, %struct.dpp** %2, align 8
  %8 = getelementptr inbounds %struct.dpp, %struct.dpp* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* @CM_CONTROL, align 4
  %19 = load i32, i32* @CM_BYPASS, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @REG_UPDATE(i32 %18, i32 %19, i32 %20)
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
