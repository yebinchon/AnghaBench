; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_claim_lch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_claim_lch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hsi_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hsi_controller = type { i32 }
%struct.omap_ssi_controller = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.hsi_msg* }

@SSI_MAX_GDD_LCH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_msg*)* @ssi_claim_lch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_claim_lch(%struct.hsi_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsi_msg*, align 8
  %4 = alloca %struct.hsi_port*, align 8
  %5 = alloca %struct.hsi_controller*, align 8
  %6 = alloca %struct.omap_ssi_controller*, align 8
  %7 = alloca i32, align 4
  store %struct.hsi_msg* %0, %struct.hsi_msg** %3, align 8
  %8 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %9 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hsi_port* @hsi_get_port(i32 %10)
  store %struct.hsi_port* %11, %struct.hsi_port** %4, align 8
  %12 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %13 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hsi_controller* @to_hsi_controller(i32 %15)
  store %struct.hsi_controller* %16, %struct.hsi_controller** %5, align 8
  %17 = load %struct.hsi_controller*, %struct.hsi_controller** %5, align 8
  %18 = call %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller* %17)
  store %struct.omap_ssi_controller* %18, %struct.omap_ssi_controller** %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %55, %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SSI_MAX_GDD_LCH, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %6, align 8
  %25 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.hsi_msg*, %struct.hsi_msg** %30, align 8
  %32 = icmp ne %struct.hsi_msg* %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %23
  %34 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %35 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %6, align 8
  %36 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store %struct.hsi_msg* %34, %struct.hsi_msg** %41, align 8
  %42 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %43 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %6, align 8
  %47 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 8
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %61

54:                                               ; preds = %23
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %19

58:                                               ; preds = %19
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %33
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.hsi_port* @hsi_get_port(i32) #1

declare dso_local %struct.hsi_controller* @to_hsi_controller(i32) #1

declare dso_local %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
