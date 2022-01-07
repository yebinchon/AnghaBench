; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_init_ppaace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_init_ppaace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paace = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PAACE_AF_PT = common dso_local global i32 0, align 4
@PAACE_PT_PRIMARY = common dso_local global i32 0, align 4
@PAACE_DA_HOST_CR = common dso_local global i32 0, align 4
@PAACE_M_COHERENCE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.paace*)* @pamu_init_ppaace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pamu_init_ppaace(%struct.paace* %0) #0 {
  %2 = alloca %struct.paace*, align 8
  store %struct.paace* %0, %struct.paace** %2, align 8
  %3 = load %struct.paace*, %struct.paace** %2, align 8
  %4 = getelementptr inbounds %struct.paace, %struct.paace* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PAACE_AF_PT, align 4
  %7 = load i32, i32* @PAACE_PT_PRIMARY, align 4
  %8 = call i32 @set_bf(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.paace*, %struct.paace** %2, align 8
  %10 = getelementptr inbounds %struct.paace, %struct.paace* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PAACE_DA_HOST_CR, align 4
  %15 = load i32, i32* @PAACE_M_COHERENCE_REQ, align 4
  %16 = call i32 @set_bf(i32 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @set_bf(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
