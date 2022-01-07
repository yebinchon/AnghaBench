; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_dmdata_status_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_dmdata_status_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.dcn20_hubp = type { i32 }

@DMDATA_STATUS = common dso_local global i32 0, align 4
@DMDATA_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hubp2_dmdata_status_done(%struct.hubp* %0) #0 {
  %2 = alloca %struct.hubp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dcn20_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %2, align 8
  %5 = load %struct.hubp*, %struct.hubp** %2, align 8
  %6 = call %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp* %5)
  store %struct.dcn20_hubp* %6, %struct.dcn20_hubp** %4, align 8
  %7 = load i32, i32* @DMDATA_STATUS, align 4
  %8 = load i32, i32* @DMDATA_DONE, align 4
  %9 = call i32 @REG_GET(i32 %7, i32 %8, i32* %3)
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  ret i32 %12
}

declare dso_local %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
