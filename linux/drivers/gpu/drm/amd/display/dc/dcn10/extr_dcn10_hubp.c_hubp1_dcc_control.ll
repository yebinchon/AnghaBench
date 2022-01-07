; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_dcc_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_dcc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.dcn10_hubp = type { i32 }

@DCSURF_SURFACE_CONTROL = common dso_local global i32 0, align 4
@PRIMARY_SURFACE_DCC_EN = common dso_local global i32 0, align 4
@PRIMARY_SURFACE_DCC_IND_64B_BLK = common dso_local global i32 0, align 4
@SECONDARY_SURFACE_DCC_EN = common dso_local global i32 0, align 4
@SECONDARY_SURFACE_DCC_IND_64B_BLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_dcc_control(%struct.hubp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn10_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %8, align 4
  %18 = load %struct.hubp*, %struct.hubp** %4, align 8
  %19 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %18)
  store %struct.dcn10_hubp* %19, %struct.dcn10_hubp** %9, align 8
  %20 = load i32, i32* @DCSURF_SURFACE_CONTROL, align 4
  %21 = load i32, i32* @PRIMARY_SURFACE_DCC_EN, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PRIMARY_SURFACE_DCC_IND_64B_BLK, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SECONDARY_SURFACE_DCC_EN, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SECONDARY_SURFACE_DCC_IND_64B_BLK, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @REG_UPDATE_4(i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
