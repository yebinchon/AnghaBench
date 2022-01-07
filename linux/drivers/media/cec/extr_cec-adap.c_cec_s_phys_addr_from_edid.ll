; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_s_phys_addr_from_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_s_phys_addr_from_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.edid = type { i32 }

@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cec_s_phys_addr_from_edid(%struct.cec_adapter* %0, %struct.edid* %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store %struct.edid* %1, %struct.edid** %4, align 8
  %6 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.edid*, %struct.edid** %4, align 8
  %8 = icmp ne %struct.edid* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.edid*, %struct.edid** %4, align 8
  %11 = getelementptr inbounds %struct.edid, %struct.edid* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.edid*, %struct.edid** %4, align 8
  %16 = bitcast %struct.edid* %15 to i32*
  %17 = load i32, i32* @EDID_LENGTH, align 4
  %18 = load %struct.edid*, %struct.edid** %4, align 8
  %19 = getelementptr inbounds %struct.edid, %struct.edid* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 %17, %21
  %23 = call i32 @cec_get_edid_phys_addr(i32* %16, i32 %22, i32* null)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %14, %9, %2
  %25 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @cec_s_phys_addr(%struct.cec_adapter* %25, i32 %26, i32 0)
  ret void
}

declare dso_local i32 @cec_get_edid_phys_addr(i32*, i32, i32*) #1

declare dso_local i32 @cec_s_phys_addr(%struct.cec_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
