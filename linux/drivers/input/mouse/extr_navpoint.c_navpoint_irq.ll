; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_navpoint.c_navpoint_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_navpoint.c_navpoint_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.navpoint = type { i32*, i32, i32, %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SSSR = common dso_local global i32 0, align 4
@sssr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unexpected interrupt: status=0x%08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SSSR_RNE = common dso_local global i32 0, align 4
@SSDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @navpoint_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navpoint_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.navpoint*, align 8
  %6 = alloca %struct.ssp_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.navpoint*
  store %struct.navpoint* %11, %struct.navpoint** %5, align 8
  %12 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %13 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %12, i32 0, i32 3
  %14 = load %struct.ssp_device*, %struct.ssp_device** %13, align 8
  store %struct.ssp_device* %14, %struct.ssp_device** %6, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %17 = load i32, i32* @SSSR, align 4
  %18 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @sssr, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %25 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %30 = load i32, i32* @SSSR, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @sssr, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %29, i32 %30, i32 %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %23, %2
  br label %37

37:                                               ; preds = %86, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @SSSR_RNE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %91

42:                                               ; preds = %37
  %43 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %44 = load i32, i32* @SSDR, align 4
  %45 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 8
  %48 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %49 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %52 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 0
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  store i32 %47, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %59 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %62 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  store i32 %57, i32* %66, align 4
  %67 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %68 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %68, align 8
  %71 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %72 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @HEADER_LENGTH(i32 %75)
  %77 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %78 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %42
  %82 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %83 = call i32 @navpoint_packet(%struct.navpoint* %82)
  %84 = load %struct.navpoint*, %struct.navpoint** %5, align 8
  %85 = getelementptr inbounds %struct.navpoint, %struct.navpoint* %84, i32 0, i32 1
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %81, %42
  %87 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %88 = load i32, i32* @SSSR, align 4
  %89 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %90, i32* %7, align 4
  br label %37

91:                                               ; preds = %37
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @HEADER_LENGTH(i32) #1

declare dso_local i32 @navpoint_packet(%struct.navpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
